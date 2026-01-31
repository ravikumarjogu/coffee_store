class CreateCoffees < ActiveRecord::Migration[8.1]
  def change
    create_table :coffees do |t|
      t.string :name
      t.string :flavor
      t.decimal :price

      t.timestamps
    end
  end
end
