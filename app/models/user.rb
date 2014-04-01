class User < ActiveRecord::Base
  has_many :ratings, dependent: :destroy
  has_many :products, through: :ratings

  validates :name, { presence: true, uniqueness: { case_sensitive: false } }
end
