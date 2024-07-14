



    create or replace table `dw-with-mordern-data-stacks`.`gold`.`empregos_jaragua_do_sul`

  (
    id int,
    nome_da_vaga string,
    nome_da_empresa string,
    data_publicada date,
    numero_de_vagas string,
    quantidade_vagas int,
    senioridade string,
    formato_disponibilidade string,
    area_de_atuacao string,
    cidade string,
    regiao string,
    logo_da_empresa string,
    saber_mais string,
    created_at timestamp,

    primary key (id) not enforced
    )





    OPTIONS()
    as (

    select id, nome_da_vaga, nome_da_empresa, data_publicada, numero_de_vagas, quantidade_vagas, senioridade, formato_disponibilidade, area_de_atuacao, cidade, regiao, logo_da_empresa, saber_mais, created_at
    from (



with

empregos_jaragua_do_sul as (

    select

        id,
        nome_da_vaga,
        nome_da_empresa,
        PARSE_DATE('%d/%m/%Y', data_publicada) as data_publicada,
        numero_de_vagas,
        quantidade_vagas,
        senioridade,
        formato_disponibilidade,
        area_de_atuacao,
        cidade,
        regiao,
        logo_da_empresa,
        saber_mais,
        created_at

    from `dw-with-mordern-data-stacks`.`silver`.`silver_empregos_jaragua_do_sul`

)


select * from empregos_jaragua_do_sul
    ) as model_subq
    );
