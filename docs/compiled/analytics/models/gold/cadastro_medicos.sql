


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
