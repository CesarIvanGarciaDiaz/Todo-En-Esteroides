require 'csv'
CSV.foreach("task.csv") do |row|
  if row[0]!=nil and row[1]!=nil and row[2]!=nil and row[3]!=nil
    Task.create(nombredetarea:row[0],asignadoa:row[1],creado:row[2],status:row[3])
  end
end
