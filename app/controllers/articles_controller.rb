class ArticlesController < ApplicationController
include ArticlesHelper
  def index
    @article = Article.all
  end
  def show
    @article = Article.find(params[:id]) 
  end
  def new
    @article = Article.new    
  end
  def create
   @article=Article.new
   @article.title=params[:article][:title]
  @article.body = params[:article][:body]
   @article.save 
    flash.notice = "Article '#{@article.title}' has been Created!"
redirect_to article_path(@article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    flash.notice = "Article `#{@article.title}' has be Deleted!"
    redirect_to articles_path
  end
  def edit
    @article=Article.find(params[:id])
  end
  def update
    @article=Article.find(params[:id])
    @article.update(article_paramas)
    flash.notice = "Article '#{@article.title}' Updated!"

    redirect_to article_path(@article)
  end
end
