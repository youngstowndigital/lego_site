class SetsController < ApplicationController
    def index
        @sets = LegoSet.all
    end

    def show
        @set = LegoSet.find(params[:id])
    end
end
