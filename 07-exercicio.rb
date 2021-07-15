
   puts "Bem-vindo ao jogo de adivinhação!"
   puts
   puts "O computador pensou em um número entre 0 e 100. Tente adivinhar!"
   puts

    # computador pensando no número...
    numero = rand(0..100)
    puts "(" + numero.to_s + ")"
    
    chute = gets.chomp

    if chute.to_i < 0 || chute.to_i > 100 
    puts " Chute Inválido! Você tem que digitar os números entre 0 a 100 "
    elsif chute.to_i >= 0 && chute.to_i <= 100
        if chute.to_i == 0  
            if chute == "0"
                chute = chute.to_i
            else
                puts " Chute Invalido! Você não pode digitar letras, apenas números inteiro entre 0 a 100 "
            end
        else 
            chute = chute.to_i
        end
    end
             
    if numero == chute
        puts "Acertou!"
    elsif numero
        puts "Errou!"
    end
    



#Exercício 07
# Tomando como base a 1a versão do jogo de adivinhação (24-jogo.rb), fazer uma nova versão
# do jogo de adivinhação que consiga validar se o valor digitado como chute do jogador
# é um dado válido ou não.
# Por exemplo, se o chute for um número fora do intervalo entre 0 e 100, ou se não for
# um valor numérico, o programa deve imprimir na tela uma mensagem de que o chute é inválido.
# Subir no GitHub como 07-exercício