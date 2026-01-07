class CreateTasks < ActiveRecord::Migration[8.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.date :due_date
      t.string :status, default: "new"
      t.timestamps
      t.boolean :done, default: false
    end
  end
end
