-- Use the `ref` function to select from other models

select *
from `dw-with-mordern-data-stacks`.`bronze`.`my_first_dbt_model`
where id = 1