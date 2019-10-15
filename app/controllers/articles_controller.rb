class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    article = Article.new(article_params)
    article.save!
    redirect_to articles_url, notice: "「#{article.title}」を投稿しました。"
  end

  def edit
  end

  private
    def article_params
      params.require(:article).permit(:title, :url, :comment, :count)
    end

end
