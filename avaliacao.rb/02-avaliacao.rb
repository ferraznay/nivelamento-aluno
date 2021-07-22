# 2) Faça uma função chamada 'multiplica_arrays' que deve receber como 
# parâmetros 2 arrays e deve retornar um valor numérico que deve ser o 
# resultado da soma da multiplicação entre os elementos que ocupam a mesma 
# posição em cada array.
# Ex.:
# puts multiplica_arrays([1, 2, 3], [10, 20, 30]) # deve imprimir 140
# Pois o resultado é igual a: (1*10) + (2*20) + (3*30)
# Obs.: Valide se os 2 arrays têm o mesmo tamanho. Caso não tiverem, a função 
# deve retornar nil.


def multiplica_arrays(numeros_1,numeros_2)
    multiplicacao = 0
    if numeros_1.size == numeros_2.size
        for n in (0..numeros_1.size-1)
            multiplicacao = multiplicacao + numeros_1[n] * numeros_2[n]
        end
        return multiplicacao
    elsif numeros_1.size > numeros_2.size || numeros_1.size < numeros_2.size
        return nil
    end
end

puts multiplica_arrays([1, 2, 3], [10, 20, 30])
puts multiplica_arrays([4, 5, 6], [40, 50, 60])
puts multiplica_arrays([7, 8, 9], [70, 80, 90])
puts multiplica_arrays([10, 11, 12], [100, 110, 120])