


with

source as (

    select

    index,
    id,
    nome,
    coordenador,
    senioridade,
    classificacao,
    tipo_de_contratacao,
    area,
    indicado_por,
    genero,
    observacoes,
    telefone,
    telefone_2,
    data_de_nascimento,
    data_aceite,
    inicio_da_jornada,
    fim_da_jornada,
    idade,
    estado,
    cidade,
    bairro,
    endereco,
    numero,
    cep,
    rg,
    cpf,
    cnpj,
    nome_da_empresa,
    tam_camiseta,
    filhos,
    quantos,
    entrevistador_rh,
    entrevistador_tecnico,
    status,
    motivo_do_status,
    motivo_da_saida,
    email,
    funcao,
    cat_pag,
    foto,
    gerente,
    age,
    tempo_de_empresa,
    tempo_de_empresa_em_dias



    from `dw-with-mordern-data-stacks`.`bronze`.`bronze_cadastro_funcionarios`
)


select * from source