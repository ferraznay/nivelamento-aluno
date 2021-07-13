
print "Por favor, informe seu nome: "
    nome = gets
    nome = nome.chomp
    puts
print "Informe sua idade: "
     idade = gets
     idade = idade.to_i
    puts

def calcula_estimativa_batimentos(idade)
    return idade * 365  * 24 * 60 * 80
end
puts
puts nome + " sua idade é  " + idade.to_s + " seus batimentos até agora " + calcula_estimativa_batimentos(idade).to_s




 #   Parte 2:
  #  Escreva um programa que pergunte o nome e a idade do usuário. Escreva também uma função que calcula
  # a quantidade de batimentos cardíacos (uma estimativa) baseado na quantidade de dias que o usuário 
  #viveu. Considere uma média de 80 batimentos por minuto. Essa função deve receber a idade do 
  #usuário como parâmetro.
   # Para cada parte, escreva códigos que testem os programas escritos.
    #Enviar 05-exercicio-parte-1.rb e 05-exercicio-parte-2.rb (editado) 
    