param name string
@allowed([ 'centralus', 'eastus2', 'eastasia', 'westeurope', 'westus2' ])
param location string = 'westus2'
@allowed([ 'Free', 'Standard' ])
param sku string = 'Free'




resource swa_resource 'Microsoft.Web/staticSites@2022-03-01' = {
    name: name
    location: location
    tags: null
    properties: {
      branch: 'main'
      repositoryToken: tokenParam
      repositoryUrl: 'https://github.com/aaronpowell/aaronpowell.github.io'
      buildProperties: {
        appLocation: './'
        apiLocation: './api'
        outputLocation: './output'
      }      
    }
    sku: {
        name: sku
        size: sku
    }
}
