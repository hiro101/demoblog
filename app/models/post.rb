class Post < ApplicationRecord
  has_many :users, :dependent => :destroy

  validates :name,  :presence => true
  validates :title, :presence => true, :length => { :minimum => 1 }
  paginates_per 3

  enum category: { DailyLife: 0, Programming: 1, Study: 2, Book: 3, Food: 4, Other: 9 }     
                         
  #入力内容による絞り込み
  scope :search, ->(word) {
    where("content like ? or title like ?", "%#{sanitize_sql_like(word)}%","%#{sanitize_sql_like(word)}%")
  }

  #カテゴリー選択による絞り込み
  scope :get_by_category, ->(category) {
    where(category: category)
  }
  
  mount_uploader :picture, PictureUploader

end
