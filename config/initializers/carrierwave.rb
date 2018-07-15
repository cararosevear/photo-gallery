# config/initializers/carrierwave.rb*

 #AWS Credentials Using Environment Variables ( set for windows / create for Unix-based )
 
require 'carrierwave/orm/activerecord'
require 'fog/aws'
  CarrierWave.configure do |config|
	  config.fog_provider = 'fog/aws'
	  config.fog_credentials = {
		  provider:              'AWS',
		  aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],    #set AWS_ACCESS_KEY_ID=aws_access_key_id   
		  aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'], #set AWS_SECRET_ACCESS_KEY=aws_secret_access_key
		  region:                ENV['AWS_REGION'], #set AWS_REGION=aws_region
	  }
	  config.fog_directory  = ENV['AWS_BUCKET']' #set AWS_BUCKET=main bucket to access
end
 