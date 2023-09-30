class PhotoGramsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
    before_action :set_blog_post, only: [:edit, :update, :destroy]
    def index
        @photo_grams = PhotoGram.all
    end

    def show
        @photo_gram = PhotoGram.find(params[:id])
    end
    def new
        @photo_gram = PhotoGram.new
    end

    def create
        @photo_gram = current_user.photo_grams.build(photo_gram_params)
        if @photo_gram.save
            redirect_to @photo_gram
        else
            render :new
        end

    end

    def edit
        
    end

    def update
        if @photo_gram.update(photo_gram_params)
            redirect_to @photo_gram
        else
            render :edit
        end
    end
    def destroy
        @photo_gram.destroy
        redirect_to photo_gram_url
    end

    private

    def set_photo_gram
        @photo_gram = current_user.photo_grams.find(params[:id])
    end

    
    def photo_gram_params
        params.require(:photo_gram).permit(:title)
    end
      

    
end
