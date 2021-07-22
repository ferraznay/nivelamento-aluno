# (valor = 1.5)
# 3) Defina uma função “altura_escada” que deve receber um número inteiro para 
# representar a altura da escada e deve retornar um array de strings para 
# representar graficamente a escada.
# Valide o parâmetro da altura da escada, que deve ser um número maior ou igual
#  a 1. Caso contrário, a função deve retornar um array vazio.
# Ex.:

def altura_escada(numeros)
    degraus_escada = []
    if numeros <= 0 
        return degraus_escada
    end
    if numeros >= 1
        x = numeros - 1
        y = 1
        for i in (0..numeros-1)
            degraus_escada[i] = ("_" * x) + ("#" * y)
            x = x - 1
            y = y + 1
        end
        puts
    
    return degraus_escada
    end
end

puts(altura_escada(1))
# deve imprimir
#
puts(altura_escada(2))
# deve imprimir

puts(altura_escada(3))
# deve imprimir
#
##
###
puts(altura_escada(5))
# deve imprimir
#
##
###
####
#####
puts(altura_escada(0))
# deve imprimir nada, pois tem que retornar um array vazio