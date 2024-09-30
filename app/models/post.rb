class Post < ApplicationRecord
  extend FriendlyId
  include PgSearch
  friendly_id :title, use: :slugged
  pg_search_scope :search, agaist: %i[title author body]
  
  validates :title, :author, :body, presence: true
  has_many :comments, dependent: :destroy
end
