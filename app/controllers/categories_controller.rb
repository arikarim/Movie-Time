class CategoriesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @categories = Category.all.limit(5)
    @nav_categories = Category.all.limit(7)
    @articles = Article.all
  end

  def show
    @category_articles = Article.where('category_id = ?', params[:id]).paginate(page: params[:page],
                                                                                per_page: 4).order(created_at: :desc)
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to root_path
      flash[:notice] = 'category created'
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
