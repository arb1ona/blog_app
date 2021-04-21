class ArticlesController < ApplicationController
    require "pry"
    before_action :set_article  , only: [:show, :edit, :update, :destroy]
    
    def show
    end
    def index
        @articles = Article.all
    end
    def new
        @article = Article.new 
    end
    def edit
    end
    def create 
        @article = Article.new(params_article)
        if  @article.save
            redirect_to @article
            binding.pry
            flash[:notice] = "Article was successfully created!"
        else
            render 'new'
        end
    end
    def update
        if @article.update(params_article)
            redirect_to @article
           flash[:notice] = "Article was edited successfully!"
        else
            render 'edit'
        end
    end
    def destroy
        @article.destroy
        redirect_to articles_path
    end

    private
    def set_article
        @article = Article.find(params[:id])
    end

    def params_article
        params.require(:article).permit(:title, :description)
    end
end

