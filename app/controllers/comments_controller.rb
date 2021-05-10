class CommentsController < ApplicationController

    def create
        @comment = Comment.new(comment_params)
        @comment.user_id = current_user.id

        if @comment.save
            @comments = Comment.where(article_id: @comment.article_id)
            respond_to do |format|
                format.js
            end
        end    
    end

    private

    def comment_params
      params.require(:comment).permit(:body, :article_id)
    end
end
