class Person
    #nombre
    #apellido
    #edad
    #c.c.
    def initialize(nombre, apellido, cc)
        @nombre = nombre
        @apellido = apellido
        @cc= cc
        @edad = 0        
    end
    def nombre 
        @nombre 
    end
    def happy_birthday
        @edad += 1
    end

    def say_hi
        p "hola soy #{@nombre} #{@apellido} y mi edad es #{@edad}"
    end
end

class Grupo
    #nombre
    #people
    #instructor
    def initialize(nombre, people, instructor)
        @nombre = nombre
        @people = []
        p instructor
        p "**********************************************"
        @instructor = instructor
        people.times do
            print "ingrese nombre: "
            nombre = gets.chomp
            print "ingrese apellido: "
            apellido = gets.chomp
            print "ingrese cc: "
            cc = gets.chomp.to_i
            persona = Person.new(nombre, apellido, cc)
            @people.push(persona) 
        end
    end
    def info_grupo()
        puts "el nombre del grupo es: #{@nombre} y tenemos #{@people.length} estudiantes y el instructor es #{@instructor.nombre}"
        @people.each do |estudiante|
            estudiante.say_hi
        end
    end
end
gustavo=Person.new("Gustavo", "Silva", 80736949)
p gustavo


36.times do 
gustavo.happy_birthday
end
p gustavo
obituary=Grupo.new("los chimbitas", 5, gustavo)
obituary.info_grupo
