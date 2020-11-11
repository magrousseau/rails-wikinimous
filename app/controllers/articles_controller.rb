class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(task_params)
    @article.save
    redirect_to articles_path
  end

  private

  def task_params
    params.require(:article).permit(:title, :content)
  end

end
