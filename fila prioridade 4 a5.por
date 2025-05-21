programa
{
const inteiro TAM=4
cadeia nomeSolic[TAM]
inteiro prioridade[TAM]
inteiro topo,i=1
	 funcao comecar(){
	 topo=-1	
	}
	
	
	 funcao Mostrar(){
	 escreva("\n****************CHAMADOS NA FILA****************:\n")
	 para (inteiro j = 0; j <= topo; j++){
	 escreva("\n", j+1, ") Nome: ", nomeSolic[j], " | Prioridade: ", prioridade[j], "\n")
	}
	}
	 funcao inteiro VerificarV(){
	 se(topo==-1){
	 retorne 1
	 }senao{
	 retorne 0	
	 }
	 }
	 funcao inteiro VerificarC(){
	 se(topo==TAM-1){
	 	retorne 1
	 }senao{
	 	retorne 0	
	 }
	 }
      funcao desempilhar(){
      inteiro posicaoV
      posicaoV = VerificarV()
      se(posicaoV==1){
     escreva("\n****************FILA VAZIA****************\n")
      }senao{
      --topo 	
      }
      	
      }
      funcao empilhar(){
      inteiro filaC
      cadeia nome
      inteiro pri
      
      filaC = VerificarC()
      se(filaC==0){
      escreva("\n")	
      escreva("\n-------------------", i, "º Chamado-------------------\n")
      escreva("\nDigite o nome do solicitante: ")	
      leia(nome)
      escreva("Digite prioridade (1 a 5) :")
      leia(pri)
      se (pri < 1 ou pri > 5) {
      escreva(" PRIORIDADE INVALIDA!,deve ser de 1 a 5.\n")
      } senao {
      topo++
      nomeSolic[topo]=nome
      prioridade[topo]=pri
      i++
           }
      }senao{
      escreva("\n****************FILA CHEIA****************:\n")
        }
      }
      funcao mostrarPrioritarios(){
      inteiro cont=0
      para(inteiro j=0;j <= topo; j++){
      se(prioridade[j]==4 ou prioridade[j]==5){
      cont++
      }
      }
      escreva("\nQuantidade de chamados com prioridade 4 ou 5 :",cont,"\n")	
     }
      
	 funcao inicio(){
	inteiro rep
	inteiro z

	comecar()
	desempilhar()
	para(inteiro v=0;v < TAM; v++){
	empilhar()
	}
	Mostrar()
	
	faca{
	z=0
	escreva("\nChamado prioridade foi resolvido?\n")	
	escreva("1)SIM     2)NAO\n")
	leia(rep)
	escolha(rep){
	caso 1:
	desempilhar()
	Mostrar()
	mostrarPrioritarios()
	pare
	caso 2:
	z++
	pare
	}
	escreva("\nAdicionar novo chamado?\n")
	escreva("1)SIM    2)NAO\n")
	leia(rep)
	escolha(rep){
	caso 1:
	desempilhar()
	Mostrar()
	mostrarPrioritarios()
	pare
	caso 2:
	z++
	pare
	}
	}enquanto (z!=2)

     Mostrar()
     mostrarPrioritarios()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2151; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */