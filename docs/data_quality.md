# Relatório de Qualidade de Dados — Camada Bronze

Este documento descreve a avaliação inicial de qualidade
do dataset bruto ingerido na camada Bronze, com foco em
identificação de riscos, inconsistências e pontos de atenção.

Nenhuma correção é aplicada nesta etapa.

## Dataset Avaliado
- Nome: employee_performance_raw
- Fonte: Google Sheets (dataset público)
- Volume aproximado: 100.000 registros

## Dimensões de Qualidade Avaliadas

### 1. Completude
Avaliação de campos que não deveriam conter valores nulos.

Campos críticos:
- employee_id
- department
- hire_date
- performance_score
- monthly_salary
- resigned

Status:
- Não foram identificados valores nulos na amostra inicial.
- Avaliação completa será realizada programaticamente na camada Silver.

### 2. Validade de Domínio
Verificação de valores esperados por coluna.

Exemplos de regras esperadas:
- performance_score ∈ [1, 5]
- employee_satisfaction_score ∈ [1.0, 5.0]
- age ≥ 18
- remote_work_frequency ∈ {0, 25, 50, 75, 100}
- resigned ∈ {true, false}

Risco identificado:
- Possível presença de valores fora do domínio permitido,
  a serem validados via regras automatizadas.

### 3. Consistência
Avaliação de coerência entre colunas relacionadas.

Exemplos:
- years_at_company compatível com hire_date
- overtime_hours ≥ 0
- sick_days ≥ 0

Risco identificado:
- Necessidade de validação cruzada entre datas e métricas acumuladas.

### 4. Tipagem de Dados
Observações iniciais:
- hire_date apresenta timestamp completo, podendo requerer padronização.
- monthly_salary e métricas numéricas devem ser validadas quanto a tipo e escala.

## Impacto Potencial
Dados inconsistentes ou fora de domínio podem:
- distorcer métricas de desempenho
- comprometer análises comparativas entre áreas
- afetar modelos de churn ou satisfação

## Próximos Passos
- Implementar validações automatizadas na camada Silver
  utilizando biblioteca de qualidade (ex: Great Expectations).
- Aplicar correções somente após regras formalmente definidas.
