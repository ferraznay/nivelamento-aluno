# 2) Defina uma função chamada “negativos_positivos”, que deve receber um array de números
#  e que deve retornar outro array com os seguintes 3 números:
# 1. Na primeira posição, o percentual de números do array que são positivos
# 2. Na segunda posição, o percentual de números do array que são zero
# 3. Na última posição, o percentual de números do array que são negativos
# print(negativos_positivos([1, 2, 0, -1]))
# print("\n")
# # deve imprimir o array [0.5, 0.25, 0.25]
# # pois há 50% de números positivos no array, 25% de números zero e 25% de números negativos

def negativos_positivos(array)

 
    positivos = 0
    zeros = 0
    negativos = 0

    novo_array = []
    for n in (0..array.size-1)
        
        if array[n] > 0 
            positivos = positivos + 1

            elsif array[n] < 0
            
            negativos = negativos + 1
           
                else 
                zeros = zeros + 1   
        end
        
    end
    
    positivos = positivos.to_f / array.size
    zeros = zeros.to_f / array.size
    negativos = negativos.to_f / array.size
    resultado = [ positivos, zeros, negativos]
    return resultado

end

print(negativos_positivos([1, 2, 0, -1]))
puts
print(negativos_positivos([2, 3, 1,0, -2]))
puts
print(negativos_positivos([1, 2, 0, -1]))
