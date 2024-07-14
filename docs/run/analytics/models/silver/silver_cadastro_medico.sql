

  create or replace view `dw-with-mordern-data-stacks`.`silver`.`silver_cadastro_medico`
  OPTIONS()
  as


with

source as (

    select

        id,
        nome,
        area_atuacao,
        created_at

    from `dw-with-mordern-data-stacks`.`bronze`.`bronze_cadastro_profissional`
)

select * from source;