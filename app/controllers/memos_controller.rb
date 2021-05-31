class MemosController < ApplicationController
  before_action :set_categories, only: [:index, :new, :edit]

  def index
    @memos = Memo.all
  end

  def new
    @memo = Memo.new
  end

  def create
    Memo.create(memo_params)
    redirect_to "/memos"
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    memo = Memo.find(params[:id])
    memo.update(memo_params)
    redirect_to "/memos"
  end

  def destroy
    memo = Memo.find(params[:id])
    memo.destroy
    redirect_to "/memos"
  end

  private

  def set_categories
    @categories = Category.all
  end

  def memo_params
    params.require(:memo).permit(:title, :body, :category_id)
  end
end
