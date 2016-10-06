require 'csv'
require 'faker'
require 'date'

class TaskWriter
	def initialize(file_name)
		@file = file_name
	end

	def create_csv
		CSV.open(@file,"w") do |csv|
			#csv << [:nombredetarea, :asignadoa, :creado, :status]
			50.times do
				csv << create_task
			end
		end
		"File Created"
	end

	def create_task
		nombredetarea=["Sacar a pasear a Pachochin","Dormir","Jugar XBOX",
			"Bañar al perro","Programar en codea","Jugar PS4","Administrar la pagina",
			"Administrar el Site","Trabajar en el front end","Comprar para comer",
			"Pintar un cuadro","Ver videos de momos","Bailar danza arabe","Jugar LOL"].sample
			asignadoa=Faker::Name.first_name
			creado = Faker::Date.between(Date.new(2015,1,1),Date.new(2016,1,1))
			status= ["Incompleto","Completo"].sample

			[nombredetarea,asignadoa,creado,status]
	end
end

	TaskWriter.new('task.csv').create_csv
