class ReferencesController < ApplicationController

    def index
        @references = Reference.all
    end
    
    def show
        @reference = Reference.find(params[:id])
    end

    def new
        @reference = Reference.new
    end

    def create 
                
        @reference = Reference.new(params.require(:reference).permit(:URL, :topic, :annotation))
        @reference.datetime = @reference.created_at
        if @reference.save
            redirect_to @reference, notice: 'Reference was successfully created.'
        else
            render :new
        end
    end

    def edit 
        @reference = Reference.find(params[:id])
    end

    def update
        @reference = Reference.find(params[:id])
        if @reference.update(params.require(:reference).permit(:URL, :topic, :annotation))
            redirect_to @reference, notice: 'Reference was successfully updated.'
        else
            render :edit
        end
    end

    def destroy
        @reference = Reference.find(params[:id])
        @reference.destroy
        redirect_to references_url, notice: 'Reference was successfully destroyed.'
    end

end
