class AddActiveToSchool < ActiveRecord::Migration[5.2]
  def change
    add_column :schools, :active, :boolean
  end
end
