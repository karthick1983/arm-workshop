Connect-AzAccount
Get-AzSubscription
<#
Connect-AzAccount -SubscriptionId d4204e47-81f9-41b3-afb4-080fba
Connect-AzAccount -SubscriptionId 4f581933-fd23-403b-b044-47b240d4b6cb
#>
Get-AzResourceProvider | Select-Object ProviderNamespace, registrationstate, ResourceTypes, Locations
Get-AzResourceProvider -ListAvailable | Select-Object ProviderNamespace,registrationstate,ResourceTypes,Locations
Get-AzResourceGroup -Name *poc
New-AzResourceGroupDeployment -ResourceGroupName "Test" -Template

Select-AzSubscription -Subscription KAR_IAA_DEV

Get-AzADUser -UserPrincipalName 'kjayavelu@iaai.com'
Get-AzADUser -StartsWith k

Get-AzADGroup -DisplayName DBA_AzureSQL_Monitoring # eeb16bf6-29b6-452b-9deb-2aa77ab305c4
Get-AzADGroup -DisplayNameStartsWith DBA | Select-Object DisplayName,Id,ObjectType,SecurityEnabled

Get-AzTenant # 3b6087d8-56a6-495b-9bdb-bfef42ff02b4

####################################
New-AzResourceGroupDeployment -Name SQLTemplate -ResourceGroupName "db-poc" -TemplateFile .\SQLServerTemplate.json
New-AzResourceGroupDeployment -Name "DBA_AzureSQLTemplate" -ResourceGroupName "RG-VCC-DATA-DEV-CUS" -TemplateFile .\SQLServerTemplate.json


