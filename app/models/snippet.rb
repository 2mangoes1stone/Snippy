class Snippet < ApplicationRecord
  scope :sorted, lambda { order("title ASC")}
  validates :title, presence: true
  validates :code, presence: true
  
end
