var storageName = 'stg${uniqueString(resourceGroup().id)}'
var location = resourceGroup().location

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageName
  location: location
  kind: 'StorageV2'
  sku: {
      name: 'Premium_LRS'
  }
}
