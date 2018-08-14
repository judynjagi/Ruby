class ArticlesController < ApplicationController
  def new
    @article = Article.new
    @article.save
    # redirect_to @article
  end

  def create
    render plain: params[:article].inspect
  end

  def show
    render plain: params[:article].inspect
  end

  private
  def article_params
    params.require(:article).permit(:title, :text)
  end
end
