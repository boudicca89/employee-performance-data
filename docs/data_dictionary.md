# Dicionário de Dados — Camada Bronze

Este documento descreve os campos do dataset original
ingerido na camada Bronze, sem qualquer tipo de transformação
ou padronização.

Fonte: Google Sheets (https://docs.google.com/spreadsheets/d/e/2PACX-1vTNxilCRLvm1LjAOgAp-75JDesfI9wfwhWk_lajIvJrf63ojikGFe26EnwFoeX5Vp9J_1ow4ieNwm__/pubhtml)

## Tabela: employee_performance_raw

| Coluna                         | Descrição                                                                 |
|--------------------------------|---------------------------------------------------------------------------|
| employee_id                    | Identificador único do funcionário                                        |
| department                     | Departamento ao qual o funcionário pertence                               |
| gender                         | Gênero informado do funcionário                                           |
| age                            | Idade do funcionário                                                      |
| job_title                      | Cargo ocupado pelo funcionário                                            |
| hire_date                      | Data de contratação                                                       |
| years_at_company               | Tempo de empresa em anos                                                   |
| education_level                | Nível educacional                                                         |
| performance_score              | Avaliação de desempenho (escala 1 a 5)                                    |
| monthly_salary                 | Salário mensal em dólares                                                 |
| work_hours_per_week            | Horas trabalhadas por semana                                              |
| projects_handled               | Quantidade de projetos atribuídos                                         |
| overtime_hours                 | Horas extras acumuladas                                                   |
| sick_days                      | Dias de afastamento por doença                                            |
| remote_work_frequency          | Percentual de trabalho remoto                                             |
| team_size                      | Tamanho do time                                                           |
| training_hours                 | Horas de treinamento                                                      |
| promotions                     | Número de promoções                                                       |
| employee_satisfaction_score    | Nível de satisfação do funcionário (1 a 5)                                |
| resigned                       | Indica se o funcionário se desligou da empresa (true/false)               |

## Observações

- Os tipos de dados são mantidos conforme a origem.
- Inconsistências, valores inválidos ou ajustes semânticos
  serão tratados nas camadas Silver e Gold.
