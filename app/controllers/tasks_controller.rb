
class TasksController
  def initialize(args)
    @args=args
    @model = Task.new
    @view = TasksView.new
    #index
    execute
  end

  def index
    task = @model.index
    p task
  end

  def execute
    case @args[0]
          when "index"
            index
          when "add"
            add
    end
  end
end


#@view = TasksView.new

# TasksController.index
