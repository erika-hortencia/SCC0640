from tkinter import *
import sqlConnection
import gui

def insertion():

    def getData():
        estoque = entryField_Estoque.get()
        nomeDoProduto = entryField_NomedoProduto.get()
        nomeDoFabricante = entryField_NomedoFabricante.get()
        volume = entryField_Volume.get()
        validade = entryField_Validade.get()

        sql_insert_command = '"""'+'INSERT INTO PRODUTO VALUES(' + str(101)+ estoque+',' + "'"+ nomeDoProduto + "'" \
                      + ', ' + "'" + nomeDoFabricante + "'" + ','+ str(volume) + ', ' +  'TO_DATE(' + "'" + str(validade) \
                          + "'," + "'" + 'dd/mm/yyy));' + '"""'
        print('Estoque => ' + estoque)
        print('Nome do produto => ' + nomeDoProduto)
        print('Fabricante => ' + nomeDoFabricante)
        print('Volume => ' + volume)
        print('Validade => ' + validade)

        return sql_insert_command

    """
    Criando a janela de inserção
    """
    insertWindow = Tk()
    insertWindow.title('Cadastro de Produto')
    insertWindow.geometry('650x500')
    insertion_text = Label(insertWindow, text='Informe os dados', font=('Helvetica', 14))
    insertion_text.place(relx=0.5, rely=0.1, anchor=CENTER)

    """
    Campos para inserção dos dados
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
    
    okButton = Button(insertWindow, text='Inserir', command=getData)
    okButton.place(relx=0.5, rely=1.0-0.1, anchor=CENTER)

    sql_insert = getData()
    print(sql_insert)

    """
    TESTE DE INSERÇÃO
    try:
        # Criando o cursor
        cur = connection.cursor()
        sql_insert = INSERT INTO TMORADORDERUA VALUES(912299391,'HARRY STYLES',TO_DATE('28/04/2003','dd/mm/yyyy'),TO_DATE('30/11/2015','dd/mm/yyyy'),'M', 'MEDIO')
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
        """

    return

