class MemosController < ApplicationController
  before_action :set_categories, only: [:index, :new, :edit]
  
  PER_PAGE = 15

  def index
    @memos = Memo.all.order(created_at: :desc).page(params[:page]).per(12)
  end

  def new
    @memo = Memo.new
  end

  def create
    Memo.create(memo_params)
    redirect_to "/memos", notice: "投稿しました"
  end

  def edit
    @memo = Memo.find(params[:id])
  end

  def update
    memo = Memo.find(params[:id])
    memo.update(memo_params)
    redirect_to "/memos", notice: "更新しました"
  end

  def destroy
    memo = Memo.find(params[:id])
    memo.destroy
    redirect_to root_path, alert: "削除しました"
  end

  private

  def set_categories
    @categories = Category.all
  end

  def memo_params
    params.require(:memo).permit(:title, :body, :category_id)
  end
end
