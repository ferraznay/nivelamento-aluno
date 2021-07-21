#exibir função ou array tem dois metodos
puts "imprimi e pula a linha"
print "imprimi  e não pula a linha"

# busca posição dentro do array

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

# Inserir no array 
# Insere em qualquer lugar do array

def exibe_array(array)
    for n in (0..array.size-1)
        print array[n]
        if n < array.size-1
            print ","
        end
    end
    puts
end

def insere_no_array(array, valor, posicao_alvo)
    if posicao_alvo >= array.size
        return false
    else
        posicao = array.size
        until posicao == posicao_alvo
            array[posicao] = array[posicao-1]
            posicao = posicao - 1
        end
        array[posicao_alvo] = valor
        return true
    end
end

numeros = [10, 0, -1, -500, 20, 100]

exibe_array(numeros)
puts numeros.size

puts insere_no_array(numeros, 50, 3)
exibe_array(numeros)
puts numeros.size


# adicionando um elemento ao final do array

def exibe_array(array)
    for n in (0..array.size-1)
        print array[n]
        if n < array.size-1
            print ","
        end
    end
    puts
end

def insere_ao_final(array, valor)
    array[array.size] = valor
end

numeros = [10, 0, -1, -500, 20, 100]
exibe_array(numeros)
puts numeros.size

insere_ao_final(numeros, 50)
exibe_array(numeros)
puts numeros.size

# inserir no começo do array

def exibe_array(array)
    for n in (0..array.size-1)
        print array[n]
        if n < array.size-1
            print ","
        end
    end
    puts
end

def insere_no_inicio(array, valor)
    n = array.size
    # while n > 0
    until n == 0
        array[n] = array[n-1]
        n = n - 1
    end
    array[0] = valor
end

numeros = [10, 0, -1, -500, 20, 100]
exibe_array(numeros)
puts numeros.size

insere_no_inicio(numeros, 50)
exibe_array(numeros)
puts numeros.size

# Remover no Array (REMOVE DE POSIÇÃO)

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
    if posicao_alvo <= 0 || posicao_alvo >= (array.size - 1)
        return array
    else
        novo_array = []
        nn = 0
        for n in (0..array.size-1)
            if posicao_alvo == n
                next
            else
                novo_array[nn] = array[n]
                nn = nn + 1
            end
        end
        return novo_array
    end
end

numeros = [10, 0, -1, -500, 20, 100]

exibe_array(numeros)
puts numeros.size()

numeros = remove_da_posicao(numeros, 2)

# REMOVE NO INICIO DO ARRAY


def exibe_array(array)
    for n in (0..array.size-1)
        print array[n]
        if n < array.size-1
            print ","
        end
    end
    puts
end

def remove_primeiro(array)
    novo_array = []
    for n in (1..array.size-1)
        novo_array[n-1] = array[n]
    end
    return novo_array
end

numeros = [10, 0, -1, -500, 20, 100]

exibe_array(numeros)
puts numeros.size()

numeros = remove_primeiro(numeros)

exibe_array(numeros)
puts numeros.size()

# REMOVE O ÚLTIMO DO ARRAY
def exibe_array(array)
    for n in (0..array.size-1)
        print array[n]
        if n < array.size-1
            print ","
        end
    end
    puts
end

def remove_ultimo(array)
    novo_array = []
    for n in (0..array.size-6)
        novo_array[n] = array[n]
    end
    return novo_array
end
numeros = [10, 0, -1, -500, 20, 100]

exibe_array(numeros)
puts numeros.size()

numeros = remove_ultimo(numeros)

exibe_array(numeros)
puts numeros.size()
