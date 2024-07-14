


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
