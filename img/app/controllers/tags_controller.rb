class TagsController < ApplicationController
  before_action :set_tag, only: [:show, :edit, :update, :destroy]

  # GET /tags
  # GET /tags.json
  def index
    @tags = Tag.all
  end

  # GET /tags/1
  # GET /tags/1.json
  def show
  end

  # GET /tags/new
  def new
    @tag = Tag.new
  end

  # GET /tags/1/edit
  def edit
  end

  # POST /tags
  # POST /tags.json
  def create
    @tag = Tag.new(tag_params)
    @image = Image.find params[:image_id]
    @tag.image = @image
    
    if @tag.save
      redirect_to @image, notice: 'Tag was successfully created.'
    else 
      redirect_to @image, notice: 'Tag was NOT successfully created.'
    end
  end

  # PATCH/PUT /tags/1
  # PATCH/PUT /tags/1.json
  def update
    if @tag.update(tag_params)
      redirect_to @tag.image, notice: 'Tag was successfully updated.'
    else
      redirect_to @tag.image, notice: 'Tag was NOT successfully updated.'
    end
  end

  # DELETE /tags/1
  # DELETE /tags/1.json
  def destroy
    @tag.destroy
    redirect_to @tag.image, notice: 'Tag was successfully destroyed.' 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tag
      @tag = Tag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tag_params
      params.require(:tag).permit(:str)
    end
end
