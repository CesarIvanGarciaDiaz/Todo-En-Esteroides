
class TasksController
  def initialize(args)
    @args=args
    @model = Task.new
    @view = TasksView.new
    index
  end

  def index
    task = @model.index
    p task
  end
end


#@view = TasksView.new
# prueb = TasksController.new("dato")
# prueb.index
# TasksController.index
# case @args
#       when "index"
#         TasksController.index
#       when "add"
#         add
#       when "delete"
#         delete
#       when "complete"
#         complete
# end
