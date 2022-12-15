#
#  Synchronized publisher
#
from pprint import pprint
import zmq
import time
from database import Database
import json

class Controller():
    def __init__(self, collection, chat_port, broadcast_port, index):
        self.index = index
        self.collection = collection

        self.port = chat_port
        self.broadcast_port = broadcast_port

        self.context = zmq.Context()
        self.chat_socket = None
        self.broadcast_socket = None
    
    def bind_sockets(self):
        self.chat_socket = self.context.socket(zmq.REP)
        chat_addr = f"tcp://*:{self.port}"
        self.chat_socket.bind(chat_addr)

        self.broadcast_socket = self.context.socket(zmq.PUB)
        broadcast_addr = f"tcp://*:{self.broadcast_port}"
        self.broadcast_socket.bind(broadcast_addr)

    def broadcast(self, message):
        self.index += 1
        message["index"] = self.index
        pprint(message)
        self.chat_socket.send(b'\x00')
        data = json.dumps(message)
        self.broadcast_socket.send_string(json.dumps(message))
        Database.insert_one(self.collection, message)

    def start_server(self):
        self.bind_sockets()
        while True:
            incoming_message = json.loads(self.chat_socket.recv())
            #pprint(incoming_message)
            self.broadcast(incoming_message)


def main():
    Database.initialize()
    
    item = Database.database.messages.find_one(sort=[("index", -1)])
    print("Found data to restore!" if item else "No backup found.")
    db_index = item["index"] if item else 0

        
    control = Controller("messages", "5561", "5562", db_index)
    control.start_server()


if __name__ == "__main__":
    main()