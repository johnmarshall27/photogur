class ArticlesController < ApplicationController
  def new

  end

  def create
    @article = Article.new(params[:article])
    @article.save
    redirect_to @article
  end

  def show
    @article = Article.find(params [:id])
  end

  def article_params
    params.require(:article).permit(:title, :body)
    # reformating so that title and body are only "permitted" to be passed through
  end
end
