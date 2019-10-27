class ArticlesController < ApplicationController
  def index
    @q = Article.all.order(created_at: :desc).ransack(params[:q])
    @articles = @q.result(distinct: true).page(params[:page])
  end

  def show
    @article = Article.find(params[:id])
    @contributer = User.find_by(id: @article.user_id)
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.new(article_params)
    if @article.save
      redirect_to @article, notice: "「#{@article.title}」を投稿しました。"
    else
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article, notice: "「#{@article.title}」を更新しました。"
    else
      render :edit
    end  
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to articles_url, notice: "「#{article.title}」を削除しました。"
  end

  private
    def article_params
      params.require(:article).permit(:title, :url, :comment, :count)
    end

end
