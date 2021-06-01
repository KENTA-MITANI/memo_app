require "csv"

CSV.generate do |csv|
  csv_column_names = %w(Title Body Category_id)
  csv << csv_column_names
  @memos.each do |memo|
    csv_column_values = [
      memo.title,
      user.body,
      user.category_id,
    ]
    csv << csv_column_values
  end
end
