


with

source as (

    select

        id,
        uf,
        cpf,
        rua,
        nome,
        email

    from `dw-with-mordern-data-stacks`.`bronze`.`bronze_cadastro_cliente`
)

select * from source
