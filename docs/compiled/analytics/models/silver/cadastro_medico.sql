


with

source as (

    select

        id,
        nome,
        created_at

    from `dw-with-mordern-data-stacks`.`bronze`.`bronze_cadastro_profissional`
)

select * from source
