#1) O diâmetro de um círculo é 2x o seu raio.
def diametro_do_circulo(raio)
    return 2 * raio
end
puts "O diâmetro desse circulo é " + diametro_do_circulo(4).to_s
puts "O diâmetro desse circulo é " + diametro_do_circulo(6).to_s
puts

#2) O comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)
def comprimento_de_um_circulo(raio)
    return diametro_do_circulo(raio) * Math::PI
end
puts "O comprimento do circulo é " + comprimento_de_um_circulo(10).to_s
puts "O comprimento do circulo é " +  comprimento_de_um_circulo(20).to_s
puts

#3) A área de um círculo é seu raio ao quadrado vezes o valor da constante
# matemática PI (3.1415...)
def area_de_um_circulo(raio)
    return raio ** 2 * Math::PI
end
puts "A área do circulo é " + area_de_um_circulo(40).to_s
puts "A área do circulo é " + area_de_um_circulo(60).to_s
puts

#Duas formas de fazer, agora declarando a variavel raio

raio = 10
puts "Valor do Raio " + raio.to_s
puts

#1) O diâmetro de um círculo é 2x o seu raio.
def diametro_do_circulo(raio)
    return raio * 2

end
puts "O diâmetro desse circulo é " + diametro_do_circulo(raio).to_s
puts

#2) O comprimento de um círculo é seu diâmetro vezes o valor da constante matemática PI (3.1415...)
def comprimento_do_circulo(raio)
    return (diametro_do_circulo(raio)) * Math::PI

end
puts "O comprimento do circulo é " + comprimento_do_circulo(raio).to_s
puts

#3) A área de um círculo é seu raio ao quadrado vezes o valor da constante matemática PI (3.1415...)
def area_do_circulo(raio)
    return raio ** 2 * Math::PI

end
puts "A área do circulo é " + area_do_circulo(raio).to_s
