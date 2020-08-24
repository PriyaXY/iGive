class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
      t.references :charity, null: false, foreign_key: true
      t.datetime :start_date
      t.float :longitude
      t.float :latitude
      t.string :title
      t.text :description
      t.string :address
      t.integer :number_of_volunteers

      t.timestamps
    end
  end
end
