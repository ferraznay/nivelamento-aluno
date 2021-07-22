# 1) Cada maça custa R$ 0,30, porém, se levar uma dúzia ou mais, 
# o preço de cada uma baixa para R$ 0,25. 

# Considerando essa precificação, escreva uma função chamada 
# "preco_maca" que deve receber como parâmetro a quantidade de 
# maçãs e deve retornar o valor em reais a ser pago por elas.

# Valide se a quantidade é um número maior que zero, se não for, 
# a função deve retornar nil.

def preco_maca(quantidade)
    if quantidade <= 0
        return nil
    else
        if quantidade >= 12
            preco = 0.25
        else
            preco = 0.3
        end
        preco_final = preco * quantidade
        return preco_final
    end
end



# 2) Defina uma função chamada “negativos_positivos”, que deve 
# receber um array de números e que deve retornar outro array 
# com os seguintes 3 números:

# 1. Na primeira posição, o percentual de números do array que são positivos
# 2. Na segunda posição, o percentual de números do array que são zero
# 3. Na última posição, o percentual de números do array que são negativos

def negativos_positivos(numeros)
    puts "numeros.size = " + numeros.size.to_s
    positivos = 0
    negativos = 0
    zeros = 0
    for i in (0..numeros.size-1)
        if numeros[i] > 0
            positivos = positivos + 1
        elsif numeros[i] < 0
            negativos = negativos + 1
        else
            zeros = zeros + 1
        end
    end
    # resultado = [ 
    #     positivos / numeros.size, 
    #     zeros / numeros.size, 
    #     negativos / numeros.size 
    # ]
    resultado = []
    resultado[0] = positivos.to_f / numeros.size
    resultado[1] = zeros.to_f / numeros.size
    resultado[2] = negativos.to_f / numeros.size
    return resultado
end

print(negativos_positivos([1, 2, 0, -1]))
print("\n")
# deve imprimir o array [0.5, 0.25, 0.25]
# pois há 50% de números positivos no array, 25% de números zero e 25% de números negativos

print(negativos_positivos([1, 1, 1, 0, 0, -1]))
print("\n")


# 3) Escreva uma função chamada "calcula_media" que deve 
# receber um array de números como parâmetro e deve retornar 
# o valor da média aritmética entre todos os números do array.

def calcula_media(numeros)
    soma = 0.0 # já declarei uma variavel Float
    for i in (0..numeros.size-1)
        soma = soma + numeros[i]
    end
    media = soma / numeros.size
    return media
end

puts(calcula_media([1, 2, -1, 3, 0, 7]))  # deve imprimir 2.0
puts(calcula_media([10, 15, 20, 25]))  # deve imprimir 17.5
puts(calcula_media([0, 1, 1, 1, 1]))  # deve imprimir 0.8
    

# 4) Defina uma função chamada “imprimir_tabela”, que deve receber
# um número inteiro como parâmetro e deve imprimir na tela uma tabela
# de números seguindo a seguinte regra:

# 1
# 2 4
# 3 6 9
# ...
# n*1 n*2 n*3 ... n*n

# Valide se o parâmetro é um número maior que zero, se não for, a 
# função deve imprimir na tela "ARGUMENTO INVÁLIDO"

def imprimir_tabela(numero)
    if numero <= 0
        puts "ARGUMENTO INVÁLIDO"
    else
        for linha in (1..numero)
            for coluna in (1..linha)
                print linha * coluna
                print " "
            end
            puts
        end
    end
end


imprimir_tabela(5) # deve ser impresso na tela a seguinte tabela:

#  1
#  2 4
#  3 6 9
#  4 8 12 16
#  5 10 15 20 25

imprimir_tabela(0) # deve ser impresso na tela: 
# ARGUMENTO INVÁLIDO

imprimir_tabela(9)

# 5) Faça uma função chamada 'mediana' que recebe um array de 
# números e retorna a mediana entre eles.

# Lembrando que para obter a mediana de uma série de números, é
# necessário ordenar a série (usar a função sort()) e retornar:

# - se a série tiver um número (n) ímpar de elementos, retornar o 
# número da posição n/2 (a parte inteira);
# - e caso se a série tiver um número (n) par de elementos, retornar 
# a média entre os números das posições (n/2)-1 e (n/2)

def mediana(numeros)
    numeros_ordenados = numeros.sort()
    # print numeros_ordenados
    # puts
    if numeros_ordenados.size % 2 == 1 # size é impar
        resultado = numeros_ordenados[numeros_ordenados.size / 2]
        return resultado
    else # size é par
        numero_1 = numeros_ordenados[(numeros_ordenados.size / 2) - 1]
        numero_2 = numeros_ordenados[numeros_ordenados.size / 2]
        resultado = (numero_1 + numero_2) / 2.0
        return resultado
    end
end

# Ex.: 

puts(mediana([10, 0, -1, -500, 20, 100])) # deve imprimir 5.0
puts(mediana([10, 0, -1, -500, 20]))      # deve imprimir 0.0


# 6) Faça uma função chamada 'menor_maior' que recebe um array 
# de números e que deve retornar outro array, contendo apenas 2 
# elementos: o primeiro deve ser o menor número do array informado 
# e o segundo deve ser o maior.

# Ex.:

def menor_maior(numeros)
    menor = numeros[0]
    maior = numeros[0]
    for i in (0..numeros.size-1)
        if numeros[i] > maior
            maior = numeros[i]
        elsif numeros[i] < menor
            menor = numeros[i]
        end
    end
    resultado = [menor, maior]
    return resultado
end

print(menor_maior([10, 0, -1, -500, 20, 100])) # deve imprimir [-500, 100]
puts
    
print(menor_maior([-1, -2, -3, -4, -5, -6])) # deve imprimir [-6, -1]
puts

print(menor_maior([10_000_000_000_000_000_000_001, 0, 1, -1, 100])) # deve imprimir [-6, -1]
puts

print(menor_maior([-10_000_000_000_000_000_000_001, 0, 1, -1, 10_000_000_000_000_000_000_002, 100])) # deve imprimir [-6, -1]
puts

print(menor_maior([-10_000_000_000_000_000_000_001, 0, 1, -1, 100])) # deve imprimir [-6, -1]
puts


