class CreateLegoSets < ActiveRecord::Migration[7.0]
  def change
    create_table :lego_sets do |t|
      t.string :name
      t.string :description
      t.string :item_number

      t.timestamps
    end
  end
end
