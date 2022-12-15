import pymongo, os
from pymongo.server_api import ServerApi
class Database(object):
    url = "mongodb+srv://user:pass@distributedmessages.38lzbsb.mongodb.net/?retryWrites=true&w=majority"
    database = None
    
    @staticmethod
    def initialize():
        client = pymongo.MongoClient(Database.url, server_api=ServerApi('1'))
        Database.database = client.DMessages
    
    @staticmethod
    def insert_one(collection, data):
        return Database.database[collection].insert_one(data)
        
    @staticmethod
    def find(collection, query):
        return Database.database[collection].find(query)
        
    @staticmethod
    def find_one(collection, query):
        return Database.database[collection].find_one(query)

    @staticmethod
    def update_one(collection, query, new_values):
        Database.database[collection].update_one(query, new_values)
