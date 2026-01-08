## Camada Silver

A camada Silver representa a etapa de tratamento e padronização dos dados ingeridos na camada Bronze.
Nesta fase, os dados passam a ter tipagem consistente, nomenclatura padronizada e filtros básicos,
tornando-se adequados para uso analítico e modelagem.

A transformação é executada em ambiente Databricks, utilizando SQL sobre tabelas Delta.
Os notebooks são versionados no GitHub como artefatos de pipeline e não são executáveis fora do ambiente distribuído.

## Fonte de Dados

- Origem: Camada Bronze
- Tabela de entrada: `bronze.employee_performance_raw`
- Formato: Delta Lake
- Volume aproximado: 100.000 registros

## Objetivo da Camada Silver

- Padronizar tipos de dados (inteiros, datas, booleanos e numéricos)
- Normalizar nomes de colunas para padrão analítico (`snake_case`)
- Eliminar registros inválidos para consumo analítico
- Preparar os dados para agregações e visões finais na camada Gold

## Descrição da Implementação

A tabela `silver.employee_performance` é criada a partir da tabela bruta da camada Bronze,
aplicando as seguintes transformações:

- Casting explícito de tipos para garantir consistência semântica
- Renomeação de colunas para padrão analítico
- Conversão de campos de data e booleanos
- Filtro de integridade removendo registros com `Employee_ID` nulo

Não são aplicadas regras de negócio complexas, agregações ou métricas nesta etapa.

## Resultado

- Schema: `silver`
- Tabela final: `silver.employee_performance`
- Dados limpos, tipados e prontos para validações adicionais, modelagem e consumo analítico
