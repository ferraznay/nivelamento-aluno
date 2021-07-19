# Exercicio 11
# 1) Fazer uma função chamada 'posicao_no_array' que recebe um array e um valor qualquer 
# como parâmetros e que deve retornar a posição da primeira ocorrência 
# do valor no array. Se o valor não existir no array, retornar -1.
# Enviar o arquivo como 11-exercicio.rb


def posicao_no_array (array, valor)
    for n in (0..array.size-1)
        if array[n] == valor
            return n
        end
    end
    return -1
end

lista = [10, 2, 3, 4 , 5]

puts posicao_no_array(lista, 10)
puts posicao_no_array(lista, 20)
puts posicao_no_array(lista, 2)
puts posicao_no_array(lista, 3)
puts posicao_no_array(lista, 6)
puts posicao_no_array(lista, 4)
puts posicao_no_array(lista, 5)