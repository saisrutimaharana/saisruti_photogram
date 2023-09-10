class PhotogramsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]

    def index
        @photograms = Photogram.all
    end
    def new
        @photogram = Photogram.new
    end

    def create
        @photogram = current_user.photograms.build(photogram_params)
        if @photogram.save
            redirect_to @photogram
        else
            render :new
        end

    end

    def show
        @photogram = Photogram.find(params[:id])
    end

    def edit
    end

    def update
        if @photogram.update(photogram_params)
            redirect_to @photogram
        else
            render :edit
        end
    end

    def photogram_params
        params.require(:photogram).permit(:caption, :image)
    end

    def destroy
        @photogram.destroy
        redirect_to photogram_url
    end
end
