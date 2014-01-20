class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find_by(id: params[:id])
  end

  def new
  end

  def create
    @article = Article.new
    @article.name = params[:name]
    @article.author = params[:author]

    if @article.save
      redirect_to articles_url, notice: "Article created successfully."
    else
      render 'new'
    end
  end

  def edit
    @article = Article.find_by(id: params[:id])
  end

  def update
    @article = Article.find_by(id: params[:id])
    @article.name = params[:name]
    @article.author = params[:author]

    if @article.save
      redirect_to articles_url, notice: "Article updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find_by(id: params[:id])
    @article.destroy

    redirect_to articles_url, notice: "Article deleted."
  end
end
