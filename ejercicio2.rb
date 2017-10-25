nombres = ["Violeta", "Andino", "Clemente", "Javiera", "Paula", "Pia", "Ray"]


# 1. Extraer todos los elementos que excedan mas de 5 caracteres utilizando el método .select.
b = nombres.select {|e| e.length <= 5}


# 2. Utilizando .map crear una arreglo con los nombres en minúscula.
c = nombres.map {|e| e.downcase}


# 3. Utilizando .select para crear un arreglo con todos los nombres que empiecen con P.
d = nombres.select {|e| e[0] == 'P'}

# 4. Utilizando .map crear un arreglo único con la cantidad de letras que tiene cada nombre.
f = nombres.map {|e| e.length}
p f

# 5. Utilizando .map y .gsub eliminar las vocales de todos los nombres.
g = nombres.map {|e| e.delete "aeiouAEIOU"}
h = nombres.map {|e| e.gsub(/[aeiou]/i, '')}
