Algoritmo "Calculadora Salarial"
// Disciplina   : [Linguagem e L�gica de Programa��o]
// Professor   :
// Descri��o   : A seguinte aplica��o t�m o intuito de realizar o c�lculo do sal�rio l�quido
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
   escreval("Digite seu sal�rio: ")
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
   escreval("Digite seu sal�rio: ")
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
   escreval("             OP��ES:")
   escreval("[1] Verificar descontos. ")
   escreval("[2] Trocar usu�rio. ")
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
   escreval("Sal�rio Bruto: R$",salarioBruto)
   escreval("Desconto INSS: R$",INSSDescontado)
   escreval("Saiba mais: o desconto do Instituto Nacional do Seguro Social se refere ao pagamento da aposentadoria e demais benef�cios aos trabalhadores brasileiros, com exce��o de servidores p�blicos. Fonte: eu")
   escreval()
   escreval("----------------------------------")
   escreval("Desconto FGTS: R$",FGTSDescontado)
   escreval("Saiba mais: o desconto do .")
   escreval()
   escreval("----------------------------------")
   escreval("Desconto IRRF: R$",IRRFDescontado)
   escreval("Saiba mais: o desconto dsfsdagafdsagfdga")
   escreval()
   escreval("Deseja repetir opera��o? ")
   escreval("[1]Sim  [2]N�o")
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