# dotnetcore-function-synapse-demo

Exemplo de uso de Azure Functions com SQL DB, DW ou Azure Synapse Analytics.

Shell script para a criação dos recursos via Azure CLI.
No momento a criação do Azure Synapse Analytics não é possível via CLI.

Há um script SQL com alguns dados fictícios representando os campos consultados na tabela Clientes.

O Exemplo ilustra uma Function App com uma API (HttpTrigger) que efetua consultas em uma tabela, com alguns campos em query string servindo de where clause, use este exemplo apenas para quickstart e aprendizado.
