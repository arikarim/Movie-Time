class ArticlesController < ApplicationController
  before_action :authenticate_user!
  include ArticlesHelper
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
    @subjects = Category.all
    @category_options = Category.all.map { |cate| [cate.name, cate.id] }
  end

  def create
    @article = current_user.articles.build(article_params)
    if @article.save
      redirect_to root_path
      flash[:notice] = 'Your Movie article created!'
    else
      render :new
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :text, :image, :category_id)
  end
end
