az login --tenant learn.docs.microsoft.com --use-device-code 


az deployment group create  --name StorageDeployment  --resource-group learn-20d53c38-bd26-4776-877b-5cf47873b496  --template-file "storage_template.json"


az bicep build --file "storage_template.bicep"
az deployment group create \
  --name BicepDeployment \
  --resource-group learn-6ffa27ce-09fd-49b7-a850-86214d887a06 \
  --template-file "bk_temp_storage.bicep"


az bicep decompile --file "storage_template.json"

to delete the resource group use the below command

az group delete --name ExampleResourceGroup in visual studio if you are logged in with your azure credentials visual code

for login azure in visual code use the below code 

az login --tenant learn.docs.microsoft.com --use-device-code 

az ad sp create-for-rbac --name "myML" --role contributor --scopes /subscriptions/45e07b8f-d759-4946-afe0-ae82da1201f2/resourceGroups/testresourcegroupbk --sdk-auth
az ad sp create-for-rbac --name "myML" --role contributor --scopes /subscriptions/45e07b8f-d759-4946-afe0-ae82da1201f2/resourceGroups/testresourcegroupbk --sdk-auth

az deployment group create \
  --name BicepDeployment \
  --resource-group learn-6ffa27ce-09fd-49b7-a850-86214d887a06 \
  --template-file "bk_temp_storage.bicep" \
  --parameters storageAccounts_name=abkstorage

TERRAFORM 

1.terraform init
2.terraform plan -out main.tfplan
3.terraform apply "main.tfplan"

WE need to import the resource group before apply (3rd step) use below command

terraform import azurerm_resource_group.my_resource_group /subscriptions/1889f9ae-c59a-472e-a6c9-32d6d3f97d30/resourceGroups/learn-7b3237b6-80c9-413e-a437-1e5a2cea4336



  git config --global user.email "krishuk1089@outlook.com"
  git config --global user.name "balakrishna5"