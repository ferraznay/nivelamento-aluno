# Exercicio 12
# Fazer uma função chamada 'insere_no_array' que recebe um array, um valor qualquer e a
#  posição alvo como parâmetros e que deve inserir o valor informado na posição alvo, 
#  de modo a 'empurrar para a frente' os demais elementos e ao final retornar true. 
#  Se a posição alvo não estiver no limite do array, a função deve retornar false.
# Enviar como 12-exercicio.rb

def insere_no_array (array, valor, posicao_alvo)
    n = array.size
  if posicao_alvo > array.size-1
    return false
  else
    until  n == posicao_alvo
    array[n] = array[n-1]
    n = n - 1 
    end
    array[posicao_alvo] = valor
    return true
    end    
 
end

lista = [ 10,20,30,40,50,60,70,80,90,100]
puts " Digite um número"
valor = gets.chomp.to_i

puts "Digite a posição do número"
posicao_alvo = gets.chomp.to_i


puts insere_no_array(lista, valor, posicao_alvo)

puts lista

