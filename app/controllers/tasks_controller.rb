
class TasksController
  def initialize(args)
    @args=args
    @model = Task.new
    @view = TasksView.new
    execute
  end

  def index
    @view.index(@model.index)

  end

  def create(var1,var2)
    create=@model.create(var1,var2)
    p create
  end

  def delete(var)
    delete=@model.delete(var)
    p delete
  end

  def update(var)
    update=@model.update(var)
    p update
  end
  def execute
    case @args[0]
    when "index"
      index
    when "create"
      create(@args[1],@args[2])
    when "delete"
      delete(@args[1])
    when "update"
      update(@args[1])
    end
  end
end


#@view = TasksView.new

# TasksController.index
