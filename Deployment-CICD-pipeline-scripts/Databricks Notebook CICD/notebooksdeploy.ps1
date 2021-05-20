# Upload a notebook to Azure Databricks
# Docs at https://docs.microsoft.com/en-us/azure/databricks/dev-tools/api/latest/workspace#--import


$fileName = "$(System.DefaultWorkingDirectory)/_Build walmart notebooks pipeline/walmartprocessingnotebook/WalmartSales-dataprocessing-dev.py"
$newNotebookName = "WalmartSales-dataprocessing-qa"
# Get our secret from the variable
$Secret = "Bearer " + "$(databricksToken)"

# Set the URI of the workspace and the API endpoint
$Uri = "https://adb-5162940301756852.12.azuredatabricks.net/api/2.0/workspace/import"

# Open and import the notebook
$BinaryContents = [System.IO.File]::ReadAllBytes($fileName)
$EncodedContents = [System.Convert]::ToBase64String($BinaryContents)

$Body = @{
    content = "$EncodedContents"
    language = "PYTHON"
    overwrite = $true
    format = "SOURCE"
    path= "/Users/bsathyamur@gmail.com/" + "$newNotebookName"
}

#Convert body to JSON
$BodyText = $Body | ConvertTo-Json

$headers = @{
    Authorization = $Secret
}

Invoke-RestMethod -Uri $uri -Method Post -Headers $headers -Body $BodyText
