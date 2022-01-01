class SetsController < ApplicationController
    def index
        @sets = LegoSet.all
    end

    def show
        @set = LegoSet.find(params[:id])
    end

    def new
        @set = LegoSet.new
    end

    def create
        @set = LegoSet.new(lego_set_params)
        @set.image.attach(params[:set][:image])

        if @set.save
            redirect_to set_path @set
        else
            render :new
        end
    end

    private

    def lego_set_params
        params.require(:set).permit(:name, :description, :item_number, :image)
    end
end
