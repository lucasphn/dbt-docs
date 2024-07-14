


with

source as (

    select

        id,
        uf,
        cpf,
        rua,
        nome,
        email,
        bairro,
        cidade,
        numero,
        telefone,
        created_at,
        data_nascimento


    from `dw-with-mordern-data-stacks`.`bronze`.`bronze_cadastro_cliente`
)

select * from source
