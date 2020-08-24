class CreateCharities < ActiveRecord::Migration[6.0]
  def change
    create_table :charities do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :phone_number
      t.text :description
      t.string :website

      t.timestamps
    end
  end
end
