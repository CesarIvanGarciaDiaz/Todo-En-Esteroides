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
    @view.create(@model.create(var1,var2))
  end

  def delete(var)
    @view.delete(@model.delete(var))
  end

  def update(var)
    @view.update(@model.update(var))
  end

  def execute
    case @args[0]
    when "index"
      index
    when "create"
      create(@args[1],@args[2..-1].join(' '))
    when "delete"
      delete(@args[1].to_i)
    when "update"
      update(@args[1].to_i)
    when "help"
      @view.display_menu
    else
      @view.error
    end
  end
end
