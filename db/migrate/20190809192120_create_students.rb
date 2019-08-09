class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.references :school, foreign_key: true
      t.string :fullname

      t.timestamps
    end
  end
end
