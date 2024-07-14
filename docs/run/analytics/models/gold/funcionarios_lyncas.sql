



    create or replace table `dw-with-mordern-data-stacks`.`gold`.`funcionarios_lyncas`




    OPTIONS()
    as (



with

source as (

    select

    id,
    nome,
    coordenador,
    senioridade,
    classificacao,
    tipo_de_contratacao,
    area,
    indicado_por,
    genero,
    observacoes,
    telefone,
    telefone_2 as telefone_alternativo,
    CASE
        WHEN data_de_nascimento = '' OR data_de_nascimento IS NULL OR data_de_nascimento = 'None' THEN DATE '1900-01-01'
        ELSE PARSE_DATE('%m/%d/%Y', data_de_nascimento)
    END as data_de_nascimento,
    CASE
        WHEN data_aceite = '' OR data_aceite IS NULL  OR  data_aceite = 'None' THEN DATE '1900-01-01'
        ELSE PARSE_DATE('%m/%d/%Y', data_aceite)
    END as data_aceite,
    CASE
        WHEN inicio_da_jornada = '' OR inicio_da_jornada IS NULL  OR inicio_da_jornada = 'None' THEN DATE '1900-01-01'
        ELSE PARSE_DATE('%m/%d/%Y', inicio_da_jornada)
    END as inicio_da_jornada,
    CASE
        WHEN fim_da_jornada = '' OR fim_da_jornada IS NULL OR fim_da_jornada = 'None' THEN DATE '1900-01-01'
        ELSE PARSE_DATE('%m/%d/%Y', fim_da_jornada)
    END as fim_da_jornada,

    idade,
    estado,
    cidade,
    bairro,
    endereco,
    numero,
    cep,
    rg,
    cpf,
    cnpj,
    nome_da_empresa,
    tam_camiseta,
    filhos,
    quantos,
    entrevistador_rh,
    entrevistador_tecnico,
    status,
    motivo_do_status,
    motivo_da_saida,
    email,
    funcao,
    cat_pag,
    foto,
    gerente,
    age,
    tempo_de_empresa,
    tempo_de_empresa_em_dias


    from `dw-with-mordern-data-stacks`.`silver`.`silver_funcionarios_lyncas`
)


select * from source
    );
