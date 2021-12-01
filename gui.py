import cx_Oracle
import sqlConnection
from tkinter import *

#connection = cx_Oracle.connect('oe', 'oracle', 'myservice')

connection = sqlConnection.connect()


def insertion():
    selectedOptionText['text'] ='Inserindo'
    #print('Inserindo')

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
