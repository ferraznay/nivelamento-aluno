# Exercicio 13
# Fazer uma função chamada 'remove_da_posicao' que recebe um array e a posição alvo
# como parâmetros e que deve retornar um novo array sem o elemento da posição alvo 
# que estava no array informado. Se a posição alvo estiver fora do limite do array 
# e apontar para o primeiro ou último elemento, a função retorna o array inteiro.
# Enviar como 13-exercicio.rb

def exibe_array(array)
    for n in (0..array.size-1)
        print array[n]
        if n < array.size-1
            print ","
        end
    end
    puts
end
def remove_da_posicao(array, posicao_alvo)
    if posicao_alvo <= 0 || posicao_alvo >= array.size-1
        return array
    else
        novo_array = []
        for n in (0..array.size-2)

            if posicao_alvo <= n
                novo_array[n] = array[n+1]
                elsif posicao_alvo >= n 
                novo_array[n] = array[n]
            end
        end
    end
        return novo_array
end

numeros = [10, 20, 30, 40, 50, 60]

#testes
exibe_array(numeros)
puts numeros.size()

numeros = remove_da_posicao(numeros, 2)

exibe_array(numeros)
puts numeros.size()

numeros = remove_da_posicao(numeros, 0)

exibe_array(numeros)
puts numeros.size()

numeros = remove_da_posicao(numeros, 4)

exibe_array(numeros)
puts numeros.size()

numeros = remove_da_posicao(numeros, 100)

exibe_array(numeros)
puts numeros.size()

numeros = remove_da_posicao(numeros, 3)

exibe_array(numeros)
puts numeros.size()
