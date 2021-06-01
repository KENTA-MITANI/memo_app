class Memo < ApplicationRecord
  belongs_to :category
  validates :title, presence: true, length: { maximum: 15 }
  validates :body, presence: true, length: { maximum: 100 }
  validates :category_id, presence: true

  def self.generate_csv
    CSV.generate do |csv|
      csv << CSV_COLUMNS
      all.each do |memo|
        csv << CSV_COLUMNS.map { |col| memo.send(col) }
      end
    end
  end
end
