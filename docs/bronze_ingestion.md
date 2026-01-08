## Camada Bronze

A camada Bronze representa o ponto de entrada dos dados no pipeline.
Os dados são ingeridos sem transformações, preservando o conteúdo original para garantir
rastreabilidade, auditoria e possibilidade de reprocessamento.

A ingestão é executada em ambiente Databricks, utilizando Spark e Delta Lake.
Os notebooks são versionados no GitHub como artefatos de pipeline e não são executáveis fora do ambiente distribuído.

## Fonte de Dados

- Origem: Google Sheets (dataset público)
- Planilha: Extended_Employee_Performance_and_Productivity_Data
- Formato: CSV
- Volume aproximado: 100.000 registros
  
## Descrição da Implementação

- Leitura do dataset público diretamente do Google Sheets em formato CSV
- Conversão do DataFrame Pandas para DataFrame Spark
- Persistência dos dados no formato Delta Lake
- Criação da tabela `bronze.employee_performance_raw` no schema `bronze`

Nenhuma transformação, limpeza ou validação é aplicada nesta etapa.
