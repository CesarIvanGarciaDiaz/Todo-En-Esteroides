require 'date'
class Task < ActiveRecord::Base

  def index
    Task.all
  end

  def create(var1,var2)
    task = Task.new do |u|
      u.asignadoa = var1
      u.nombredetarea =var2
      u.creado= Time.now.strftime("%Y-%m-%d")
      u.status="Incompleto"
    end
    task.save
  end

  def delete(var)
    task = Task.find_by(id: var)
    task.destroy
  end

  def update(var)
    task = Task.find_by(id:var)
    task.status = 'Completo'
    task.save
  end
end
