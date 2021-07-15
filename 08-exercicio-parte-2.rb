puts "Calcular o (MMC)"
puts
puts "Por favor digite dois números para calcular o MMC: "
puts

puts "Primeiro numero"
numero1 = gets.chomp.to_i
puts "Segundo numero"
numero2 = gets.chomp.to_i

def calcula_mmc(numero1, numero2)
    n1 = numero1
    n2 = numero2

    while n2 != 0 
       resto = n1 % n2 
       n1 = n2
       n2 = resto
    end
    puts "O resultado do MMC dos seguintes números: " + numero1.to_s + "," + numero2.to_s + " é: " + ((numero1 * numero2 ) / n1).to_s

end


calcula_mmc(numero1, numero2)


# Enviar como 08-exercicio-parte-1.rb
# 2) Faça um programa para calcular o Mínimo Múltiplo Comum (MMC) entre dois números inteiros.
# Como o próprio nome diz, o MMC é o menor número inteiro que é múltiplo comum de outros números.
# Perguntar ao usuários os dois números inteiros que ele quer saber o MMC.
# Ex.:
# MMC 2, 3 = 6
# MMC 2, 10 = 10
# MMC 5, 8 = 40
# Enviar como 08-exercicio-parte-2.rb