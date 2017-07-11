class CommentsController < ApplicationController
    def create
        @drink = Drink.find(params[:drink_id])
        @comment = @drink.comments.create(comment_params)
        redirect_to drink_path(@drink)
    end

    private
        def comment_params
            params.require(:comment).permit(:commenter, :commentbody)
        end
    
end
