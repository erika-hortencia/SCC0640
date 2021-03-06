/*Tabela TipoPessoa
    CPF NUMBER NOT NULL,
    Nome VARCHAR(30) NOT NULL,
    Tipo VARCHAR(10) NOT NULL,
*/
INSERT INTO TipoPessoa
    VALUES(03256987412, 'ERIKA', 'DOADOR');

INSERT INTO TipoPessoa
    VALUES(47856321778, 'DANIEL', 'DOADOR');

INSERT INTO TipoPessoa
    VALUES(06955111458, 'HENRIQUE', 'MORADOR DE RUA');

INSERT INTO TipoPessoa
    VALUES(06955587600, 'LADY GAGA', 'MORADOR DE RUA');

INSERT INTO TipoPessoa
    VALUES(03557111454, 'KEANU REEVES', 'MORADOR DE RUA');

INSERT INTO TipoPessoa
    VALUES(01467587600, 'IVETE SANGALO', 'MORADOR DE RUA');

INSERT INTO TipoPessoa
    VALUES(01467192700, 'JACK DORSEY', 'MORADOR DE RUA');

INSERT INTO TipoPessoa
    VALUES(45678932101, 'BILL GATES', 'DOADOR');

INSERT INTO TipoPessoa
    VALUES(05749694038, 'JOAQUIN PHOENIX', 'MORADOR DE RUA');

INSERT INTO TipoPessoa
    VALUES(76851659026, 'LEONARDO DA VINCI', 'MORADOR DE RUA');

INSERT INTO TipoPessoa
    VALUES(41306360064, 'XUXA', 'MORADOR DE RUA');

INSERT INTO TipoPessoa
    VALUES(70293375062, 'LUCIANA RAMALHO', 'MORADOR DE RUA');

INSERT INTO TipoPessoa
    VALUES(02547896312, 'JEFF BEZOS', 'DOADOR');

INSERT INTO TipoPessoa
    VALUES(02578412033, 'ALAN MUSK', 'DOADOR');    

/*Tabela MoradorDeRua*/
INSERT INTO MoradorDeRua
    VALUES(06955111458, 'HENRIQUE', TO_DATE('28/04/2001','dd/mm/yyyy'), TO_DATE('30/11/2015','dd/mm/yyyy'), 'M', 'FUNDAMENTAL COMPLETO');

INSERT INTO MoradorDeRua
    VALUES(06955587600, 'LADY GAGA', TO_DATE('12/07/1985','dd/mm/yyyy'), TO_DATE('15/06/2013','dd/mm/yyyy'), 'F', 'SUPERIOR COMPLETO');

INSERT INTO MoradorDeRua
    VALUES(03557111454, 'KEANU REEVES', TO_DATE('02/08/1950','dd/mm/yyyy'), TO_DATE('01/12/2011','dd/mm/yyyy'), 'M', 'MEDIO COMPLETO');

INSERT INTO MoradorDeRua
    VALUES(01467587600, 'IVETE SANGALO', TO_DATE('12/07/1976','dd/mm/yyyy'), TO_DATE('09/01/2000','dd/mm/yyyy'), 'F', 'FUNDAMENTAL COMPLETO');

INSERT INTO MoradorDeRua
    VALUES(01467192700, 'JACK DORSEY', TO_DATE('12/07/1976','dd/mm/yyyy'), TO_DATE('01/12/2001','dd/mm/yyyy'), 'M', 'MEDIO COMPLETO');

INSERT INTO MoradorDeRua
    VALUES(05749694038, 'JOAQUIN PHOENIX', TO_DATE('12/07/1952','dd/mm/yyyy'), TO_DATE('11/08/2021','dd/mm/yyyy'),'M', 'MEDIO COMPLETO');

INSERT INTO MoradorDeRua
    VALUES(76851659026, 'LEONARDO DA VINCI', TO_DATE('12/11/1950','dd/mm/yyyy'),TO_DATE('15/06/2013','dd/mm/yyyy'), 'M', 'SUPERIOR COMPLETO');

INSERT INTO MoradorDeRua
    VALUES(41306360064, 'XUXA', TO_DATE('12/02/2005','dd/mm/yyyy'),TO_DATE('15/06/2021','dd/mm/yyyy'), 'F', 'FUNDAMENTAL INCOMPLETO');

INSERT INTO MoradorDeRua
    VALUES(70293375062, 'LUCIANA RAMALHO', TO_DATE('12/02/2010','dd/mm/yyyy'),TO_DATE('15/07/2021','dd/mm/yyyy'), 'F', 'FUNDAMENTAL INCOMPLETO');

/*Tabela Alergias*/
INSERT INTO Alergias
    VALUES(06955111458, 'POEIRA, IBUPROFENO');

INSERT INTO Alergias
    VALUES(01467587600, 'UVA, AMOXICILINA, NOZES');

/*Tabela Habilidades*/
INSERT INTO Habilidades
    VALUES(06955111458, 4);

INSERT INTO Habilidades
    VALUES(01467587600,8);

INSERT INTO Habilidades
    VALUES(03557111454, 6);

INSERT INTO Habilidades
    VALUES(06955587600, 6);

INSERT INTO Habilidades
    VALUES(01467192700, 4);


/*Tabela Institui????o*/
INSERT INTO Instituicao
    VALUES(29283948625874, 'PPL MALL', 13560980, 'SP', 'CAMPINAS', 'AV BRASIL', 57);

INSERT INTO Instituicao
    VALUES(29210000625874, 'NGN ASSESSORIAS', 68960980, 'SP', 'CAMPINAS', 'RUA PRINCESA ISABEL', 1298);

INSERT INTO Instituicao
    VALUES(48512369745214, 'SLP ABRIGOS SEDE', 78459678, 'SP', 'CAMPINAS', 'AV AFONSO PENA', 2240);

INSERT INTO Instituicao
    VALUES(48512369745215, 'SLP ABRIGOS 2', 78458645, 'SP', 'CAMPINAS', 'AV MATO GROSSO', 220);

INSERT INTO Instituicao
    VALUES(48512369745216, 'SLP ABRIGOS 3', 78465632, 'SP', 'CAMPINAS', 'RUA ERNESTO GEISEL', 2240);

INSERT INTO Instituicao
    VALUES(05948237295069, 'MEDCLIN CLINICA', 15940796, 'SP', 'CAMPINAS', 'AV DOM PEDRO I', 6790);

INSERT INTO Instituicao
    VALUES(74587521681254, 'MACGYVER BEAUTY', 14785629, 'SP', 'CAMPINAS', 'AV FLORESTAL', 500);

INSERT INTO Instituicao
    VALUES(75716251241845, 'MFM EMPRENTEIRAS', 47846069, 'SP', 'CAMPINAS', 'AV YOKOHAMA', 1236);

INSERT INTO Instituicao
    VALUES(74575892361254, 'FREE LANCERS HTR', 14775982, 'SP', 'CAMPINAS', 'RUA JASMELINDA', 168);

INSERT INTO Instituicao
    VALUES(14785236995123, 'SUPPPLYS', 45879632, 'SP', 'CAMPINAS', 'RUA JASMELINDA', 168);

INSERT INTO Instituicao
    VALUES(98230679583729, 'SUPRIMENTOS SA', 20695849, 'SP', 'CAMPINAS', 'RUA PRESIDENTE VARGAS', 557);

INSERT INTO Instituicao
    VALUES(23172482000162, 'KPJ ASSESSORIA', 13010080, 'SP', 'CAMPINAS', 'AV CAMPOS SALES', 480);

INSERT INTO Instituicao
    VALUES(44343495000127, 'BBC TREINAMENTOS', 13087732, 'SP', 'CAMPINAS', 'AV RICARDO ROCHA BOMFIM', 1180);

/*Tabela TipoInstituicao*/
INSERT INTO TipoInstituicao
    VALUES(29283948625874, 'EMPRESA');

INSERT INTO TipoInstituicao
    VALUES(29210000625874, 'EMPRESA');

INSERT INTO TipoInstituicao
    VALUES(48512369745214, 'DORMITORIO');

INSERT INTO TipoInstituicao
    VALUES(48512369745215, 'DORMITORIO');

INSERT INTO TipoInstituicao
    VALUES(48512369745216, 'DORMITORIO');

INSERT INTO TipoInstituicao
    VALUES(05948237295069, 'EMPRESA');

INSERT INTO TipoInstituicao
    VALUES(74587521681254, 'EMPRESA');

INSERT INTO TipoInstituicao
    VALUES(75716251241845, 'EMPRESA');

INSERT INTO TipoInstituicao
    VALUES(74575892361254, 'EMPRESA');

INSERT INTO TipoInstituicao
    VALUES(14785236995123, 'PONTO DE COLETA');

INSERT INTO TipoInstituicao
    VALUES(98230679583729, 'PONTO DE COLETA');

INSERT INTO TipoInstituicao
    VALUES(23172482000162, 'EMPRESA');

INSERT INTO TipoInstituicao
    VALUES(44343495000127, 'EMPRESA');

 /*Tabela TipoEmpresa*/
INSERT INTO TipoEmpresa
    VALUES(29283948625874, 'PRIVADA');

INSERT INTO TipoEmpresa
    VALUES(29210000625874, 'ASSESSORIA');

INSERT INTO TipoEmpresa
    VALUES(05948237295069, 'PRIVADA');

INSERT INTO TipoEmpresa
    VALUES(74587521681254, 'PRIVADA');

INSERT INTO TipoEmpresa
    VALUES(75716251241845, 'PRIVADA');

INSERT INTO TipoEmpresa
    VALUES(74575892361254, 'PRIVADA');

INSERT INTO TipoEmpresa
    VALUES(23172482000162, 'ASSESSORIA');

INSERT INTO TipoEmpresa
    VALUES(44343495000127, 'PRIVADA');

/*Tabela Privada*/
INSERT INTO Privada
    VALUES(29283948625874, 'OPORTUNIDADE');

INSERT INTO Privada
    VALUES(05948237295069, 'SAUDE');

INSERT INTO Privada
    VALUES(74587521681254, 'ESTETICA');

INSERT INTO Privada
    VALUES(75716251241845, 'OPORTUNIDADE');

INSERT INTO Privada
    VALUES(74575892361254, 'OPORTUNIDADE');

INSERT INTO Privada
    VALUES(44343495000127, 'EDUCACAO');

/*Tabela Assessoria*/
INSERT INTO Assessoria
    VALUES(29210000625874, 'SERVICO');

INSERT INTO Assessoria
    VALUES(23172482000162, 'OPORTUNIDADE');

/*Tabela Consulta
    Consulta(
    id NUMBER NOT NULL,
    Assessoria NUMBER NOT NULL,
    MoradorDeRua NUMBER NOT NULL,
    DataConsuta DATE NOT NULL,
    Categoria VARCHAR(30),
*/
INSERT INTO Consulta
    VALUES(001, 29210000625874, 06955111458, TO_DATE('30/11/2021','dd/mm/yyyy'), 'SERVICO');
    
INSERT INTO Consulta
    VALUES(002, 29210000625874, 03557111454, TO_DATE('15/07/2021','dd/mm/yyyy'), 'OPORTUNIDADE');

INSERT INTO Consulta
    VALUES(003, 23172482000162, 01467587600, TO_DATE('30/01/2021','dd/mm/yyyy'), 'SERVICO');
    
INSERT INTO Consulta
    VALUES(004, 23172482000162, 01467192700, TO_DATE('30/01/2021','dd/mm/yyyy'), 'OPORTUNIDADE');

INSERT INTO Consulta
    VALUES(005, 29210000625874, 01467192700, TO_DATE('10/01/2021','dd/mm/yyyy'), 'SERVICO');

/*Tabela Atendimento
    id NUMBER NOT NULL,
    Privada NUMBER NOT NULL,
    idConsulta NUMBER NOT NULL,
    MoradorDeRua NUMBER NOT NULL,
    DataAtendimento DATE NOT NULL,
    CONSTRAINT PK_Atendimento PRIMARY KEY (id),
    CONSTRAINT SK_Atendimento UNIQUE (Privada, MoradorDeRua, DataAtendimento),
    CONSTRAINT FK_Atendimento1 FOREIGN KEY (Privada,NomeAtendimento) REFERENCES Privada(TipoEmpresa, Categoria) ON DELETE SET NULL,
    CONSTRAINT FK_Atendimento2 FOREIGN KEY (MoradorDeRua) REFERENCES MoradorDeRua(CPF) ON DELETE SET NULL
    CONSTRAINT FK_Atendimento_3 FOREIGN KEY (idConsulta) REFERENCES Consulta(id) ON DELETE SET NULL
*/
INSERT INTO Atendimento
    VALUES(001, 05948237295069, 001, 06955111458, TO_DATE('01/12/2021','dd/mm/yyyy'), 'SAUDE');

INSERT INTO Atendimento
    VALUES(002, 74587521681254, 003, 01467587600, TO_DATE('01/07/2021','dd/mm/yyyy'), 'ESTETICA');

INSERT INTO Atendimento
    VALUES(003, 44343495000127, 005, 01467192700, TO_DATE('01/07/2021','dd/mm/yyyy'), 'EDUCACAO');

INSERT INTO Atendimento
    VALUES(004, 75716251241845, 002, 03557111454, TO_DATE('17/03/2021', 'dd/mm/yyyy'), 'OPORTUNIDADE');

INSERT INTO Atendimento
    VALUES(005, 29283948625874, 004, 01467192700, TO_DATE('27/11/2021', 'dd/mm/yyyy'), 'OPORTUNIDADE');


/*Tabela Ponto de Coleta*/
INSERT INTO PontoDeColeta
    VALUES(14785236995123, 'DE 08:00 A 18:00');

INSERT INTO PontoDeColeta
    VALUES(98230679583729, 'DE 17:00 A 07:00');

/*Tabela Estoque*/
INSERT INTO Estoque
    VALUES(14785236995123, 1000);

INSERT INTO Estoque
    VALUES(98230679583729, 1500);    

/*Tabela Produto
    id NUMBER NOT NULL,
    Estoque NUMBER NOT NULL,
    NomedoProduto VARCHAR(40) NOT NULL,
    NomedoFabricante VARCHAR(40) NOT NULL,
    Volume NUMBER,
    Validade DATE, */
INSERT INTO Produto
    VALUES(001, 14785236995123, 'MACARRAO', 'RENATA', 1, TO_DATE('02/02/2022','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(002, 98230679583729, 'MACARRAO', 'RENATA', 1, TO_DATE('02/02/2022','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(003, 14785236995123, 'MACARRAO', 'RENATA', 1, TO_DATE('02/02/2022','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(004, 98230679583729, 'MACARRAO', 'RENATA', 1, TO_DATE('02/02/2022','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(005, 14785236995123, 'SARDINHA', 'FISH', 1, TO_DATE('02/12/2022','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(006, 98230679583729, 'SARDINHA', 'FISH', 1, TO_DATE('02/12/2022','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(007, 14785236995123, 'SARDINHA', 'FISH', 1, TO_DATE('02/12/2022','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(008, 98230679583729, 'SARDINHA', 'FISH', 1, TO_DATE('02/12/2022','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(009, 14785236995123, 'ARROZ', 'SENINHA', 1, TO_DATE('15/05/2022','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(010, 98230679583729, 'ARROZ', 'SENINHA', 1, TO_DATE('15/05/2022','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(011, 14785236995123, 'ARROZ', 'SENINHA', 1, TO_DATE('15/05/2022','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(012, 98230679583729, 'ARROZ', 'SENINHA', 1, TO_DATE('15/05/2022','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(013, 14785236995123, 'ARROZ', 'SENINHA', 1, TO_DATE('15/05/2022','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(014, 98230679583729, 'DIPIRONA', 'GENERICO', 1, TO_DATE('11/02/2022','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(015, 14785236995123, 'DIPIRONA', 'GENERICO', 1, TO_DATE('11/12/2023','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(016, 98230679583729, 'DIPIRONA', 'GENERICO', 1, TO_DATE('10/08/2023','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(017, 14785236995123, 'DIPIRONA', 'GENERICO', 1, TO_DATE('19/05/2023','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(018, 98230679583729, 'DIPIRONA', 'GENERICO', 1, TO_DATE('05/10/2023','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(019, 98230679583729, 'BLUSA', 'HERING', 1, TO_DATE('31/12/2999','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(020, 14785236995123, 'BLUSA', 'POLO', 1, TO_DATE('31/12/2999','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(021, 98230679583729, 'BERMUDA', 'HERING', 1, TO_DATE('31/12/2999','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(022, 14785236995123, 'VESTIDO', 'DOLCE GABANA', 1, TO_DATE('31/12/2999','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(023, 98230679583729, 'SABONETE', 'PROTEX', 1, TO_DATE('12/12/2024', 'dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(024, 98230679583729, 'SABONETE', 'DOVE', 1, TO_DATE('12/05/2024', 'dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(025, 14785236995123, 'CREME DENTAL', 'SORRISO', 1, TO_DATE('31/12/2022','dd/mm/yyyy'));

INSERT INTO Produto
    VALUES(026, 14785236995123, 'HIDRATANTE', 'MONANGE', 1, TO_DATE('11/02/2023','dd/mm/yyyy'));

/*Tabela Alimento
    Produto NUMBER NOT NULL,
    Peribilidade CHAR(1),
    TeorCalorico NUMBER,
    DataVencimento DATE,
*/    
INSERT INTO Alimento
    VALUES(001, 'S', 50, TO_DATE('02/02/2022','dd/mm/yyyy'));

INSERT INTO Alimento
    VALUES(002, 'S', 50, TO_DATE('02/02/2022','dd/mm/yyyy'));

INSERT INTO Alimento
    VALUES(003, 'S', 50, TO_DATE('02/02/2022','dd/mm/yyyy'));

INSERT INTO Alimento
    VALUES(004, 'S', 50, TO_DATE('02/02/2022','dd/mm/yyyy'));

INSERT INTO Alimento
    VALUES(005, 'S', 100, TO_DATE('02/12/2022','dd/mm/yyyy'));

INSERT INTO Alimento
    VALUES(006, 'S', 100, TO_DATE('02/12/2022','dd/mm/yyyy'));

INSERT INTO Alimento
    VALUES(007, 'S', 100, TO_DATE('02/12/2022','dd/mm/yyyy'));

INSERT INTO Alimento
    VALUES(008, 'S', 100, TO_DATE('02/12/2022','dd/mm/yyyy'));

INSERT INTO Alimento
    VALUES(009, 'S', 90, TO_DATE('15/05/2022','dd/mm/yyyy'));

INSERT INTO Alimento
    VALUES(010, 'S', 90, TO_DATE('15/05/2022','dd/mm/yyyy'));

INSERT INTO Alimento
    VALUES(011, 'S', 90, TO_DATE('15/05/2022','dd/mm/yyyy'));

INSERT INTO Alimento
    VALUES(012, 'S', 90, TO_DATE('15/05/2022','dd/mm/yyyy'));

INSERT INTO Alimento
    VALUES(013, 'S', 90, TO_DATE('15/05/2022','dd/mm/yyyy'));

/*Tabela Medicamento
    Produto NUMBER NOT NULL,
    DataVencimento DATE,
    Tipo VARCHAR(30),
    Lote VARCHAR(30),
*/
INSERT INTO Medicamento
    VALUES(014, TO_DATE('11/04/2023','dd/mm/yyyy'), 'ANALGESICO', 'S111');

INSERT INTO Medicamento
    VALUES(015, TO_DATE('11/04/2023','dd/mm/yyyy'), 'ANALGESICO', 'S111');

INSERT INTO Medicamento
    VALUES(016, TO_DATE('11/04/2023','dd/mm/yyyy'), 'ANALGESICO', 'S222');

INSERT INTO Medicamento
    VALUES(017, TO_DATE('11/04/2023','dd/mm/yyyy'), 'ANALGESICO', 'S222');

INSERT INTO Medicamento
    VALUES(018, TO_DATE('11/04/2023','dd/mm/yyyy'), 'ANALGESICO', 'S333');

/*Tabela Doador
    CPF NUMBER NOT NULL,
    Nome VARCHAR(30) NOT NULL,
    DataNascimento DATE,
    DataCadastro DATE,
    NumeroDoacoes NUMBER,
*/
INSERT INTO Doador
    VALUES(03256987412, 'ERIKA', TO_DATE('05/12/1997', 'dd/mm/yyyy'), TO_DATE('29/11/2021', 'dd/mm/yyyy'), 1);

INSERT INTO Doador
    VALUES(47856321778, 'DANIEL', TO_DATE('25/07/2000', 'dd/mm/yyyy'), TO_DATE('30/11/2021', 'dd/mm/yyyy'), 1);

INSERT INTO Doador
    VALUES(45678932101, 'BILL GATES', TO_DATE('28/04/1960', 'dd/mm/yyyy'), TO_DATE('30/11/2021', 'dd/mm/yyyy'), 7); /*alterar*/

INSERT INTO Doador
    VALUES(02547896312, 'JEFF BEZOS', TO_DATE('08/09/1970', 'dd/mm/yyyy'), TO_DATE('30/11/2021', 'dd/mm/yyyy'), 6);

INSERT INTO Doador
    VALUES(02578412033, 'ELON MUSK', TO_DATE('07/04/1975', 'dd/mm/yyyy'), TO_DATE('30/11/2021', 'dd/mm/yyyy'), 5);

/*Tabela DoacaoFinanceira
    id NUMBER NOT NULL,
    Instituicao NUMBER NOT NULL,
    Doador NUMBER NOT NULL,
    DataDoacao DATE NOT NULL,
    Montante NUMBER NOT NULL,
    FormaPagamento VARCHAR(10),
*/
INSERT INTO DoacaoFinanceira
    VALUES(01, 14785236995123, 45678932101, TO_DATE('30/11/2021', 'dd/mm/yyyy'), 500000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(02, 98230679583729, 45678932101, TO_DATE('30/11/2021', 'dd/mm/yyyy'), 500000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(03, 14785236995123, 45678932101, TO_DATE('01/12/2021', 'dd/mm/yyyy'), 550000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(04, 98230679583729, 45678932101, TO_DATE('01/12/2021', 'dd/mm/yyyy'), 650000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(05, 98230679583729, 45678932101, TO_DATE('01/11/2021', 'dd/mm/yyyy'), 600000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(06, 48512369745214, 45678932101, TO_DATE('01/12/2021', 'dd/mm/yyyy'), 1600000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(07, 48512369745215, 45678932101, TO_DATE('01/12/2021', 'dd/mm/yyyy'), 1500000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(08, 48512369745216, 45678932101, TO_DATE('01/12/2021', 'dd/mm/yyyy'), 1400000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(19, 05948237295069, 02547896312, TO_DATE('11/12/2021', 'dd/mm/yyyy'), 300000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(09, 05948237295069, 02547896312, TO_DATE('30/11/2021', 'dd/mm/yyyy'), 300000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(10, 05948237295069, 02547896312, TO_DATE('01/12/2021', 'dd/mm/yyyy'), 400000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(11, 29283948625874, 02547896312, TO_DATE('01/12/2021', 'dd/mm/yyyy'), 2000000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(12, 48512369745214, 02547896312, TO_DATE('01/12/2021', 'dd/mm/yyyy'), 1000000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(13, 48512369745214, 02547896312, TO_DATE('02/12/2021', 'dd/mm/yyyy'), 1000000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(14, 48512369745214, 02578412033, TO_DATE('02/12/2021', 'dd/mm/yyyy'), 1500000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(15, 48512369745215, 02578412033, TO_DATE('02/12/2021', 'dd/mm/yyyy'), 1500000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(16, 48512369745216, 02578412033, TO_DATE('02/12/2021', 'dd/mm/yyyy'), 1500000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(17, 14785236995123, 02578412033, TO_DATE('02/12/2021', 'dd/mm/yyyy'), 1500000, 'DINHEIRO');

INSERT INTO DoacaoFinanceira
    VALUES(18, 29210000625874, 02578412033, TO_DATE('03/12/2021', 'dd/mm/yyyy'), 100000, 'DINHEIRO');

/*Tabela Doa????oProduto
    id NUMBER NOT NULL,
    Produto NUMBER NOT NULL,
    Doador NUMBER NOT NULL,
    DataDoacao DATE NOT NULL,
*/
INSERT INTO DoacaoProduto
    VALUES(01, 003, 03256987412, TO_DATE('28/11/2021', 'dd/mm/yyyy'));

INSERT INTO DoacaoProduto
    VALUES(02, 009, 47856321778, TO_DATE('28/11/2021', 'dd/mm/yyyy'));

/*Tabela Vestuario*/
INSERT INTO Vestuario
    VALUES(19,'G','ALGODAO');

INSERT INTO Vestuario
    VALUES(20,'M','SEDA');

INSERT INTO Vestuario
    VALUES(21,'GG','JEANS');

INSERT INTO Vestuario
    VALUES(22,'P','SEDA');

/*Tabela Higiene*/
INSERT INTO Higiene
    VALUES(23,'ACIDO LATICO, BENZOATO DE SODIO, CLORETO DE SODIO');

INSERT INTO Higiene
    VALUES(24,'ACIDO ESTEATICO, SEVATO DE SODIO, ACIDO LAURICO');

INSERT INTO Higiene
    VALUES(25,'CARBONATO DE CALCIO, LAURIL SULFATO DE SODIO');

INSERT INTO Higiene
    VALUES(26,'LANOLINA, GLICERINA, ALCOOL BENZILICO');

/*Tabela Tipo Produto*/
INSERT INTO TipoProduto
    VALUES(001, 'ALIMENTO');

INSERT INTO TipoProduto
    VALUES(002, 'ALIMENTO');

INSERT INTO TipoProduto
    VALUES(003, 'ALIMENTO');

INSERT INTO TipoProduto
    VALUES(004, 'ALIMENTO');

INSERT INTO TipoProduto
    VALUES(005, 'ALIMENTO');

INSERT INTO TipoProduto
    VALUES(006, 'ALIMENTO');

INSERT INTO TipoProduto
    VALUES(007, 'ALIMENTO');

INSERT INTO TipoProduto
    VALUES(008, 'ALIMENTO');

INSERT INTO TipoProduto
    VALUES(009, 'ALIMENTO');

INSERT INTO TipoProduto
    VALUES(010, 'ALIMENTO');

INSERT INTO TipoProduto
    VALUES(011, 'ALIMENTO');

INSERT INTO TipoProduto
    VALUES(012, 'ALIMENTO');

INSERT INTO TipoProduto
    VALUES(013, 'ALIMENTO');

INSERT INTO TipoProduto
    VALUES(014, 'MEDICAMENTO');

INSERT INTO TipoProduto
    VALUES(015, 'MEDICAMENTO');

INSERT INTO TipoProduto
    VALUES(016, 'MEDICAMENTO');

INSERT INTO TipoProduto
    VALUES(017, 'MEDICAMENTO');

INSERT INTO TipoProduto
    VALUES(018, 'MEDICAMENTO');

INSERT INTO TipoProduto
    VALUES(019, 'VESTUARIO');

INSERT INTO TipoProduto
    VALUES(020, 'VESTUARIO');

INSERT INTO TipoProduto
    VALUES(021, 'VESTUARIO');

INSERT INTO TipoProduto
    VALUES(022, 'VESTUARIO');

INSERT INTO TipoProduto
    VALUES(023, 'HIGIENE');

INSERT INTO TipoProduto
    VALUES(024, 'HIGIENE');

INSERT INTO TipoProduto
    VALUES(025, 'HIGIENE');

INSERT INTO TipoProduto
    VALUES(026, 'HIGIENE');

/*Tabela Dormitorio*/
INSERT INTO Dormitorio
    VALUES(48512369745214,'QUARTO COLETIVO', 200, 180);

INSERT INTO Dormitorio
    VALUES(48512369745215,'QUARTO INDIVIDUAL', 100, 92);

INSERT INTO Dormitorio
    VALUES(48512369745216,'APARTAMENTO', 300, 190);

/* Tabela Estadia*/
INSERT INTO Estadia  
    VALUES(001, 48512369745216, 06955587600, TO_DATE('01/05/2020', 'dd/mm/yyyy'), TO_DATE('01/05/2020', 'dd/mm/yyyy'));

INSERT INTO Estadia  
    VALUES(002, 48512369745215, 01467587600, TO_DATE('11/07/2020', 'dd/mm/yyyy'), TO_DATE('15/07/2020', 'dd/mm/yyyy'));

INSERT INTO Estadia  
    VALUES(003, 48512369745216, 03557111454, TO_DATE('05/09/2021', 'dd/mm/yyyy'), TO_DATE('05/10/2021', 'dd/mm/yyyy'));

INSERT INTO Estadia  
    VALUES(004, 48512369745214, 06955111458, TO_DATE('01/05/2019', 'dd/mm/yyyy'), TO_DATE('02/05/2019', 'dd/mm/yyyy'));

INSERT INTO Estadia  
    VALUES(005, 48512369745214, 06955587600, TO_DATE('13/01/2021', 'dd/mm/yyyy'), TO_DATE('01/03/2021', 'dd/mm/yyyy'));

INSERT INTO Estadia  
    VALUES(006, 48512369745215, 06955587600, TO_DATE('05/05/2020', 'dd/mm/yyyy'), TO_DATE('06/05/2020', 'dd/mm/yyyy'));
    
/*Tabela Oportunidade
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
*/
INSERT INTO Oportunidade
    VALUES(001, 75716251241845, 002, 29210000625874, TO_DATE('17/07/2021', 'dd/mm/yyyy'), 'OPORTUNIDADE');

INSERT INTO Oportunidade
    VALUES(002, 29283948625874, 004, 23172482000162, TO_DATE('01/02/2021', 'dd/mm/yyyy'), 'OPORTUNIDADE');

/*Tabela Servi??o
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
*/

INSERT INTO Servico
    VALUES(001, 05948237295069, 001, 29210000625874, TO_DATE('05/07/2021','dd/mm/yyyy'),'SAUDE');

INSERT INTO Servico
    VALUES(002, 74587521681254, 003, 23172482000162, TO_DATE('15/09/2021','dd/mm/yyyy'),'ESTETICA');

/*Tabela FornecimentoProduto
    id NUMBER NOT NULL,
    Produto NUMBER NOT NULL,
    MoradorDeRua NUMBER NOT NULL,
    DataFornecimento DATE NOT NULL,
    Unidade VARCHAR(10),
    CONSTRAINT PK_FornecimentoProduto PRIMARY KEY (id),
    CONSTRAINT SK_FornecimentoProduto UNIQUE (Produto, MoradorDeRua, DataFornecimento),
    CONSTRAINT FK_FornecimentoProduto1 FOREIGN KEY (Produto) REFERENCES Produto(id),
    CONSTRAINT FK_FornecimentoProduto2 FOREIGN KEY (MoradorDeRua) REFERENCES MoradorDeRua(CPF)
*/
INSERT INTO FornecimentoProduto
    VALUES(01, 001, 06955111458, TO_DATE('29/11/2021', 'dd/mm/yyyy'), 'SACO');

INSERT INTO FornecimentoProduto
    VALUES(02, 004, 06955111458, TO_DATE('30/12/2021', 'dd/mm/yyyy'), 'SACO');

INSERT INTO FornecimentoProduto
    VALUES(03, 007, 06955111458, TO_DATE('01/12/2021', 'dd/mm/yyyy'), 'SACO');

INSERT INTO FornecimentoProduto
    VALUES(04, 015, 06955111458, TO_DATE('01/12/2021', 'dd/mm/yyyy'), 'SACO');

INSERT INTO FornecimentoProduto
    VALUES(05,25, 06955587600, TO_DATE('15/11/2021', 'dd/mm/yyyy'),'UND');

INSERT INTO FornecimentoProduto
    VALUES(06,26, 05749694038, TO_DATE('18/11/2021', 'dd/mm/yyyy'),'UND');

INSERT INTO FornecimentoProduto
    VALUES(07,23, 03557111454, TO_DATE('28/11/2020', 'dd/mm/yyyy'), 'UND');

INSERT INTO FornecimentoProduto
    VALUES(08,4, 01467587600, TO_DATE('28/03/2021', 'dd/mm/yyyy'),'UND');