puts
puts "Sistema para indicar fase pandêmica do Estado"
puts


def fase_pandemica(taxa_de_vacinacao, fator_de_transmissao, taxa_de_ocupacao_de_leitos)
    if taxa_de_vacinacao >=0 && taxa_de_vacinacao <=1 && fator_de_transmissao >=0 && taxa_de_ocupacao_de_leitos >=0 && taxa_de_ocupacao_de_leitos <=1
        #- taxa de vacinação deve ser um número entre 0.0 e 1.0 (1.0 = 100%)
        elsif taxa_de_vacinacao < 0 || taxa_de_vacinacao > 1
            return "Taxa de vacinação está incorreta! Tente novamente"
        #- fator de transmissão dever ser um número maior ou igual a zero
        elsif fator_de_transmissao < 0
            return "O fator de trasmissão está incorreto! Tente novamente"
        #- taxa de ocupação de leitos deve ser um número entre 0.0 e 1.0 (1.0 = 100%)
        elsif taxa_de_ocupacao_de_leitos < 0 || taxa_de_ocupacao_de_leitos > 1
            return "A taxa de ocupação de leitos está incorreta! Tente novamente"
    end
    
    #- FASE AZUL: quando que a taxa de vacinação estiver acima de 80% (percentual de imunização coletiva)
    if taxa_de_vacinacao > 0.80
        return " FASE AZUL "
    #- FASE VERDE: quando a taxa de ocupação de leitos estiver abaixo ou igual a 50%, porém com fator
    # de transmissão menor que 1.
    elsif taxa_de_ocupacao_de_leitos <= 0.50 && fator_de_transmissao < 1
        return " FASE VERDE "
    #- FASE AMARELA: quando a taxa de ocupação de leitos estiver acima de 50%, porém com fator de 
    #transmissão menor que 1.
    elsif taxa_de_ocupacao_de_leitos > 0.50 && taxa_de_ocupacao_de_leitos < 0.65 && fator_de_transmissao < 1
        return " FASE AMARELA "
    #- FASE LARANJA: quando a taxa de ocupação de leitos estiver acima de 65%, porém com fator de 
    #transmissão menor que 1.
    elsif taxa_de_ocupacao_de_leitos > 0.65 && taxa_de_ocupacao_de_leitos < 0.80 && fator_de_transmissao < 1
        return " FASE LARANJA "
    #- FASE VERMELHA: quando a taxa de ocupação de leitos estiver acima de 80% ou quando o fator de 
    #transmissão for maior ou igual a 1.
    elsif taxa_de_ocupacao_de_leitos > 0.80 && taxa_de_ocupacao_de_leitos <= 0.90 || fator_de_transmissao >= 1
        return " FASE VERMELHA "
    #- FASE ROXA: quando a taxa de ocupação de leitos estiver acima de 90%.
    elsif taxa_de_ocupacao_de_leitos > 0.90
        return " FASE ROXA"
    end
end

print "Informe o valor da taxa de vacinação atual:  "
taxa_de_vacinacao = gets.to_f
puts

print "Informe o valor de trasmissão atual:  "
fator_de_transmissao = gets.to_f
puts

print "Informe a taxa de ocupação de leitos:  "
taxa_de_ocupacao_de_leitos = gets.to_f
puts

taxa_total = fase_pandemica(taxa_de_vacinacao, fator_de_transmissao, taxa_de_ocupacao_de_leitos)
puts taxa_total

puts
puts
#testes
puts " Testando o sistema com outros valores "
puts
puts fase_pandemica(0.81 , 0.1 , 0.2) #FASE AZUL
puts fase_pandemica(0.2 , 0.8 , 0.4) #FASE VERDE
puts fase_pandemica(0.1 , 0.8 , 0.6) #FASE AMARELA
puts fase_pandemica(0.1 , 0.2 , 0.67) #FASE LARANJA
puts fase_pandemica(0.1 , 0.8 , 0.82) #FASE VERMELHA 
puts fase_pandemica(0.6 , 0.8 , 0.92) #FASE ROXA




#Exercício 06
#Estamos vivendo uma pandemia e o governador pediu um sistema para indicar qual a cor da 
#fase pandêmica em que está o Estado.
#A cor da fase pandêmica é definida baseada em três valores:
#1) A taxa de vacinação da população.
#2) O fator de transmissão do vírus.
#3) A taxa de ocupação dos leitos de UTI.
#As regras para definição de cada fase são as seguintes:
#- FASE AZUL: quando que a taxa de vacinação estiver acima de 80% (percentual de imunização coletiva)
#- FASE VERDE: quando a taxa de ocupação de leitos estiver abaixo ou igual a 50%, porém com fator
# de transmissão menor que 1.
#- FASE AMARELA: quando a taxa de ocupação de leitos estiver acima de 50%, porém com fator de 
#transmissão menor que 1.
#- FASE LARANJA: quando a taxa de ocupação de leitos estiver acima de 65%, porém com fator de 
#transmissão menor que 1.
#- FASE VERMELHA: quando a taxa de ocupação de leitos estiver acima de 80% ou quando o fator de 
#transmissão for maior ou igual a 1.
#- FASE ROXA: quando a taxa de ocupação de leitos estiver acima de 90%.
#Para atender o sistema, defina uma função chamada 'fase_pandemica' que deve receber 
#três parâmetros (taxa de vacinação, fator de transmissão e taxa de ocupação de leitos) e baseado nas
# regras descritas acima, retornar uma string com o nome da cor da fase da pandemia.
#Ex.: ao executar o seguinte comando:
#fase_pandemica(0.1, 0.7, 0.5)
#Deve retornar a string "VERDE".
#Obs.: validar os parâmetros, considerando as seguintes regras:
#- taxa de vacinação deve ser um número entre 0.0 e 1.0 (1.0 = 100%)
#- fator de transmissão dever ser um número maior ou igual a zero
#- taxa de ocupação de leitos deve ser um número entre 0.0 e 1.0 (1.0 = 100%)
#Se houver alguma invalidação nas regras acima, retornar uma string que descreva a regra que foi invalidada.
#Obs. 2: escreva testes para demonstrar que o sistema está funcionando