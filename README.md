# Employee Performance Data 

Este repositório apresenta um pipeline de dados estruturado segundo boas práticas de Engenharia de Dados, utilizando a arquitetura Bronze–Silver–Gold para ingestão, tratamento e preparação analítica de dados.

O projeto utiliza um dataset público de desempenho de funcionários, com ingestão a partir do Google Sheets, e foi desenvolvido com foco em qualidade, governança e separação clara de responsabilidades entre as camadas de dados.

## Objetivo

Demonstrar, de forma reprodutível:

- Ingestão de dados brutos a partir de fonte externa
- Organização dos dados em camadas (Bronze, Silver e Gold)
- Aplicação de regras de limpeza e padronização
- Preparação dos dados para consumo analítico
- Construção de pipelines portáveis entre diferentes engines de processamento

## Arquitetura de Dados

- **Bronze**  
  Ingestão dos dados brutos, preservando o formato e o conteúdo original, sem transformações.

- **Silver**  
  Limpeza, padronização de tipos, tratamento de inconsistências e aplicação de regras básicas de qualidade.

- **Gold**  
  Dados agregados e organizados para análise e visualização, prontos para consumo por ferramentas de BI.

## Tecnologias e Execução

- Python
- SQL
- PySpark (Databricks)
- Google Sheets (fonte de dados)
- Jupyter / Databricks Notebooks

> Observação: embora o volume do dataset seja moderado (~100k registros), o uso de PySpark e Databricks tem caráter educacional e arquitetural, permitindo demonstrar pipelines escaláveis e portáveis para ambientes como Databricks, Snowflake ou engines SQL distribuídas.

## Estrutura do Repositório
# Employee Performance Data Pipeline

Este repositório apresenta um pipeline de dados estruturado segundo boas práticas de Engenharia de Dados, utilizando a arquitetura Bronze–Silver–Gold para ingestão, tratamento e preparação analítica de dados.

O projeto utiliza um dataset público de desempenho de funcionários, com ingestão a partir do Google Sheets, e foi desenvolvido com foco em qualidade, governança e separação clara de responsabilidades entre as camadas de dados.

employee-performance-data/
├── notebooks/
│   ├── bronze_ingestion.ipynb
│   ├── silver_cleansing.ipynb
│   └── gold_analytics.ipynb
│
├── docs/
│   ├── data_dictionary.md
│   ├── data_quality.md
│   └── architecture.md
│
├── README.md
└── .gitignore

## Objetivo

Demonstrar, de forma reprodutível:

- Ingestão de dados brutos a partir de fonte externa
- Organização dos dados em camadas (Bronze, Silver e Gold)
- Aplicação de regras de limpeza e padronização
- Preparação dos dados para consumo analítico
- Construção de pipelines portáveis entre diferentes engines de processamento

## Arquitetura de Dados

- **Bronze**  
  Ingestão dos dados brutos, preservando o formato e o conteúdo original, sem transformações.

- **Silver**  
  Limpeza, padronização de tipos, tratamento de inconsistências e aplicação de regras básicas de qualidade.

- **Gold**  
  Dados agregados e organizados para análise e visualização, prontos para consumo por ferramentas de BI.

## Tecnologias e Execução

- Python
- SQL
- PySpark (Databricks)
- Google Sheets (fonte de dados)
- Jupyter / Databricks Notebooks

> Observação: embora o volume do dataset seja moderado (~100k registros), o uso de PySpark e Databricks tem caráter educacional e arquitetural, permitindo demonstrar pipelines escaláveis e portáveis para ambientes como Databricks, Snowflake ou engines SQL distribuídas.


