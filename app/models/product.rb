class Product < ActiveRecord::Base
  has_many :ratings, dependent: :destroy
  has_many :users, through: :ratings

  validates :name, { presence: true, uniqueness: { case_sensitive: false } }
end
