class Category < ApplicationRecord
  has_many :memos
  validates :name, presence: true
  validates :body, presence: true
  validates :category_id, presence: true
end
