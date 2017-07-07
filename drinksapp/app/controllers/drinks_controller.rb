class DrinksController < ApplicationController

    def show
        @drink = Drink.find(params[:id])
    end

    def new
    end

    def create
        # render plain: params[:drink].inspect
        @drink = Drink.new(drink_params)
        @drink.save
        redirect_to @drink
    end



    private
    def drink_params
        params.require(:drink).permit(:name, :description)
    end
    
end
