#archivo de configuracion para carriwrwave, especificando cuenta
#y API key de Rackspace para usar la nube como storage

CarrierWave.configure do |config|
  config.fog_provider = "fog/rackspace/storage"   # optional, defaults to "fog"
  config.fog_credentials = {
    provider:           'Rackspace',
    rackspace_username: 'xxxxxx',
    rackspace_api_key:  'yyyyyy',
    rackspace_region:   :ord                      # optional, defaults to :dfw
  }
  config.fog_directory = 'name_of_directory'
end
