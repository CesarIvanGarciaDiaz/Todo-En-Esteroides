class TasksView

	def display_menu
		puts
		puts "*" * 100
		puts "Comandos:\t\t\t Descripcion:"
		puts "index \t\t\t\t # index"
		puts "create \t\t\t\t # create 'NOMBRE DE LA PERSONA ASIGNADA''TAREA'"
		puts "delete \t\t\t\t # delete 'ID DE LA TAREA'"
		puts "complete \t\t\t # complete 'ID DE LA TAREA'"
		puts
	end

	def index(var)
		puts "La lista de tareas es la siguiente:"
		p	var
	end

	def create(var)
		puts "Se a creado con exito la tarea"
	end

	def delete(var)
		puts "Se ha borrado el siguiente registro"
		p var
	end

	def update(var)
		puts "Se ha completado la siguiente tarea"
	end

	def error
		puts "INGRESE UN COMANDO VALIDO"
		display_menu
	end
end
