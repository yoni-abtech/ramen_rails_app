# typed: true
class CreateRamen < ActiveRecord::Migration[6.0]
  def change
    create_table :ramen do |t|
      t.string :brand
      t.text :review

      t.timestamps
    end
  end
end
