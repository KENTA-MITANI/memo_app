class MemosController < ApplicationController
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

  def destroy
    memo = Memo.find(params[:id])
    memo.destroy
    redirect_to "/memos"
  end

  private

  def memo_params
    params.require(:memo).permit(:title, :body)
  end
end
