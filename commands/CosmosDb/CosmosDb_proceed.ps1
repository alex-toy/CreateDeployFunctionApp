"###############################################################"
"Now running : " + $MyInvocation.MyCommand.Path
"###############################################################"


################################################################
"CREATE A COSMOS DATABASE :"

az cosmosdb mongodb database create `
    --account-name $CDBDatabaseAccount `
    --name $CDBName `
    --resource-group $RGName `
    --throughput $CDBThroughput


################################################################
"GET KEYS : "

# Get IP address
$file = '.\commands\CosmosDb\keys.json'
az cosmosdb keys list `
    --name $CDBDatabaseAccount `
    --resource-group $RGName | Out-File $file

$json = Get-Content $file -Raw | ConvertFrom-Json 

$Global:CDBKeys = $json.primaryMasterKey
"CosmosDB keys : " + $CDBKeys



################################################################
"GET CONNECTION STRINGS :  "

# Get IP address
$file = '.\commands\CosmosDb\connectionstrings.json'
az cosmosdb keys list `
    --name $CDBDatabaseAccount `
    --resource-group $RGName `
    --type connection-strings | Out-File $file

$json = Get-Content $file -Raw | ConvertFrom-Json 

$Global:CDBConnectionStrings = $json.connectionStrings[0].connectionString
"CosmosDB Connection strings : " + $CDBConnectionStrings

