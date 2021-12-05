import cx_Oracle
import sqlConnection
from tkinter import *
import pandas as pd
from tkinter import ttk

connection = sqlConnection.connect()

def insertion():

    def sendToSQL():

        getData()

    def getData():
        #Recebe dos campos de entraga os atributos a serem inseridos
        estoque = entryField_Estoque.get()
        nomeDoProduto = entryField_NomedoProduto.get()
        nomeDoFabricante = entryField_NomedoFabricante.get()
        volume = entryField_Volume.get()
        validade = entryField_Validade.get()

        """
        Calculando em aplicação o ID do produto
            Encontra qual o maior id no banco e cria o novo id como new_id = MAX(id)+1
        """
        auxmax_id = """ SELECT MAX(id) FROM Produto """
        df = pd.read_sql(auxmax_id, connection)
        max_id = df.iat[0,0]
        max_id = max_id + 1

        
        """
        Inserindo o produto no banco
        """
        sql_insert_command = f""" INSERT INTO Produto(id, Estoque, NomedoProduto, NomedoFabricante, Volume, Validade) VALUES ({max_id},{estoque},'{nomeDoProduto}','{nomeDoFabricante}',{volume}, TO_DATE('{validade}','dd/mm/yyyy')) """
        try:
            #Criando o cursor
            cur = connection.cursor()
            cur.execute(sql_insert_command)
            connection.commit()
        except Exception as errormessage:
            #Exibição da mensagem de erro
            result_text['text'] = 'Erro ao inserir os dados ' , errormessage
        else:
            #Exibição da mensagem de sucesso
            result_text['text'] = 'Dados inseridos com sucesso!'

        return sql_insert_command
    
    selectedOptionText['text'] ='Inserindo'

    """
    Criando a janela de inserção
    """
    insertWindow = Tk()
    insertWindow.title('Cadastro de Produto')
    insertWindow.geometry('650x500')
    insertion_text = Label(insertWindow, text='Informe os dados', font=('Helvetica', 14))
    insertion_text.place(relx=0.5, rely=0.1, anchor=CENTER)

    result_text = Label(insertWindow, text=" ", font=('Helvetica', 10))
    result_text.place(relx=0.5, rely=1.0-0.15, anchor=CENTER)

    """
    Campos para inserção dos dados (INSERT)
    """
    #CPF do ponto de coleta onde o produto está localizado
    estoqueLabel = Label(insertWindow, text='Estoque (CPF)')
    entryField_Estoque = Entry(insertWindow, bg='yellow', borderwidth=5, textvariable='Estoque')
    estoqueLabel.place(relx=0.55, rely=0.2, anchor=CENTER)
    entryField_Estoque.place(relx=0.85, rely=0.2, anchor=CENTER)

    #Nome o produto a ser cadastrado
    nomeLabel = Label(insertWindow, text='Nome do produto')
    entryField_NomedoProduto = Entry(insertWindow, bg='yellow', borderwidth=5)
    nomeLabel.place(relx=0.15, rely=0.4, anchor=CENTER)
    entryField_NomedoProduto.place(relx=0.35, rely=0.4, anchor=CENTER)

    #Nome do fabricante do produto
    fabricanteLabel = Label(insertWindow, text='Nome do fabricante')
    entryField_NomedoFabricante = Entry(insertWindow, bg='yellow', borderwidth=5)
    fabricanteLabel.place(relx=0.55, rely=0.4, anchor=CENTER)
    entryField_NomedoFabricante.place(relx=0.85, rely=0.4, anchor=CENTER)

    #Volume do produto
    volumeLabel = Label(insertWindow, text='Volume')
    entryField_Volume = Entry(insertWindow, bg='yellow', borderwidth=5)
    volumeLabel.place(relx=0.15, rely=0.6, anchor=CENTER)
    entryField_Volume.place(relx=0.35, rely=0.6, anchor=CENTER)

    #Validade do produto
    validadeLabel = Label(insertWindow, text='Validade')
    entryField_Validade = Entry(insertWindow, bg='yellow', borderwidth=5)
    validadeLabel.place(relx=0.55, rely=0.6, anchor=CENTER)
    entryField_Validade.place(relx=0.85, rely=0.6, anchor=CENTER)
    
    okButton = Button(insertWindow, text='Inserir', command=sendToSQL)
    okButton.place(relx=0.5, rely=1.0-0.1, anchor=CENTER)

    return

def query():

    def getFromSQL():

        """
        Criando a janela de resultados
        """
        resultWindow = Tk()
        resultWindow.title('Estoque disponível em')
        resultWindow.geometry('1550x300')

        #Preparando a visualização dos dados
        productFrame = Frame(resultWindow)
        productFrame.pack(pady=20)

        #Criando a visualização dos dados no app
        productTree = ttk.Treeview(productFrame)

        df = getProduct()

        productTree["column"] = list(df.columns)
        productTree["show"] = "headings"
        for column in productTree["column"]:
            productTree.heading(column, text=column)
        data_rows = df.to_numpy().tolist()
        for row in data_rows:
            productTree.insert("","end", values=row)
        productTree.pack()
        
    def getProduct():
            #Recebe o nome do produto a ser pesquisado inserido no campo de entrada
            produto = query_Produto.get()

            #Comando de busca
            sql_query_command = f""" SELECT I.CNPJ, I.Nome, P.id AS ID, 
             P.NomedoProduto, P.Validade, I.Rua || ', ' || I.Numero || '. ' || I.Cidade || ', ' ||
              I.UF AS Endereco FROM Estoque E JOIN Instituicao I ON E.PontoDeColeta = I.CNPJ 
              JOIN Produto P ON P.Estoque = I.CNPJ WHERE P.NomedoProduto LIKE '%{produto}%' ORDER BY P.Validade"""

            try:
                #Criando o cursor
                cur = connection.cursor()
                productQuery = pd.read_sql(sql_query_command, connection)
                cur.execute(sql_query_command)
                connection.commit()
            except Exception as err:
                #Exibição da mensagem de erro
                result_text['text'] = 'Erro ao buscar produto ', err
            else:
                #Exibição da mensagem de sucesso
                result_text['text'] = 'Consulta realiza com sucesso, confira os resultados!'
            
            return productQuery

    selectedOptionText['text'] ='Pesquisando'

    """
    Criando a janela de consulta
    """
    queryWindow = Tk()
    queryWindow.title('Consulta de Produto')
    queryWindow.geometry('400x200')
    query_text = Label(queryWindow, text='Informe o produto a pesquisar', font=('Helvetica', 14))
    query_text.place(relx=0.5, rely=0.1, anchor=CENTER)

    result_text = Label(queryWindow, text=" ", font=('Helvetica', 10))
    result_text.place(relx=0.5, rely=1-0.3, anchor=CENTER)


    """
    Campo para inserção dos dados (CONSULTA)
    """
    #CPF do ponto de coleta onde o produto está localizado
    queryLabel = Label(queryWindow, text='Produto')
    query_Produto = Entry(queryWindow, bg='yellow', borderwidth=5)
    queryLabel.place(relx=0.1, rely=1-0.6, anchor=CENTER)
    query_Produto.place(relx=0.40, rely=1-0.6, anchor=CENTER)

    queryButton = Button(queryWindow, text='Buscar', command=getFromSQL)
    queryButton.place(relx=0.5, rely=1.0-0.1, anchor=CENTER)

"""
Criando a janela inicial da aplicação
"""
homeWindow = Tk()
homeWindow.title('Monitoramento Moradores de Rua')
homeWindow.geometry('250x350')

options_text = Label(homeWindow, text='Clique na operação que deseja realizar')
options_text.grid(column=0, row=0, padx= 20, pady= 15)

insertButton = Button(homeWindow, text='Inserir Produto', command=insertion)
insertButton.grid(column=0, row=1, padx= 60, pady= 45)
searchButton = Button(homeWindow, text='Pesquisar Produto', command=query)
searchButton.grid(column=0, row=2, padx= 60, pady= 45)

selectedOptionText = Label(homeWindow, text=" ")
selectedOptionText.grid(column=0, row=3, padx= 60, pady= 45)

homeWindow.mainloop()

# Encerra a conexão
connection.close()