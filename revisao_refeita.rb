# 1) Cada maça custa R$ 0,30, porém, se levar uma dúzia ou mais, 
# o preço de cada uma baixa para R$ 0,25. 

# Considerando essa precificação, escreva uma função chamada 
# "preco_maca" que deve receber como parâmetro a quantidade de 
# maçãs e deve retornar o valor em reais a ser pago por elas.

# Valide se a quantidade é um número maior que zero, se não for, 
# a função deve retornar nil.

def preco_maca (quantidade)
    if quantidade <= 0
        return nil
    end
        if quantidade >= 12
            maca = 0.25
            elsif quantidade < 12
            maca = 0.30
        end
        preco_final = maca * quantidade    
        return preco_final

                 
end
# testes
puts(preco_maca(6)) # deve imprimir 1.8 ou 1.799999...
puts(preco_maca(0)) # deve imprimir nil..
puts(preco_maca(12)) # deve imprimir 3.0
puts(preco_maca(10)) # deve imprimir 3.0


#2) Defina uma função chamada “negativos_positivos”, que deve 
# receber um array de números e que deve retornar outro array 
# com os seguintes 3 números:

# 1. Na primeira posição, o percentual de números do array que são positivos
# 2. Na segunda posição, o percentual de números do array que são zero
# 3. Na última posição, o percentual de números do array que são negativos

def negativos_positivos (numeros)
positivos = 0
zeros = 0
negativos = 0

    for n in (0..numeros.size-1)
        if numeros[n] > 0
        positivos = positivos + 1
        elsif numeros [n] < 0
            negativos = negativos + 1
        else 
            zeros = zeros + 1
            

end    