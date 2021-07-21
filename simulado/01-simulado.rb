# SIMULADO

# 1) Cada maça custa R$ 0,30, porém, se levar uma dúzia ou mais, o preço de cada uma baixa 
# para R$ 0,25.
# Considerando essa precificação, escreva uma função chamada "preco_maca" que deve receber c
# omo parâmetro a quantidade de maçãs e deve retornar o valor em reais a ser pago por elas.
# Valide se a quantidade é um número maior que zero, se não for, a função deve retornar nil.
# puts(preco_maca(6)) # deve imprimir 1.8 ou 1.799999...
# puts(preco_maca(12)) # deve imprimir 3.0
# puts(preco_maca(10)) # deve imprimir 3.0



def preco_maca(quantidade_de_maca)
    maca = quantidade_de_maca
    if maca <= 0
        return nil
    end

    if maca < 12 
        return  maca * 0.30
      
    elsif maca >= 12
        return maca * 0.25
  
    end

end
# testes
puts(preco_maca(6)) # deve imprimir 1.8 ou 1.799999...
puts(preco_maca(0)) # deve imprimir nil..
puts(preco_maca(12)) # deve imprimir 3.0
puts(preco_maca(10)) # deve imprimir 3.0