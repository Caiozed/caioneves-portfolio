CarrierWave.configure do |config|
config.fog_credentials = {

    :provider                         => 'Google',
    :google_storage_access_key_id     => ENV["GC_ACCESS_KEY"],
    :google_storage_secret_access_key => ENV["GC_SECRET_KEY"]

    }
    
    config.fog_directory = 'portfolio-images'
end