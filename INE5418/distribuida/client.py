#
#  Synchronized subscriber
#
import time
import zmq
import zmq.asyncio
import json
from threading import Thread
import asyncio

class ChatUser(object):

    def __init__(self, username, chat_ip, chat_port):
        self.username = username,
        self.chat_ip = chat_ip,
        self.chat_port = chat_port,
        self.chat_socket = None,

        self.message_port = str(int(chat_port)+1)
        self.message_socket = None

        self.context = zmq.asyncio.Context()
        self.poller = zmq.Poller()

    def connect(self):
        self.chat_socket = self.context.socket(zmq.REQ)
        chat_address = f"tcp://{self.chat_ip[0]}:{self.chat_port[0]}"
        self.chat_socket.connect(chat_address)

        self.message_socket = self.context.socket(zmq.SUB)
        message_address = f"tcp://{self.chat_ip[0]}:{self.message_port}"
        self.message_socket.connect(message_address)
        self.message_socket.setsockopt_string(zmq.SUBSCRIBE, '')

        self.register_poller()

    def reconnect(self):
        # self.poller.unregister(self.chat_socket)
        # self.chat_socket.setsockopt(zmq.LINGER, 0)
        # self.chat_socket.close()

        self.poller.unregister(self.message_socket)
        self.message_socket.setsockopt(zmq.LINGER, 0)
        self.message_socket.close()

        self.connect()
        self.register_poller()

    def register_poller(self):
        # self.poller.register(self.chat_socket, zmq.POLLIN)
        self.poller.register(self.message_socket, zmq.POLLIN)

    def has_message(self):
        socks = dict(self.poller.poll(5000))
        return (self.message_socket in socks) and (socks[self.message_socket] == zmq.POLLIN)
    
    async def _receive(self):
        while True:
            if self.has_message():
                _ = self.chat_socket.recv()
                received = await self.message_socket.recv()
                received = json.loads(received)
                if received['author'] == self.username[0]:
                    continue
                output = f"{received['author']}: {received['message']}"
                print(output)
            else:
                pass
                # self.reconnect()


    async def _send(self):
        while True:
            try:
                message = input()
                data = {
                    "timestamp": time.time(),
                    "author": self.username[0],
                    "message": message
                }
                await self.chat_socket.send_string(json.dumps(data))    
            
            except KeyboardInterrupt:
                self.chat_socket.disconnect()
                self.message_socket.disconnect()
                
            


    
    def start_user(self):
        self.connect()

        send_thread = Thread(target=lambda: asyncio.run(self._send()))
        send_thread.start()
        receive_thread = Thread(target=lambda: asyncio.run(self._receive()))
        receive_thread.start()


def main():
    server_ip = "localhost"
    port = "5561"
    username = input("What's your username? ")

    client = ChatUser(username, str(server_ip), str(port))
    client.start_user()


if __name__ == "__main__":
    main()
