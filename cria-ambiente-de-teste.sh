#!/bin/bash

set -ex

# Este script assume que você já tenha instalado o Azure CLI
# e que já foi efetuado o login com az login
# e sua subscrição ajustada com az account set --subscription <subscription-id>
#
# Para visualizar a lista de assinaturas disponíveis para seu usuário basta usar o comando:
# az account list -o table
#
# Para visualizar a assinatura em que se encontra no momento basta usar o comando:
# az account show -o table
#

# variáveis para o funcionamento do script
# os valores aqui são hipotéticos
RESOURCE_GROUP=demo-fct-sql
LOCATION=eastus
DB_USER=seuusername
DB_PASSWORD=seupassword
DB_NAME=sqldbapidemo

# cria resource group
az group create \
  --name $RESOURCE_GROUP \
  --location $LOCATION

# cria o storage account
az storage account create \
  -n fctsqlstorage \
  -g $RESOURCE_GROUP \
  --kind StorageV2 \
  --sku Standard_LRS

# cria function app
az functionapp create \
  -g $RESOURCE_GROUP \
  -n fctsqlapi \
  -s fctsqlstorage \
  --consumption-plan-location $LOCATION \
  --functions-version 3

# cria o sql server
az sql server create \
  --location $LOCATION \
  --resource-group $RESOURCE_GROUP \
  -n $DB_NAME \
  -u $DB_USER \
  -p $DB_PASSWORD

# criar o synapse pelo portal e usar o $DB_NAME como server
#
# https://docs.microsoft.com/en-us/azure/synapse-analytics/sql-data-warehouse/create-data-warehouse-portal