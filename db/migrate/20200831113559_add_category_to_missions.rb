class AddCategoryToMissions < ActiveRecord::Migration[6.0]
  def change
    add_column :missions, :category, :string
  end
end
