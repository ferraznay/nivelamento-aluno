#Exercicio 03

#1. retornar a quantidade de horas que tem em uma quantidade de anos, que será um valor
# informado para a função
def calcula_horas_dias_anos (horas, dias, anos)
    horas_do_ano = horas * dias * anos  
    puts "1. Retornar a quantidade de horas que tem em uma quantidade de anos, que será um valor informado para a função"
    puts 
    puts  horas.to_s + " horas do dia " + " * "  + dias.to_s + " dias do ano " + " * " + anos.to_s + " quantidade de anos"+ " = " 
    return horas_do_ano

end

horas = calcula_horas_dias_anos(24 , 365 , 5 )
puts horas
puts
horas_2 = calcula_horas_dias_anos(24,365,2)
puts horas_2
puts


#2. retornar a quantidade de minutos que tem em uma quantidade de décadas, que será um valor 
#informado para a função
def quantidade_de_minutos (ano , dias, decada, horas, minutos)
    total_de_minutos = ano * dias * decada * horas * minutos 
    puts "2. retornar a quantidade de minutos que tem em uma quantidade de décadas, que será um valor informado para a função"
    puts 
    puts  ano.to_s + " ano " + " * "  + dias.to_s + " dias do ano " + " * " + decada.to_s + " decada " + " * " + horas.to_s + " horas " + " * " + minutos.to_s + " minutos = "
    return total_de_minutos

end
minutos = quantidade_de_minutos(1 , 365 , 10 , 24 , 60 )
puts minutos
puts 

minutos_2 = quantidade_de_minutos(1, 365, 20,24,60)
puts minutos_2
puts

#3. retornar a idade em valor de segundos, sendo que a idade deve ser informada para a função
def idade_em_segundos (dias , horas, minutos , segundos , idade)
total_idade_em_segundos = dias * horas * minutos * segundos * idade
puts "3. retornar a idade em valor de segundos, sendo que a idade deve ser informada para a função"
puts
puts  dias.to_s + " dias do ano " + " * "  + horas.to_s + " horas do dia " + " * " + minutos.to_s + " minutos " + " * " + segundos.to_s + " segundos " + " * " + idade.to_s + " anos = "
    return total_idade_em_segundos
end
idade = idade_em_segundos(365 , 24 , 60 , 60 , 28)
puts idade
puts

idade_2= idade_em_segundos(365,24,60,60,32)
puts idade_2
puts

#4. retornar a quantidade de anos que tem em uma quantidade de segundos, que será um valor informado para a função
def anos_em_segundos (total_segundos , dias , horas , minutos, segundos)
total_anos_em_segundos = total_segundos / dias / horas / minutos / segundos
puts "4. retornar a quantidade de anos que tem em uma quantidade de segundos, que será um valor informado para a função"
puts
puts total_segundos.to_s + " total de segundos " + " / " + dias.to_s + " dias do ano " + " / " + horas.to_s + " horas " + " / " + minutos.to_s + " minutos " + " / " + segundos.to_s + " segundos" + " = "
    return total_anos_em_segundos
end

total_anos_segundos = anos_em_segundos(1232000000.to_f, 365, 24 , 60 , 60)
puts total_anos_segundos
puts

total_anos_segundos_2 = anos_em_segundos(2343000000.to_f,365,24,60,60)
puts total_anos_segundos_2
puts



#Escreva uma função (com parâmetros, variáveis locais e retorno, se necessários) para as seguintes necessidades abaixo:
#1. retornar a quantidade de horas que tem em uma quantidade de anos, que será um valor informado para a função
#2. retornar a quantidade de minutos que tem em uma quantidade de décadas, que será um valor informado para a função
#3. retornar a idade em valor de segundos, sendo que a idade deve ser informada para a função
#4. retornar a quantidade de anos que tem em uma quantidade de segundos, que será um valor informado para a função
#Para testar as funções, abaixo, escreva trechos de código que chamam essas funções algumas vezes, passando valores diferentes.
#Obs: Definam o nome do arquivo como 03-exercicio.rb