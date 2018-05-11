class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
        t.string :name
        t.string :description
        t.integer :progress
        t.timestamp :deadline

        t.timestamps
    end
  end
end
