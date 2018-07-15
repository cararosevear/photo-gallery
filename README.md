# README

 Photo gallery using Ruby for Rails.  Functionality includes: Create, List, Edit, Delete and Search.  The front end is styled using Bootstrap 4 and FontAwesome.  The image files are stored on Amazon S3.
 ______________________________________________________________________________________________________________________
 
 REQUIRED: AWS Account with a S3 bucket and Security Credentials.
    
		    AWS_ACCESS_KEY_ID=your_aws_access_key_id   
		    AWS_SECRET_ACCESS_KEY=your_aws_secret_access_key
		    AWS_REGION=your_aws_region
      AWS_BUCKET=your_bucket_name
      
 ______________________________________________________________________________________________________________________
 
 WINDOWS 10 DEVELOPMENT:
 * ruby v 2.3.3p222 -> https://rubyinstaller.org/downloads/
 * railsinstaller-3.3.0 -> http://railsinstaller.org
    - Rails v 5.2.0
    - sqlite v 33.8.7.2

______________________________________________________________________________________________________________________

 DATABASE
  name: main (default)
  
  Tables
      - photos
   
______________________________________________________________________________________________________________________

  GEMFILE Additions/Removal
  
      # AWS  Ruby SDK V3.  Documentation here: https://aws.amazon.com/sdk-for-ruby/
      gem 'aws-sdk', '~> 3'

      # CarrierWave  used for image uploads
      gem 'carrierwave', '~> 1.0'

      # MiniMagick used to create tumnails of images during upload
      gem 'mini_magick', '~> 4.3'

      # EXIF Reader used to read image metadata  Documentation here: http://github.com/remvee/exifr/
      gem 'exifr', '~> 1.3', '>= 1.3.4'

      # Bootstrap 4
      gem 'bootstrap', '~> 4.1.1'
      gem 'jquery-rails'

      #FontAwesome styles
      gem 'font-awesome-sass', '~> 5.0.13'
      
      # REMOVED 'duktape'  Conflict on Windows development environment using Bootstrap 4 
      # See https://github.com/rails/execjs#readme for more supported runtimes
      # gem 'duktape'  

      
