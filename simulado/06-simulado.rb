# 6) Faça uma função chamada 'menor_maior' que recebe um array de números e que deve
# retornar outro array, contendo apenas 2 elementos: o primeiro deve ser o menor número 
# do array informado e o segundo deve ser o maior.
#     Ex.:
#     print(menor_maior([10, 0, -1, -500, 20, 100])) # deve imprimir [-500, 100]
#     puts

def exibe_array(array)
    for n in (0..array.size-1)
        print array[n]
        if n < array.size-1
            print ","
        end
    end
    puts
end
def menor_maior (array)
    novo_array = []
    menor = 0
    maior = 0
    for n in (0..array.size-1)
        if n <= 0 
           novo_array[menor] = array [n]
        
        elsif 
            novo_array[maior] = array [n]
        end
    end

        return novo_array 
end


print(menor_maior([10, 0, -1, -500, 20, 100]))