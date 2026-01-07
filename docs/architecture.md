# Arquitetura do Pipeline de Dados

## Visão Geral

Este projeto implementa um pipeline de dados seguindo a arquitetura
Bronze–Silver–Gold, com foco em governança, qualidade e separação
clara de responsabilidades entre as camadas.

O pipeline foi desenhado para ser portável entre diferentes engines
de processamento, como Databricks (PySpark), Snowflake (SQL) ou
ambientes analíticos baseados em SQL.

## Fonte de Dados

- Origem: Google Sheets (dataset público)
- Tipo: Dados tabulares
- Volume aproximado: ~100.000 registros
- Frequência: Atualização manual / eventual

## Camadas do Pipeline

### Bronze — Dados Brutos

Responsabilidades:
- Ingestão dos dados exatamente como fornecidos pela fonte
- Preservação do formato original
- Garantia de rastreabilidade e reprocessamento

Não permitido na Bronze:
- Limpeza
- Padronização
- Conversão de tipos
- Regras de negócio

Tecnologias possíveis:
- Pandas
- PySpark
- SQL externo (COPY / LOAD)

### Silver — Dados Tratados

Responsabilidades:
- Padronização de tipos (datas, numéricos, categóricos)
- Tratamento de valores inválidos ou inconsistentes
- Aplicação de regras básicas de qualidade
- Preparação semântica dos dados

Tecnologias possíveis:
- PySpark
- SQL
- Great Expectations / validações programáticas

### Gold — Dados Analíticos

Responsabilidades:
- Agregações
- Métricas de negócio
- Visões prontas para consumo analítico
- Dados otimizados para BI

Tecnologias possíveis:
- SQL analítico
- PySpark
- Views materializadas

## Considerações Arquiteturais

Embora o volume de dados seja moderado, o pipeline foi desenhado
com foco educacional e arquitetural, permitindo escalar para
volumes maiores sem alterações conceituais.

A separação entre ingestão, tratamento e consumo garante:
- Governança
- Reprocessamento
- Evolução do pipeline
