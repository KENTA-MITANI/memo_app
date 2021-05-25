class MemosController < ApplicationController
  def index
  end

  def new
    @memo = Memo.new
  end

  def create
    Memo.create(memo_params)
    redirect_to "/memos"
  end

  private

  def memo_params
    params.require(:memo).permit(:title, :body)
  end
end
