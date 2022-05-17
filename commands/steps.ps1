################################################################
"Admin :"

$Global:Subscription = "alexeisubscription"
$Global:Subscription = "Azure subscription 1"
"Subscription : " + $Subscription



################################################################
"resource Group :"

#southcentralus centralus francecentral westus2 eastus
$Global:RGLocation = "eastus"
$Global:RGName = "cosmosdb-rg"



#######################################################################
# Next step :

az group create --name $RGName --location $RGLocation

."commands\ResourceGroup\ResourceGroup_create.ps1"

."commands\CosmosDb\CosmosDb_create.ps1"

."commands\CosmosDb\CosmosDb_proceed.ps1"

."commands\StorageAccount\StorageAccount_create.ps1"

."commands\FunctionApp\FA_create.ps1"