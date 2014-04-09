class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :owner
      t.integer :requester
      t.string :description
      t.integer :state
      t.integer :sprint
      t.integer :points
      t.integer :project

      t.timestamps
    end
  end
end
