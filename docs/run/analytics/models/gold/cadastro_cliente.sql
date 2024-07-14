



    create or replace table `dw-with-mordern-data-stacks`.`gold`.`cadastro_cliente`

  (
    id int,
    nome string,
    data_nascimento date,
    cpf string,
    telefone string,
    email string,
    rua string,
    numero string,
    bairro string,
    cidade string,
    uf string,
    criado_em timestamp,

    primary key (id) not enforced
    )





    OPTIONS()
    as (

    select id, nome, data_nascimento, cpf, telefone, email, rua, numero, bairro, cidade, uf, criado_em
    from (



with

cadastro_cliente as (

    select

        id,
        nome,
        data_nascimento,
        cpf,
        telefone,
        email,
        rua,
        numero,
        bairro,
        cidade,
        uf,
        created_at as criado_em


    from `dw-with-mordern-data-stacks`.`silver`.`silver_cadastro_cliente`

)

select *

from cadastro_cliente
    ) as model_subq
    );
