

  create or replace view `dw-with-mordern-data-stacks`.`bronze`.`my_second_dbt_model`
  OPTIONS()
  as -- Use the `ref` function to select from other models

select *
from `dw-with-mordern-data-stacks`.`bronze`.`my_first_dbt_model`
where id = 1;
