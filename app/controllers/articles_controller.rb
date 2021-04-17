class ArticlesController < ApplicationController
    def show

        @article = Article.find(params[:id])
    end
#name the @articles variable whatever you want
    def index
        @articles = Article.all
    end
end

