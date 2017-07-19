class DrinksController < ApplicationController

    def index
        @drinks = Drink.all
    end
    
    def show
        @drink = Drink.find(params[:id])
    end

    def new
        # @drink = Drink.new
        @drink = current_user.drinks.build
    end

    def create
        # render plain: params[:drink].inspect
        # @drink = Drink.new(drink_params)
        @drink = current_user.drinks.build(drink_params)
        if @drink.save
            redirect_to @drink
        else
            render 'new'
        end
    end

    def edit
        @drink = Drink.find(params[:id])
    end

    def update
        @drink = Drink.find(params[:id])
            if @drink.update(drink_params)
                redirect_to @drink
            else
                render 'edit'
            end
    end

    def destroy
        @drink = Drink.find(params[:id])
        @drink.destroy
        redirect_to drinks_path
    end
    

    private
    def drink_params
        params.require(:drink).permit(:name, :description, :drinkimage1)
    end
    
end
