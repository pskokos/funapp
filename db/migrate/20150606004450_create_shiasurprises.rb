class CreateShiasurprises < ActiveRecord::Migration
  def change
    create_table :shiasurprises do |t|
      t.text :name
      t.integer :amount

      t.timestamps null: false
    end
  end
end
