class CategoriesController < ApplicationController
  before_action :set_categories, only: [:show]

  def show
    @category = Category.find(params[:id])
    @memos = Memo.where(category_id: params[:id])
  end

  def set_categories
    @categories = Category.all
  end
end
