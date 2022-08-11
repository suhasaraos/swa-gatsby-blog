param location string
param resourceToken string
param tags object

resource swa 'Microsoft.Web/staticSites@2021-01-01' = {
  name: 'swa-${resourceToken}'
  location: location
  tags: union(tags, {
      'azd-service-name': 'web'
    })
  sku: {
    name: 'Free'
    tier: 'Free'
  }
  properties: {
  }
}

output WEB_URI string = 'https://${swa.properties.defaultHostname}'
