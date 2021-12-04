/*  Consultar moradores de rua pela ordem decrescente do nível de habilidades
    [Inner Join]
*/
SELECT 
    T.Nome, 
    T.CPF, 
    H.Habilidades
FROM 
    TipoPessoa T
    JOIN 
    Habilidades H
ON 
    T.CPF = H.MoradorDeRua
ORDER BY    
    Habilidades DESC, 
    Nome;


/*  Consultar moradores menores de idade (nascidos após 2003) 
    e idosos (nascidos antes de 1961)
*/
SELECT 
    CPF,
    Nome, 
    TRUNC((sysdate - DataNascimento)/365) AS Idade
FROM 
    MoradorDeRua
WHERE 
    EXTRACT(YEAR FROM DataNascimento)>= 2003 
    OR  
    EXTRACT(YEAR FROM DataNascimento)<= 1961
ORDER BY 
    EXTRACT(YEAR FROM DataNascimento); 

/*  Consultar oportunidades oferecidas aos moradores de rua x nivel de escolaridade 
    dos moradores de rua [Inner Join]
*/
SELECT
    M.CPF,
    M.Nome AS NOME_MORADOR_DE_RUA,
    M.Escoladriade
FROM
    Consulta C
    JOIN
    Oportunidade O
    ON
    O.idConsulta = C.id
    JOIN
    MoradorDeRua M
    ON
    C.MoradorDeRua = M.CPF

/*Sugestao de aplicar left/right join com moradores de rua , alergia (nem todos tem) e 
medicamentos comprados (nem todos compraram)*/
SELECT 
    D.Nome, 
    DF.Montante
FROM    
    Doador D
LEFT JOIN
    DoacaoFinanceira DF
ON
    D.CPF = DF.Doador;


/*  Consultar os produtos fornecidos aos moradores de rua para checar se houve recebimento
    de produtos que podem causar reação alérgica
*/
SELECT 
    MR.CPF, 
    MR.Nome, 
    A.Alergia, 
    P.NomedoProduto
FROM 
    MoradorDeRua MR
LEFT JOIN
    Alergias A
ON
    MR.CPF = A.MoradorDeRua
LEFT JOIN
    FornecimentoProduto F
ON
    MR.CPF = F.MoradorDeRua
LEFT JOIN
    Produto P
ON
    F.Produto = P.id

/*  Consultar os produtos fornecidos aos moradores de rua para checar se houve recebimento
    de itens que podem causar reação alérgica
*/
SELECT
    MR.CPF, 
    MR.Nome, 
    A.Alergia, 
    P.NomedoProduto,
    H.ComposicaoQuimica
FROM
    MoradorDeRua MR
LEFT JOIN
    Alergias A
ON
    MR.CPF = A.MoradorDeRua
LEFT JOIN
    FornecimentoProduto F
ON
    MR.CPF = F.MoradorDeRua
LEFT JOIN
    Produto P
ON
    F.Produto = P.id
LEFT JOIN
    Higiene H
ON
    H.Produto = P.id


/*Quanto cada Doador doou ao todo para cada Instituicao*/
SELECT Doador, Instituicao, SUM(Montante) as ValorTotal
    FROM DoacaoFinanceira WHERE Montante>=0
    GROUP BY Doador, Instituicao
    ORDER BY Doador;

/*Atendimento x Consulta - Data (Oportunidade)*/
SELECT 
    Aten.MoradorDeRua as CPF,
    M.Nome, 
    Aten.DataAtendimento as AtenData, 
    Con.DataConsuta as ConData,
    TRUNC(Aten.DataAtendimento - Con.DataConsuta) AS Dias_Corridos
    FROM
        MoradorDeRua M
    JOIN
        Atendimento Aten
    ON
        M.CPF = Aten.MoradorDeRua
    JOIN    
        Consulta Con
    ON
        Aten.MoradorDeRua = Con.MoradorDeRua
    WHERE
        Aten.NomeAtendimento = 'OPORTUNIDADE';


/*Atendimento x Consulta - Data (Servico)*/
SELECT 
    Aten.MoradorDeRua as CPF,
    M.Nome,
    Aten.DataAtendimento as Data_Atendimento, 
    Con.DataConsuta as Data_Consulta, 
    Aten.NomeAtendimento as Nome_Atendimento,
    TRUNC(Aten.DataAtendimento - Con.DataConsuta) AS Dias_Corridos
    FROM
        MoradorDeRua M
    JOIN
        Atendimento Aten
    ON
        M.CPF = Aten.MoradorDeRua 
    JOIN    
        Consulta Con
    ON
        Aten.MoradorDeRua = Con.MoradorDeRua
    WHERE
        Aten.NomeAtendimento <> 'OPORTUNIDADE'
    ORDER BY 
        Dias_Corridos DESC;
    
        
    

