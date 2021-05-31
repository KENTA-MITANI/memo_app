class Memo < ApplicationRecord
  belongs_to :category
  validates :title, presence: true, length: { maximum: 15 }
  validates :body, presence: true, length: { maximum: 100 }
  validates :category_id, presence: true
end
