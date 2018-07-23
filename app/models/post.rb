class Post < ApplicationRecord

  validates :name,  :presence => true
  validates :title, :presence => true, :length => { :minimum => 1 }
  paginates_per 3

  enum category: { DailyLife: 0, Programming: 1, Study: 2, Book: 3, Food: 4, Other: 9 }     
                         
  #入力内容による絞り込み 
  scope :get_by_content, ->(content) {
    where("content like ?", "%#{content}%")
  }

  #カテゴリー選択による絞り込み
  scope :get_by_category, ->(category) {
    where(category: category)
  }
  
end
