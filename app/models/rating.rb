class Rating < ActiveRecord::Base
  belongs_to :user
  belongs_to :product

  validates :value, { presence: true, inclusion: { in: [0, 1] } }
  validates_presence_of :user, :product
  validates_uniqueness_of :product_id, scope: [:user_id]
end
