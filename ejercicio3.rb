# 1. Crear un menú que permita registrar la información de los alumnos del curso.
# 2. Opción 1: Permite ingresar los datos de una persona:
# Nombre
# Edad
# Comuna
# Género
# 3. Opción 2: Permite editar los datos de la persona.
# 4. Opción 3: Permite eliminar una persona.
# Ejercicio 2: Arrays y strings
# Ejercicio 3: Array de hashes
# 5. Opción 4: Muestra la cantidad de personas ingresadas.
# 6. Opción 5: Muestra las comunas de todas las personas.
# hint: Generar un array con las comunas, eliminar repeticiones. Considerar que
# pueden haber nombres escritos con mayúscula y minúscula.
# 7. Opción 6: Muestra una lista con todas las personas que tengan entre 20 y 25 años.
# 8. Opción 7: Muestra la suma de las edades de todas las personas.
# 9. Opción 8: Muestra el promedio de las edades del grupo.
# 10. Opción 9: Muestra dos listas de personas, una por cada género.
# 11. El menú debe repetirse hasta que el usuario ingrese la opción 10 (salir).

opt = 0
persona = {Nombre: nil, Edad: nil, Comuna: nil, Genero: nil}
personas =[]


def show_menu
  puts "\n\nIngresa una opcion [1-9], [10] para salir"
  puts '==============================================='
  puts '[1] Ingresar una persona'
  puts '[2] Editar una persona'
  puts '[3] Eliminar una persona'
  puts '[4] Cantidad de personas en el registro'
  puts '[5] Comunas de todas las personas'
  puts '[6] Personas entre 20 y 25 años'
  puts '[7] Suma de edades de las personas'
  puts '[8] Promedio de edades de las personas'
  puts '[9] Personas x Genero'
  puts '[10] Para salir'
  puts "===============================================\n\n"
end

def add_persona(nam, age, loc, gen, hash, tbl_per)
  hash = {Nombre: nam, Edad: age.to_i, Comuna: loc, Genero: gen}
  tbl_per.push(hash)
end

def upd_persona(nam, age, loc, gen, hash, tbl_per)

end

# add_persona('Edgardo Ochoa', 40, 'Colina', 'Masculino', persona, personas)
# add_persona('Felipe Quinteros', 33, 'Santiago', 'Masculino', persona, personas)
# add_persona('Sandra Salgado', 35, 'Providencia', 'Femenino', persona, personas)
# p personas

until opt == 10
  show_menu()
  opt = gets.chomp.to_i

  case opt
    when 1
      puts 'Ingresa Nombre'
      nam = gets.chomp
      puts 'Ingresa Edad'
      age = gets.chomp
      puts 'Ingresa Comuna'
      loc = gets.chomp
      puts 'Ingresa Género'
      gen = gets.chomp
      add_persona(nam, age, loc, gen, persona, personas)
    when 2
      puts 'Ingresa Nombre'
      nam = gets.chomp
      puts 'Ingresa Edad'
      age = gets.chomp
      puts 'Ingresa Comuna'
      loc = gets.chomp
      puts 'Ingresa Género'
      gen = gets.chomp
      upd_persona(nam, age, loc, gen, persona, personas)
    when 3

    when 4

    when 5

    when 6

    when 7

    when 8

    when 9

    end
p personas
end
