# Assuming the project directory name is LocalAzureFuncProject
$root = $pwd
Set-Location app

func init notesApp --python
Set-Location notesApp
func new --name getNotes --template "HTTP trigger" --authlevel "anonymous"
func new --name getNote --template "HTTP trigger" --authlevel "anonymous"

# View the list of available templates 
# func templates list -l python

Set-Location $root