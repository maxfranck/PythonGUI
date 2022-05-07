from Banco import Banco

class Usuarios(object):
    def __init__(self, nome = "", email = "", telefone = ""):
        self.info = {}
        self.nome = nome
        self.email = email
        self.telefone = telefone

    def insertUser(self):
        banco = Banco()
        try:
            c = banco.conexao.cursor()

            c.execute(f"insert into usuarios (nome, email, telefone) values ('{self.nome}', '{self.email}', '{self.telefone}' )")

            banco.conexao.commit()
            c.close()

            return "Usuário cadastrado com sucesso!"
        except:
            return "Ocorreu um erro na inserção do usuário"
