class MemosController < ApplicationController
  before_action :set_categories, only: [:index, :new, :edit]
  require 'csv'

    
    

  def index
    @q = Memo.where(params[:title]).ransack(params[:q])
    @memos = @q.result.order(id: :asc).page(params[:page]).per(12)

    #csvデータ作成
    respond_to do |format|
      @memos_csv = Memo.all.order(id: :asc)
      format.html
      format.csv do |csv|
        send_posts_csv(@memos_csv)
      end
    end
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

  #csvデータ出力
  def send_posts_csv(memos)
    csv_data = CSV.generate do |csv|
      header = %w(id title body category)
      csv << header
      memos.each do |memo|
        values = [memo.id, memo.title, memo.body, memo.category.name]
        csv << values
      end
    end
    send_data(csv_data, filename: "memos_list.csv")
  end

  private

  def set_categories
    @categories = Category.all
  end

  def memo_params
    params.require(:memo).permit(:title, :body, :category_id)
  end
end
