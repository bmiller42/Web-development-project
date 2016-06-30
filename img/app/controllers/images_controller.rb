class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  # GET /images
  def index
    
    if current_user
        @my_images = current_user.images
        @my_private_images = current_user.image_user.map {|image_user| image_user.image}
    else
        @my_images = nil
        @my_private_images = nil
    end
    @public = Image.all
    @pulic = @public.map {|image| !image.private}
    if current_user
        @public = @public.select {|image| image.user_id != current_user.id}
    end
    #@images = Image.all
  end

  # GET /images/1
  def show
      @eligible_users = @image.is_eligible
      @current_user_access = @image.current_user_access
      @tag = @image.tags.new
      @image_user = @image.image_users.new
      @owned_by_user = (@image.user == current_user)
      @list_of_users = @image.already_added
      @all_users = @image.all_users
  end

  # GET /images/new
  def new
    @image = Image.new
  end

  # GET /images/1/edit
  def edit
  end

  # POST /images
  # POST /images.json
  def create
    @image = Image.new(image_params)
    @image.generate_filename  # a function you write to generate a random filename and put it in the images "filename" variable
    @image.user = current_user
    @uploaded_io = params[:image][:uploaded_file]
    File.open(Rails.root.join('public', 'images', @image.filename), 'wb') do |file|
        file.write(@uploaded_io.read)
    end

    if @image.save
        redirect_to @image, notice: 'Image was successfully created.'
    else
        render :new
    end

    #if @image.save
        #redirect_to @image, notice: 'Image was successfully created.'
    #else
        #render :new
    #end
  end

  # PATCH/PUT /images/1
  def update
    if @image.update(image_params)
        redirect_to @image, notice: 'Image was successfully updated.'
    else
        render :edit
    end
  end

  # DELETE /images/1
  # DELETE /images/1.json
  def destroy
    @image.destroy
    redirect_to images_url, notice: 'Image was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def image_params
      params.require(:image).permit(:filename, :private, :user_id, :tag_id)
    end


end
