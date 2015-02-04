class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, null: false
      t.string :description

      t.timestamps null: false
    end

    add_index :projects, :name, unique: true
  end
end
