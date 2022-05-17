"###############################################################"
"Now running : " + $MyInvocation.MyCommand.Path
"###############################################################"


################################################################
"Function App :"

$Global:FAName = "alexeifa"
# python node
$Global:FARuntime = "python"
# Linux Windows
$Global:FAOSType = "Linux"
$Global:FAConsumptionPlanLocation = "eastus"
$Global:FAFunctionVersion = 3
$Global:FAKeyName = "alexeifa"
$Global:FAKeyType = "functionKeys"


################################################################
"CREATE A FUNCTION APP :"

az functionapp create `
    --resource-group $RGName `
    --name $FAName `
    --runtime $FARuntime `
    --functions-version $FAFunctionVersion `
    --os-type $FAOSType `
    --consumption-plan-location $FAConsumptionPlanLocation `
    --functions-version 3 `
    --storage-account $SAName `
    # --plan MyPlan `



################################################################
"SET CONNECTION STRING :"

az functionapp config appsettings set `
    --name $FAName `
    --resource-group $RGName `
    --setting MyDbConnection=$CDBConnectionStrings
    # --settings "AzureWebJobsStorage=$CDBConnectionStrings"
    


################################################################
"SET KEYS :"

az functionapp keys set `
    --resource-group $RGName `
    --name $FAName `
    --key-type $FAKeyType `
    --key-name $FAKeyName `
    --key-value $CDBKeys







    