import cx_Oracle
import sqlConnection
import appInsertion
from tkinter import *

connection = sqlConnection.connect()


def insertion():
    """
    Criando a janela de inserção
    """
    insertWindow = Tk()
    insertWindow.title('Inserção de Dados')
    insertion_text = Label(insertWindow, text='Clique em Ok  para prosseguir')
    insertion_text.grid(column=0, row=0, padx= 20, pady= 15)

    okButton = Button(insertWindow, text='Ok')
    okButton.grid(column=0, row=1, padx= 60, pady= 45)

    selectedOptionText['text'] ='Inserindo'
    #print('Inserindo')
    """
    TESTE DE INSERÇÃO
    """
    try:
        # Criando o cursor
        cur = connection.cursor()
        sql_insert = """INSERT INTO TMORADORDERUA VALUES(912341391,'JOHN STAMOS',TO_DATE('28/04/2003','dd/mm/yyyy'),TO_DATE('30/11/2015','dd/mm/yyyy'),'M', 'MEDIO')"""
        cur.execute(sql_insert)
        connection.commit()
    except Exception as err:
        print('Erro ao inserir os dados')
    else:
        cur.execute('select * from tMoradorDeRua')
        for line in cur:
            print(line)
    finally:
        cur.close()
        connection.close()
    

def search():
    #print('Searching')
    selectedOptionText['text'] ='Searching'

def deletion():
    #print('Deleting')
    selectedOptionText['text'] ='Deleting'


homeWindow = Tk()
homeWindow.title('Monitoramento Moradores de Rua')
homeWindow.geometry('250x470')

options_text = Label(homeWindow, text='Clique na operação que deseja realizar')
options_text.grid(column=0, row=0, padx= 20, pady= 15)

insertButton = Button(homeWindow, text='Inserir', command=insertion)
insertButton.grid(column=0, row=1, padx= 60, pady= 45)
searchButton = Button(homeWindow, text='Pesquisar', command=search)
searchButton.grid(column=0, row=2, padx= 60, pady= 45)
deleteButton = Button(homeWindow, text='Deletar', command=deletion)
deleteButton.grid(column=0, row=3, padx= 60, pady= 45)

selectedOptionText = Label(homeWindow, text=" ")
selectedOptionText.grid(column=0, row=4, padx= 60, pady= 45)

homeWindow.mainloop()

# Encerra a conexão
#connection.close()