 a = [1, 2, 3, 9, 1, 4, 5, 2, 3, 6, 6]

# 1. Utilizando map aumentar el valor de cada elemento del array en 1.
b = a.map { |e| e + 1 }

# 2. Utilizando map convertir todos los valores a float.
c = a.map {|e| e.to_f}

# 3. Utilizando map convertir todos los valores a string.
d = a.map {|e| e.to_s}

# 4. Utilizando reject descartar todos los elementos menores a 5 en el array.
f = a.reject {|e| e.to_i < 5}

# 5. Utilizando select descartar todos los elementos mayores a 5 en el array.
g = a.select {|e| e.to_i <= 5}

# 6. Utilizando inject obtener la suma de todos los elementos del array.
h = a.inject(0) { |sum, x| sum + x }

# 7. Utilizando group_by agrupar todos los números por paridad (si son pares, es un
# grupos, si son impares es otro grupo).
i = a.group_by { |ele| ele.even?}

# 8. Utilizando group_by agrupar todos los números mayores y menores que 6.
j = a.group_by { |ele| ele > 6}
