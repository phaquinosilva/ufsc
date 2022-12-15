from database import Database

Database.initialize()

Database.database["messages"].delete_many({})