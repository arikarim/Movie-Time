class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    
  end

  def new
    @article = Article.new
    @category_options = Category.all.map { |cate| [cate.name, cate.id] }
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      redirect_to @article
      flash[:notice] = 'Article created'
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :image, :category_id)
  end
end
