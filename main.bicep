param location string = 'eastus'

resource storageAccount 'Microsoft.Storage/storageAccounts@2022-09-01' = {
  name: 'eventdrivenstorage123'
  location: location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
}

resource functionApp 'Microsoft.Web/sites@2022-09-01' = {
  name: 'event-driven-function-app'
  location: location
  kind: 'functionapp'
  properties: {
    serverFarmId: 'example-plan'
  }
}
