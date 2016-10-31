class CreateStRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :st_relations do |t|
      t.integer :student_id
      t.integer :teacher_id
      t.timestamps
    end
  end
end
