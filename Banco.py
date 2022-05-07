import mysql.connector

class Banco:  

    def __init__(self):  
        self.conexao = mysql.connector.connect(
            host='localhost',
            database='aprender_python',
            user='root',
            password=''
        )
    