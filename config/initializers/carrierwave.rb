CarrierWave.configure do |config|
  config.storage                             = :gcloud
  config.gcloud_bucket                       = 'portfolio-images'
  config.gcloud_bucket_is_public             = true
  config.gcloud_authenticated_url_expiration = 600
  
  config.gcloud_attributes = {
    expires: 600
  }
  
  config.gcloud_credentials = {
    gcloud_project: 'caioneves-portfolio',
    gcloud_keyfile: 'caioneves-portfolio-784c95f50285.json'
  }
end