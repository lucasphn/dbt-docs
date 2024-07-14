

  create or replace view `dw-with-mordern-data-stacks`.`silver`.`silver_agenda_medica`
  OPTIONS()
  as


with

source as (

    select

        id,
        price,
        description,
        nome_medico,
        data_agendada,
        created_at

    from `dw-with-mordern-data-stacks`.`bronze`.`bronze_agenda_medica`
)

select * from source;
