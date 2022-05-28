################################################################
# Variables :

#southcentralus centralus francecentral westus2 eastus
$Global:RGLocation = "eastus"
$Global:RGName = "cosmosdb-rg"



#######################################################################
# Next step :

az group create --name $RGName --location $RGLocation

."commands\CosmosDb\CosmosDb_create.ps1"

."commands\CosmosDb\CosmosDb_proceed.ps1"

."commands\CosmosDb\CosmosDb_populate.ps1"

."commands\StorageAccount\StorageAccount_create.ps1"

."commands\StorageAccount\StorageAccount_keys.ps1"

."commands\FunctionApp\FA_create.ps1"

"then go and create local functions :"
"commands\create_local_functions.ps1"