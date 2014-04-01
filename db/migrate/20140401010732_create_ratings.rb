class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.float :value
      t.belongs_to :user, index: true
      t.belongs_to :product, index: true

      t.timestamps
    end
  end
end
