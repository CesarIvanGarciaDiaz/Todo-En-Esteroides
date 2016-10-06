class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :nombredetarea
      t.string :asignadoa
      t.date :creado
      t.string :status
    end
  end
end
