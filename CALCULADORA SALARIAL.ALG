Algoritmo "Calculadora Salarial"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   :
// Descrição   : A seguinte aplicação têm o intuito de realizar o cálculo do salário líquido
// Autor(a)    :
// Data atual  : 20/10/2023
Var
   i,j: inteiro
   nome: caractere
   verificador: inteiro
   salarioBruto: real
   salarioLiquido: real
   INSS, IRRF, IRRFDescontado, FGTSDescontado, INSSDescontado: real


Procedimento Iniciar()
Var
Inicio
   limpatela
   Timer(130)
   escreval("Iniciando")
   para i de 0 ate 9 faca
      escreva(".")
   fimpara
   limpatela
   escreval()
   escreval("Digite seu nome: ")
   leia(nome)
   limpatela
   escreval("Digite seu salário: ")
   leia(salarioBruto)
   INSS <- 0.075
   se salarioBruto <= 2571.29 entao
      INSS <- 0.09
   senao
      se salarioBruto <= 3856.94 entao
         INSS <- 0.12
      senao
         INSS <- 0.14
      fimse
   fimse

   Menu()

Fimprocedimento

Procedimento iniciarRapido()
Var
Inicio
   Timer(130)
   escreval("Iniciando")
   para i de 0 ate 9 faca
      escreva(".")
   fimpara
   limpatela
   escreval()
   limpatela
   escreval("Digite seu salário: ")
   leia(salarioBruto)
   INSS <- 0.075
   se salarioBruto <= 2571.29 entao
      INSS <- 0.09
   senao
      se salarioBruto <= 3856.94 entao
         INSS <- 0.12
      senao
         INSS <- 0.14
      fimse
   fimse

   Menu()

Fimprocedimento



Procedimento calculoDescontos()
Var

Inicio
   FGTSDescontado <- salarioBruto * 0.08
   INSSDescontado <- salarioBruto * INSS
   salarioLiquido <- (salarioBruto - (FGTSDescontado+INSSDescontado+IRRFDescontado))
   mostrarResultados()
Fimprocedimento

Procedimento Menu()
Var
   opcao: inteiro
Inicio
   Timer(130)
   limpatela
   escreval("Carregando")
   para i de 0 ate 9 faca
      escreva(".")
   fimpara
   limpatela
   escreval()
   escreval("Seja bem-vindo(a), ",nome,"!")
   escreval("----------------------------------")
   escreval("             OPÇÕES:")
   escreval("[1] Verificar descontos. ")
   escreval("[2] Trocar usuário. ")
   escreval("[3] Sair. ")
   leia(opcao)
   escolha(opcao)
   caso 1
      calculoDescontos()
   caso 2
      Iniciar()
   caso 3
      interrompa
   fimescolha
Fimprocedimento

Procedimento mostrarResultados()
Var
Inicio
   se salarioLiquido <= 2212.00 entao
      IRRFDescontado <- 0
   senao
      se (salarioLiquido <= 2826.65) ou (salarioLiquido >= 2212.01) entao
         IRRFDescontado <- salarioLiquido * 0.075
      senao
         se (salarioLiquido <= 3751.05) ou (salarioLiquido >= 2826.66) entao
            IRRFDescontado <- salarioLiquido * 0.15
         senao
            se (salarioLiquido <= 4664.68) ou (salarioLiquido >= 3451.06) entao
               IRRFDescontado <- salarioLiquido * 0.225
            senao
               se (salarioLiquido >= 4664.69) entao
                  IRRFDescontado <- salarioLiquido * 0.275
               fimse
            fimse
         fimse
      fimse
   fimse
   escreval("          RESULTADOS:")
   escreval("----------------------------------")
   escreval("Salário Bruto: R$",salarioBruto)
   escreval("Desconto INSS: R$",INSSDescontado)
   escreval("Saiba mais: o desconto do Instituto Nacional do Seguro Social (INSS) se refere ao pagamento da aposentadoria e demais benefícios aos trabalhadores brasileiros, com exceção de servidores públicos. Fonte: eu")
   escreval()
   escreval("----------------------------------")
   escreval("Desconto FGTS: R$",FGTSDescontado)
   escreval("Saiba mais: o desconto do Fundo de Garantia do Tempo de Serviço (FGTS) é uma poupança aberta pela empresa em nome do trabalhador que funciona como uma garantia para protegê-lo em caso de demissão sem justa causa.")
   escreval()
   escreval("----------------------------------")
   escreval("Desconto IRRF: R$",IRRFDescontado)
   escreval("Saiba mais: o desconto do Imposto de Renda Retido na Fonte (IRRF) é uma obrigação tributária destinada à Receita Federal que pode ser cobrada tanto de Pessoas Físicas (PF) quanto de Pessoas Jurídicas (PJ). Na prática, ele funciona como uma antecipação do Imposto de Renda, com o objetivo de simplificar a declaração anual.")
   escreval()
   escreval("Deseja repetir operação? ")
   escreval("[1]Sim  [2]Não")
   leia(verificador)
   se verificador = 1 entao
      iniciarRapido()
   senao
      Menu()
   fimse

Fimprocedimento


Inicio
   Iniciar()
Fimalgoritmo
