# frozen_string_literal: true

class ArticlesController < ApplicationController
  # require "pry"
  before_action :set_article, only: %i[show edit update destroy]
  before_action :require_user, except: [:show, :edit] # restrict to login
  before_action :require_same_user, only: [:edit, :update, :destroy] # restrict only the owner of article can perform edit/update/delete

  def show; end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def edit; end

  def create
    @article = Article.new(params_article)
    @article.user = current_user # <--- Add this line
    if @article.save
      redirect_to @article
      # binding.pry
      flash[:notice] = 'Article was successfully created!'
    else
      render 'new'
    end
  end

  def update
    if @article.update(params_article)
      redirect_to @article
      flash[:notice] = 'Article was edited successfully!'
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

  def require_same_user
    if current_user != @article.user
      flash[:alert]= "You can only edit or delete your own article"
      redirect_to @article
    end
  end
end
