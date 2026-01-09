## Camada Gold

A camada Gold representa a **zona de consumo** do pipeline de dados.
Os dados nesta camada estão organizados, modelados e prontos para uso direto
em ferramentas analíticas e de BI, sem necessidade de transformações adicionais.

As tabelas Gold foram projetadas com **granularidade explícita**, **responsabilidade única**
e foco em **consumo analítico**, seguindo boas práticas de Engenharia de Dados.

---

## Visão Geral das Tabelas Gold

A camada Gold é composta por **três pipelines independentes**, cada um atendendo
a um tipo específico de análise de negócio.

| Tabela | Finalidade | Granularidade |
|------|-----------|--------------|
| `gold.department_kpis` | Desempenho organizacional | Departamento + Cargo |
| `gold.employee_productivity_metrics` | Produtividade e eficiência | Funcionário |
| `gold.employee_retention_analysis` | Retenção e satisfação | Funcionário |

---

## GOLD 1 — Desempenho Organizacional

**Tabela:** `gold.department_kpis`  
**Fonte:** `silver.employee_performance`

### Granularidade
- Uma linha por **departamento + cargo (job_title)**

### Objetivo
Fornecer uma visão executiva e comparável do desempenho organizacional,
permitindo análises macro entre áreas e funções.

### Campos Principais
- `department`
- `job_title`
- `total_employees`
- `avg_performance_score`
- `avg_monthly_salary`
- `avg_years_at_company`
- `avg_training_hours`
- `avg_employee_satisfaction_score`

### Características
- Métricas agregadas e estáveis
- Sem dados individuais
- Sem lógica temporal complexa

**Uso típico:** dashboards executivos, rankings, comparações entre áreas.

---

## GOLD 2 — Produtividade e Eficiência

**Tabela:** `gold.employee_productivity_metrics`  
**Fonte:** `silver.employee_performance`

### Granularidade
- Uma linha por **funcionário**

### Objetivo
Permitir análises operacionais de esforço, carga de trabalho e eficiência,
mantendo o nível individual para correlações e análises comparativas.

### Campos Principais
- `employee_id`
- `department`
- `job_title`
- `work_hours_per_week`
- `projects_handled`
- `overtime_hours`
- `training_hours`
- `sick_days`
- `performance_score`

### Características
- Sem métricas de remuneração
- Sem percepção subjetiva (satisfação)
- Foco em esforço e entrega

**Uso típico:** análises operacionais, produtividade relativa, dispersões e correlações.

---

## GOLD 3 — Retenção e Satisfação

**Tabela:** `gold.employee_retention_analysis`  
**Fonte:** `silver.employee_performance`

### Granularidade
- Uma linha por **funcionário**

### Objetivo
Analisar fatores relacionados à permanência, engajamento e risco de saída
dos funcionários, sem misturar métricas operacionais.

### Campos Principais
- `employee_id`
- `department`
- `job_title`
- `years_at_company`
- `resigned`
- `employee_satisfaction_score`
- `promotions`
- `training_hours`

### Características
- Foco em churn e engajamento
- Sem agregações por área
- Sem métricas de produtividade ou salário

**Uso típico:** análises de retenção, churn, satisfação e correlações simples.

---

## Observações de Arquitetura

- Cada tabela Gold possui **propósito único**
- Não há sobreposição de responsabilidades entre pipelines
- Todas as tabelas são consumíveis diretamente por ferramentas de BI
- Transformações analíticas complexas ficam fora do BI e dentro do pipeline


