# README

 Photo gallery using Ruby for Rails.  Functionality includes: Create, List, Edit, Delete and Search.  The front end is styled using Bootstrap 4 and FontAwesome.
 
 ______________________________________________________________________________________________________________________
 
 WINDOWS 10 DEVELOPMENT:
 * ruby v 2.3.3p222 -> https://rubyinstaller.org/downloads/
 * railsinstaller-3.3.0 -> http://railsinstaller.org
    - Rails v 5.2.0
    - sqlite v 33.8.7.2

______________________________________________________________________________________________________________________

 DATABASE
  name: main (default)
  
  Table Schema for photos
    create_table "photos", force: :cascade do |t|
      t.string "name"
      t.text "description"
      t.string "image"
      t.integer "user_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
   
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

      
