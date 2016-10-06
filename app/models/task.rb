require 'date'
class Task < ActiveRecord::Base

  def index
    Task.all
  end


  def create(var1,var2)
    task = Task.new do |u|
      u.nombredetarea =var1
      u.asignadoa = var2
      u.creado= Time.now
      u.status="Incompleto"
    end
  end


  def delete(var)
    task = Task.find_by(id: var)
    task.destroy
  end

  def update(var)
    user = User.find_by(id:var)
    user.status = 'Completo'
    user.save
  end
end
