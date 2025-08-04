# 🖥️ Projeto SQL - Informática

Este repositório contém um conjunto de scripts SQL utilizados para aprendizado e prática de manipulação de dados em um banco de dados de uma loja de informática.

## 🧱 Banco de Dados

O banco de dados utilizado neste projeto se chama `informatica`, com foco na tabela `cliente`.

## 📂 Estrutura dos Scripts

| Script                          | Descrição                                                                 |
|---------------------------------|---------------------------------------------------------------------------|
| `01_criando_tabelas.sql`        | Criação da tabela `cliente` com suas colunas e restrições.               |
| `02_insercao_dados.sql`         | Inserção de registros na tabela `cliente`.                               |
| `03_atualizacao_dados.sql`      | Atualizações de dados com uso de `UPDATE`, operadores e condições.       |
| `04_consultas.sql`              | Seleções de dados com `SELECT`, filtros, ordenações e limites.           |
| `05_delete_dados.sql`           | Exclusão de registros e da tabela `cliente`.                             |
| `06_condicoes_logicas.sql`      | Exemplos com operadores lógicos `AND`, `OR`, `NOT`.                      |
| `07_between_in_like.sql`        | Filtros com `BETWEEN`, `IN` e `LIKE`.                                    |
| `08_condicional_if_case.sql`    | Uso de `IF`, `CASE` e categorias condicionais com base no limite de crédito. |
| `09_tratamento_nulos.sql`       | Tratamento de valores `NULL`, `NOT NULL`, `IFNULL`, `COALESCE` e `TRIM`. |

## 🛠️ Requisitos

- MySQL ou MariaDB instalado.
- Ferramenta cliente para execução dos scripts, como:
  - MySQL Workbench
  - DBeaver
  - HeidiSQL
  - Linha de comando (`mysql`)

## 🚀 Como usar

1. Crie o banco de dados:

```sql
CREATE DATABASE informatica;
USE informatica;
```

2. Execute os scripts na ordem sugerida (01 a 09) para simular um fluxo completo de criação, inserção, manipulação e análise de dados.

## 📚 Finalidade

Este repositório foi desenvolvido como parte do curso de **Análise de Dados - EBAC**, com foco na prática de SQL aplicada a cenários reais de negócio.

---

📌 **Autor**: Victor Bandeira  
📆 **Data de criação**: Agosto de 2025
