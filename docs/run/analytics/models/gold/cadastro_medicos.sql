



    create or replace table `dw-with-mordern-data-stacks`.`gold`.`cadastro_medicos`

  (
    id int,
    nome string,
    area_de_atuacao string,
    criado_em timestamp,

    primary key (id) not enforced
    )





    OPTIONS()
    as (

    select id, nome, area_de_atuacao, criado_em
    from (



with

cadastro_medico as (

    select

        id,
        nome,
        area_atuacao as area_de_atuacao,
        created_at as criado_em


    from `dw-with-mordern-data-stacks`.`silver`.`silver_cadastro_medico`

)

select *

from cadastro_medico
    ) as model_subq
    );
