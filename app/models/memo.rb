class Memo < ApplicationRecord
  belongs_to :category
  validates :title, presence: true
  validates :body, presence: true
  validates :name, presence: true
end
