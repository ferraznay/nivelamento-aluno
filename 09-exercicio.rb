puts "Bem-vindo ao jogo de adivinhação!"
puts "O computador pensou em um número entre 0 e 100. Tente adivinhar!"

numero = rand(0..100)
puts "(" + numero.to_s + ")"

chute = gets.chomp

tentativa = 1
while chute.to_i != numero 

    tentativa = tentativa + 1

    if chute == "0" || (chute.to_i >= 1 && chute.to_i <= 100)
        if chute.to_i > numero
            puts "Tente novamente o seu número é maior!" 
        elsif chute.to_i < numero
            puts "Tente novamente o seu número é menor!"
        end
    elsif chute != "0" || (chute.to_i < 1 && chute.to_i > 100)
        tentativa = tentativa - 1
        puts "Chute inválido!"
    end

  
   chute = gets.chomp

    next
end

if chute.to_i == numero
    puts "Parabéns você acertou! "
    puts "Total de tentativas = " + tentativa.to_s
end

# Exercício 09
# A partir da versão 2 do jogo de adivinhação, faça uma nova versão em que o jogador receba a informação, após chutar o número, se o chute foi maior ou menor que o número pensado. A seguir, ele ganha uma nova tentativa, de modo que o jogo somente vai terminar quando ele acertar.
# Ao final, após acertar, informe o número de tentativas que o jogador teve para acertar.
# Observação: valide o chute do jogador, ignorando a tentativa caso ele informe um numero invalido.
# Enviar como 09-exercicio.rb (editado) 