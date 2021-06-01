class CategoriesController < ApplicationController
  before_action :set_categories, only: [:show]

  def show
    @category = Category.find(params[:id])

    @q = Memo.ransack(params[:q])
    @memos = @q.result.where(category_id: params[:id]).order(id: :asc).page(params[:page]).per(12)
  end

  def set_categories
    @categories = Category.all
  end
end
