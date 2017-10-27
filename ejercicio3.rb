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

def capitalize_words(str)
  str.split.map(&:capitalize).join(' ')
end

def add_persona(nam, age, loc, gen, tbl_per)
  tbl_per.push({Nombre: capitalize_words(nam).to_s, Edad: age.to_i, Comuna: capitalize_words(loc), Genero: capitalize_words(gen)})
end

def upd_persona(nam, age, loc, gen, tbl_per)
  del_persona(nam, tbl_per)
  add_persona(nam, age, loc, gen, tbl_per)
end

def del_persona(nam, tbl_per)
  tbl_per.delete_if {|h| h[:Nombre] == capitalize_words(nam) } != nil
end

def bus_persona(nam, tbl_per)
  found = tbl_per.detect {|h| h[:Nombre] == capitalize_words(nam)}
  p found
end

def count_personas(tbl_per)
  tbl_per.length
end

def comunas(tbl_per)
  (tbl_per.group_by {|h| h[:Comuna]}).keys
end

def personas_x_rango(tbl_per, min, max)
  tbl_per.select {|h| h[:Edad] >= min && h[:Edad] <= max}
end

def suma_edades(tbl_per)
  suma = 0
  tbl_per.map {|h| suma += h[:Edad]}
  return suma
end

def group_genero(tbl_per)
  tbl_per.group_by {|h| h[:Genero]}
end

 add_persona('Edgardo Ochoa', 40, 'Colina', 'Masculino', personas)
 add_persona('Felipe Quinteros', 25, 'Santiago', 'Masculino', personas)
 add_persona('Sandra Salgado', 20, 'Providencia', 'Femenino', personas)


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
      add_persona(nam, age, loc, gen, personas)
    when 2
      puts 'Ingresa Nombre'
      nam = gets.chomp
      fnd_per = bus_persona(nam, personas)
      puts "Encontramos a #{fnd_per}: Actualizar"  if  fnd_per != nil
      puts 'No encontramos ese registro: Ingresar nuevo' if  fnd_per == nil
      puts 'Ingresa Nombre'
      nam = gets.chomp
      puts 'Ingresa Edad'
      age = gets.chomp
      puts 'Ingresa Comuna'
      loc = gets.chomp
      puts 'Ingresa Género'
      gen = gets.chomp
      upd_persona(nam, age, loc, gen, personas)
    when 3
      puts 'Ingresa Nombre'
      nam = gets.chomp
      if del_persona(nam, personas) != nil
        p 'Eliminado exitosamente'
      else
        p 'No fue encontrado'
      end
    when 4
      puts "La cantidad de personas en el registro es #{count_personas(personas)}"
    when 5
      puts "Las comunas de las personas: #{comunas(personas)}"
    when 6
      puts "Las personas entre 20 y 25 años: #{personas_x_rango(personas, 20, 25)}"
    when 7
      puts "La suma de las edades de las personas: #{suma_edades(personas)}"
    when 8
      puts "El promedio de edad de las personas: #{suma_edades(personas)/personas.length}"
    when 9
      puts "Personas x Genero: #{group_genero(personas)}"
    end
end
