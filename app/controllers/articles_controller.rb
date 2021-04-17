class ArticlesController < ApplicationController
    def show

        @article = Article.find(params[:id])
    end
        #name the @articles variable whatever you want
    def index
        @articles = Article.all
    end

    def new
        @article = Article.new 
        # having this instance variable allows new.html.erb form to be displayed and this line <% if @article.errors.full.. is gonna be empty and let the form be rendered
        # otherwise @article.errors.full.. would be nil
    end

    def create 
        #require the top level key of article and permit title & desc from there 
        #to be used to create this Article object/instance variable here
        @article = Article.new(params.require(:article).permit(:title, :description))
        if  @article.save
            redirect_to @article
            flash[:notice] = "Article was successfully created!"
        #Once the flash helper has the key of 'notice' which has value of 'Article was created successfully' via the create action,
        #we can use this helper in the views (upon the redirect) to display the message to the user. Go to application.html.erb
        else
            render 'new'
        end
    end
end

