class ArticlesController < ApplicationController
    def show

        @article = Article.find(params[:id])
    end
#name the @articles variable whatever you want
    def index
        @articles = Article.all
    end

    def new
        @article=Article.new
    end

    def create 
        #require the top level key of article and permit title & desc from there 
        #to be used to create this Article object/instance variable here
        @article = Article.new(params.require(:article).permit(:title, :description))
        @article.save
        redirect_to @article
    end
end

