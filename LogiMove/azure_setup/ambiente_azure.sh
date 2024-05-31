# Configuração de variáveis
RESOURCE_GROUP="LogiMoveResourceGroup"
SQL_SERVER_NAME="LogiMoveSQLServer"
SQL_DATABASE_NAME="LogiMoveDatabase"
ADMIN_USERNAME="adminlogimove"
ADMIN_PASSWORD="SenhaSegura123!"
LOCATION="brazilsouth"

# Criação do grupo de recursos
az group create --name $RESOURCE_GROUP --location $LOCATION

# Criação do servidor de banco de dados
az sql server create \
  --name $SQL_SERVER_NAME \
  --resource-group $RESOURCE_GROUP \
  --location $LOCATION \
  --admin-user $ADMIN_USERNAME \
  --admin-password $ADMIN_PASSWORD

# Criação do banco de dados SQL
az sql db create \
  --resource-group $RESOURCE_GROUP \
  --server $SQL_SERVER_NAME \
  --name $SQL_DATABASE_NAME \
  --service-objective S0

# Configuração de firewall para permitir acesso ao servidor
az sql server firewall-rule create \
  --resource-group $RESOURCE_GROUP \
  --server $SQL_SERVER_NAME \
  --name AllowMyIP \
  --start-ip-address 0.0.0.0 \
  --end-ip-address 255.255.255.255
