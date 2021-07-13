
print "Por favor, informe o raio do circulo: "
    raio = gets
    raio = raio.to_f
    puts

#1) O diâmetro de um círculo é 2x o seu raio.
def diametro_do_circulo(raio)
    return raio * 2
end
   
puts diametro_do_circulo(raio)
puts


#2) O comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)
def comprimento_do_circulo(raio)
    return (diametro_do_circulo(raio)) * Math::PI
end
puts comprimento_do_circulo(raio).round(2)
puts

#3) A área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)
def area_do_circulo(raio)
    return raio ** 2 * Math::PI
end
puts  area_do_circulo(raio).to_f
