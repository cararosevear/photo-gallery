class PhotosController < ApplicationController
  require 'aws-sdk-s3'  # v3: require 'aws-sdk'
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  
  require 'exifr'
  require 'exifr/tiff'
  require 'exifr/jpeg'
  
  # GET /photos
  # GET /photos.json  
 def index
       #Aws.use_bundled_cert!
	   #s3 = Aws::S3::Client.new
	   # yields one response object per API call made, this will enumerate
	   # EVERY object in the named bucket
	   #@photos= s3.list_objects(bucket: 'project-cararosevear' )
 
 
	#@photos = Photo.all
	 if params[:search]
	 	@photos = Photo.search(params[:search]).order("created_at DESC")
	 else
	 	@photos = Photo.all.order("created_at DESC")
	 end

  end
 
  
  # GET /photos/1
  # GET /photos/1.json
  def show
 
  end

  # GET /photos/new
  def new
    @photo = Photo.new
  end

  # GET /photos/1/edit
  def edit
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(photo_params)

    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo, notice: 'Photo was successfully created.' }
        format.json { render :show, status: :created, location: @photo }
      else
        format.html { render :new }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to @photo, notice: 'Photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to photos_url, notice: 'Photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = Photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:name, :description, :image, :user_id, :remove_image, :image_cache)
    end  
	
	 # Get the image metadat before posting in show.
	def get_exifr
	end
end
