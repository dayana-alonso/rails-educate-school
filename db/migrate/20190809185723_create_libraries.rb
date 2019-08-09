class CreateLibraries < ActiveRecord::Migration[5.2]
  def change
    create_table :libraries do |t|
      t.references :school, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
