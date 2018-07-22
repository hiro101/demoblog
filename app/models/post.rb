class Post < ApplicationRecord
  validates :name,  :presence => true
  validates :title, :presence => true, :length => { :minimum => 1 }
  paginates_per 3


#入力内容による絞り込み 
  scope :get_by_content, ->(content) {
  where("content like ?", "%#{content}%")
  }
end
