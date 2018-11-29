class Comment < ApplicationRecord
  belongs_to :picture
  validates :content, :author, presence: true
  
end
