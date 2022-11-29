class CreateUnits < ActiveRecord::Migration[7.0]
  def change
    create_table :units do |t|
      t.integer :order, null: false
      t.string :name, null: false
      t.references :course, foreign_key: true
      t.text :description
      t.text :content, null: false

      t.timestamps
    end
  end
end
