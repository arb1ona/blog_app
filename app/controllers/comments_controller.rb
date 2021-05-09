class CommentsController < ApplicationController

    def create
        @comment = Comment.new(comment_params)
        @comment.user_id = current_user.id

        respond_to do |format|
            format.js {
                if @comment.save
                    @comments = Comment.where(article_id: @comment.article_id)
                    render "comments/create"
                else
                    #unable to save
                end
            }
        end    
    end

    private

    def comment_params
      params.require(:comment).permit(:body, :article_id)
    end
end
