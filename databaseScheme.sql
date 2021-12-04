CREATE TABLE TipoPessoa(
    CPF NUMBER NOT NULL,
    Nome VARCHAR(30) NOT NULL,
    Tipo VARCHAR(20) NOT NULL,
    CONSTRAINT PK_TipoPessoa PRIMARY KEY (CPF)
);

CREATE TABLE MoradorDeRua(
    CPF NUMBER NOT NULL,
    Nome VARCHAR(30) NOT NULL,
    DataNascimento DATE,
    DataCadastro DATE,
    Genero CHAR(1),
    Escoladriade VARCHAR(25),
    CONSTRAINT PK_MoradorDeRua PRIMARY KEY (CPF),
    CONSTRAINT FK_MoradorDeRua_1 FOREIGN KEY (CPF) REFERENCES TipoPessoa(CPF) ON DELETE SET NULL
);

CREATE TABLE Alergias(
    MoradorDeRua NUMBER NOT NULL,
    Alergia VARCHAR(100),
    CONSTRAINT PK_Alergias PRIMARY KEY (MoradorDeRua, Alergia),
    CONSTRAINT FK_Alergias FOREIGN KEY (MoradorDeRua) REFERENCES MoradorDeRua(CPF) ON DELETE SET NULL
);

CREATE TABLE Habilidades(
    MoradorDeRua NUMBER NOT NULL,
    Habilidades NUMBER, /*conferir na parte 1*/
    CONSTRAINT PK_Habilidades PRIMARY KEY (MoradorDeRua, Habilidades),
    CONSTRAINT FK_Habilidades FOREIGN KEY (MoradorDeRua) REFERENCES MoradorDeRua(CPF) ON DELETE SET NULL
);

CREATE TABLE Instituicao(
    CNPJ NUMBER NOT NULL,
    Nome VARCHAR(40),
    CEP NUMBER,
    UF CHAR(2),
    Cidade VARCHAR(28),
    Rua VARCHAR(40),
    Numero NUMBER,
    CONSTRAINT PK_Instituicao PRIMARY KEY (CNPJ)
);

CREATE TABLE TipoInstituicao(
    CNPJ NUMBER NOT NULL,
    Tipo VARCHAR(15) NOT NULL,
    CONSTRAINT PK_TipoInstituicao PRIMARY KEY (CNPJ, Tipo),
    CONSTRAINT FK_TipoInstituicao FOREIGN KEY (CNPJ) REFERENCES Instituicao(CNPJ) ON DELETE SET NULL
);

CREATE TABLE TipoEmpresa(
    CNPJ NUMBER NOT NULL,
    Categoria VARCHAR(10) NOT NULL,
    CONSTRAINT PK_TipoEmpresa PRIMARY KEY (CNPJ),
    CONSTRAINT FK_TipoEmpresa FOREIGN KEY (CNPJ) REFERENCES Instituicao(CNPJ) ON DELETE SET NULL
);

CREATE TABLE Assessoria(
    TipoEmpresa NUMBER NOT NULL,
    Categoria VARCHAR(30),
    CONSTRAINT PK_Assessoria PRIMARY KEY (TipoEmpresa),
    CONSTRAINT SK_Asseroria UNIQUE (Categoria),
    CONSTRAINT FK_Assessoria FOREIGN KEY (TipoEmpresa) REFERENCES TipoEmpresa(CNPJ) ON DELETE SET NULL
);

CREATE TABLE Privada(
    TipoEmpresa NUMBER NOT NULL,
    Categoria VARCHAR(40) NOT NULL,
    CONSTRAINT PK_Privada PRIMARY KEY (TipoEmpresa,Categoria),
    CONSTRAINT FK_Privada1 FOREIGN KEY (TipoEmpresa) REFERENCES TipoEmpresa(CNPJ) ON DELETE SET NULL
);


CREATE TABLE Atendimento(
    id NUMBER NOT NULL,
    Privada NUMBER NOT NULL,
    MoradorDeRua NUMBER NOT NULL,
    DataAtendimento DATE NOT NULL,
    NomeAtendimento VARCHAR(40) NOT NULL,
    CONSTRAINT PK_Atendimento PRIMARY KEY (id),
    CONSTRAINT SK_Atendimento UNIQUE (Privada, MoradorDeRua, DataAtendimento),
    CONSTRAINT FK_Atendimento1 FOREIGN KEY (Privada,NomeAtendimento) REFERENCES Privada(TipoEmpresa, Categoria) ON DELETE SET NULL,
    CONSTRAINT FK_Atendimento2 FOREIGN KEY (MoradorDeRua) REFERENCES MoradorDeRua(CPF) ON DELETE SET NULL
);



CREATE TABLE Consulta(
    id NUMBER NOT NULL,
    Assessoria NUMBER NOT NULL,
    MoradorDeRua NUMBER NOT NULL,
    DataConsuta DATE NOT NULL,
    Categoria VARCHAR(30),
    CONSTRAINT PK_Consulta PRIMARY KEY (id),
    CONSTRAINT SK_Consulta UNIQUE (Assessoria, MoradorDeRua, DataConsuta, Categoria),
    CONSTRAINT FK_Consulta1 FOREIGN KEY (Categoria) REFERENCES Assessoria(Categoria) ON DELETE SET NULL,
    CONSTRAINT FK_Consulta2 FOREIGN KEY (Assessoria) REFERENCES Assessoria(TipoEmpresa) ON DELETE SET NULL,
    CONSTRAINT FK_Consulta3 FOREIGN KEY (MoradorDeRua) REFERENCES MoradorDeRua(CPF)
);

CREATE TABLE PontoDeColeta(
    Instituicao NUMBER NOT NULL,
    HorarioDeFuncionamento VARCHAR(20), /*Verificar depois [por enquanto fica como uma string]*/
    CONSTRAINT PK_PontoDeColeta PRIMARY KEY (Instituicao),
    CONSTRAINT FK_PontoDeColeta FOREIGN KEY (Instituicao) REFERENCES Instituicao(CNPJ) ON DELETE SET NULL
);

CREATE TABLE Estoque(
    PontoDeColeta  NUMBER NOT NULL,
    /* Lotacao NUMBER, ----> Atributo DERIVADO*/
    CapacidadeArmazenamento NUMBER,
    CONSTRAINT PK_Estoque PRIMARY KEY(PontoDeColeta),
    CONSTRAINT FK_Estoque FOREIGN KEY (PontoDeColeta) REFERENCES PontoDeColeta(Instituicao) ON DELETE SET NULL
);

CREATE TABLE Produto(
    id NUMBER NOT NULL,
    Estoque NUMBER NOT NULL,
    NomedoProduto VARCHAR(40) NOT NULL,
    NomedoFabricante VARCHAR(40) NOT NULL,
    Volume NUMBER,
    Validade DATE, /*alterei de Idade para Validade*/
    /*Quantidade disponivel NUMBER - derivado*/
    CONSTRAINT PK_Produto PRIMARY KEY (id),
    CONSTRAINT FK_Produto FOREIGN KEY (Estoque) REFERENCES Estoque(PontoDeColeta) ON DELETE SET NULL
);

CREATE TABLE Alimento(
    Produto NUMBER NOT NULL,
    Peribilidade CHAR(1),
    TeorCalorico NUMBER,
    DataVencimento DATE,
    /*CONSTRAINT PK_Alimento PRIMARY KEY (Produto),*/
    CONSTRAINT FK_Alimento FOREIGN KEY (Produto) REFERENCES Produto(id) ON DELETE SET NULL
);

CREATE TABLE Medicamento(
    Produto NUMBER NOT NULL,
    DataVencimento DATE,
    Tipo VARCHAR(30),
    Lote VARCHAR(30),
    CONSTRAINT PK_Medicamento PRIMARY KEY (Produto),
    CONSTRAINT FK_Medicamento FOREIGN KEY (Produto) REFERENCES Produto(id) ON DELETE SET NULL
);

CREATE TABLE FornecimentoProduto(
    id NUMBER NOT NULL,
    Produto NUMBER NOT NULL,
    MoradorDeRua NUMBER NOT NULL,
    DataFornecimento DATE NOT NULL,
    Unidade VARCHAR(10),
    CONSTRAINT PK_FornecimentoProduto PRIMARY KEY (id),
    CONSTRAINT SK_FornecimentoProduto UNIQUE (Produto, MoradorDeRua, DataFornecimento),
    CONSTRAINT FK_FornecimentoProduto1 FOREIGN KEY (Produto) REFERENCES Produto(id),
    CONSTRAINT FK_FornecimentoProduto2 FOREIGN KEY (MoradorDeRua) REFERENCES MoradorDeRua(CPF)
);

CREATE TABLE DoacaoProduto(
    id NUMBER NOT NULL,
    Produto NUMBER NOT NULL,
    Doador NUMBER NOT NULL,
    DataDoacao DATE NOT NULL,
    CONSTRAINT PK_DoacaoProduto PRIMARY KEY (id),
    CONSTRAINT SK_DoacaoProduto UNIQUE (Produto, Doador, DataDoacao),
    CONSTRAINT FK_DoacaoProduto_1 FOREIGN KEY (Produto) REFERENCES Produto(id) ON DELETE SET NULL,
    CONSTRAINT FK_DoacaoProduto_2 FOREIGN KEY (Doador) REFERENCES Doador(CPF) ON DELETE SET NULL
);

CREATE TABLE Doador(
    CPF NUMBER NOT NULL,
    Nome VARCHAR(30) NOT NULL,
    DataNascimento DATE,
    Idade NUMBER, /*talvez tirar*/
    DataCadastro DATE,
    NumeroDoacoes NUMBER,
    CONSTRAINT PK_Doador PRIMARY KEY (CPF),
    CONSTRAINT FK_Doador_1 FOREIGN KEY (CPF) REFERENCES TipoPessoa(CPF) ON DELETE SET NULL
);

CREATE TABLE DoacaoFinanceira(
    id NUMBER NOT NULL,
    Instituicao NUMBER NOT NULL,
    Doador NUMBER NOT NULL,
    DataDoacao DATE NOT NULL,
    Montante NUMBER NOT NULL,
    FormaPagamento VARCHAR(10),
    CONSTRAINT PK_DoacaoFinanceira PRIMARY KEY (id),
    CONSTRAINT SK_DoacaoFinanceira UNIQUE (Instituicao, Doador, DataDoacao),
    CONSTRAINT FK_DoacaoFinanceira1 FOREIGN KEY (Instituicao) REFERENCES Instituicao(CNPJ) ON DELETE SET NULL,
    CONSTRAINT FK_DoacaoFinanceira2 FOREIGN KEY (Doador) REFERENCES Doador(CPF) ON DELETE SET NULL
);

CREATE TABLE Vestuario(
    Produto NUMBER NOT NULL,
    Tamanho VARCHAR(2),
    Material VARCHAR(15),
    CONSTRAINT PK_Vestuario PRIMARY KEY (Produto),
    CONSTRAINT FK_Vestuario FOREIGN KEY (Produto) REFERENCES Produto(id) ON DELETE SET NULL
);

CREATE TABLE Higiene(
    Produto NUMBER NOT NULL,
    ComposicaoQuimica VARCHAR(100),
    CONSTRAINT PK_Higiene PRIMARY KEY (Produto),
    CONSTRAINT FK_higiene FOREIGN KEY (Produto) REFERENCES Produto(id) ON DELETE SET NULL
);

CREATE TABLE TipoProduto(
    Produto NUMBER NOT NULL,
    Categoria VARCHAR(12),
    CONSTRAINT PK_TipoProduto PRIMARY KEY (Produto, Categoria),
    CONSTRAINT FK_TipoProduto FOREIGN KEY (Produto) REFERENCES Produto(id)ON DELETE SET NULL
);

CREATE TABLE Dormitorio(
    Instituicao NUMBER NOT NULL,
    TipoAcomodacao VARCHAR(30),
    Capacidade NUMBER,
    PessoasAcomodadas NUMBER,
    /*VagasDisponiveis NUMBER, ----> Atributo DERIVADO*/
    CONSTRAINT PK_Dormitorio PRIMARY KEY (Instituicao),
    CONSTRAINT FK_Dormitorio FOREIGN KEY (Instituicao) REFERENCES Instituicao(CNPJ) ON DELETE SET NULL  
);

CREATE TABLE Estadia(
    id NUMBER NOT NULL,
    Dormitorio NUMBER NOT NULL,
    MoradorDeRua NUMBER NOT NULL,
    Entrada DATE NOT NULL,
    Saida DATE,
    /*TempoPermanencia DATE, ----> Atributo DERIVADO*/
    CONSTRAINT PK_Estadia PRIMARY KEY (id),
    CONSTRAINT SK_Estadia UNIQUE (Dormitorio, MoradorDeRua, Entrada),
    CONSTRAINT FK_Estadia_1 FOREIGN KEY (Dormitorio) REFERENCES Dormitorio(Instituicao) ON DELETE SET NULL,
    CONSTRAINT FK_Estadia_2 FOREIGN KEY (MoradorDeRua) REFERENCES MoradorDeRua(CPF) ON DELETE SET NULL
);


CREATE TABLE Oportunidade(
    id NUMBER NOT NULL,
    Privada NUMBER NOT NULL,
    idConsulta NUMBER NOT NULL,
    Assessoria NUMBER NOT NULL,
    DataOP DATE NOT NULL,
    NomeOportunidade VARCHAR(40) NOT NULL,
    CONSTRAINT PK_Oportunidade PRIMARY KEY (id),
    CONSTRAINT SK_Oportunidade UNIQUE (idConsulta),
    CONSTRAINT FK_Oportunidade_1 FOREIGN KEY (Privada, NomeOportunidade) REFERENCES Privada(TipoEmpresa, Categoria) ON DELETE SET NULL,
    CONSTRAINT FK_Oportunidade_2 FOREIGN KEY (Assessoria) REFERENCES Assessoria(TipoEmpresa) ON DELETE SET NULL,
    CONSTRAINT FK_Oportunidade_3 FOREIGN KEY (idConsulta) REFERENCES Consulta(id) ON DELETE SET NULL
);

CREATE TABLE Servico(
    id NUMBER NOT NULL,
    Privada NUMBER NOT NULL,
    idConsulta NUMBER NOT NULL,
    Assessoria NUMBER NOT NULL,
    DataServ DATE NOT NULL,
    NomeServ VARCHAR(40) NOT NULL,
    CONSTRAINT PK_Servico PRIMARY KEY (id),
    CONSTRAINT SK_Servico UNIQUE (Privada, Assessoria, DataServ, NomeServ),
    CONSTRAINT FK_Servico_1 FOREIGN KEY (Privada, NomeServ) REFERENCES Privada(TipoEmpresa, Categoria) ON DELETE SET NULL,
    CONSTRAINT FK_Servico_2 FOREIGN KEY (Assessoria) REFERENCES Assessoria(TipoEmpresa) ON DELETE SET NULL,
    CONSTRAINT FK_Servico_3 FOREIGN KEY (idConsulta) REFERENCES Consulta(id) ON DELETE SET NULL
);

