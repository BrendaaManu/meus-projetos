programa
{
 const inteiro TAM=3
 cadeia pilha[TAM]
 inteiro topo

 	
funcao inicializar(){
 	topo=-1	
 }


    funcao  inteiro verificarCheia(){
    se (topo == TAM-1){
    retorne 1
   }senao{
   
    retorne 0
 }
    }
     funcao inteiro verificarVazia(){
    se (topo == -1){
    retorne 1
   }senao{
    retorne 0
     }
    }
    funcao empilha(){ 
    	cadeia val
    	inteiro pilhaCheia,i=0
    	pilhaCheia = verificarCheia()
     se(pilhaCheia==0){
  
    	escreva("digite a palavra: ")
    	leia(val)
    	topo++
     pilha[topo]=val
     }senao{
    escreva("\n*************PILHA CHEIA*************\n")
     }
    }funcao desempilha(){
    	inteiro pilhaVazia
    	pilhaVazia=verificarVazia()
    	se(pilhaVazia==1){
    	escreva("\n**************PILHA VAZIA**************\n")
    	}senao{
    	topo--	
    	}
    
    	}
    	
    funcao imprimir(){
    	escreva("\n")
    	escreva("\n***************PILHA***************\n")
    	para(inteiro conta =0;conta<=topo;conta++){
		escreva(" ",pilha[conta])
    	}
    	escreva("\n")
    	}

	
	funcao inicio()
	{
	inteiro num,i=0
	inicializar()
	desempilha()
	empilha()
	empilha()	
	empilha()
	empilha()	
	imprimir()
	faca{
     num=0
     escreva("\n Quer desempilhar uma palavra? \n")
     escreva("1) SIM          2) NAO\n")
     leia(num)
     escolha(num)
     {
     	caso 1:
     	desempilha()
	     imprimir()
	    
	     pare

	     caso 2:
	     i++
	     pare
	     
     }
     escreva("\n Quer empilhar uma palavra? \n")
     escreva("1) SIM          2) NAO\n")
     leia(num)
     
     escolha(num)
     {
     	caso 1:
          empilha()	
	     imprimir()
	    
	     pare

	     caso 2:
	     i++
	     pare
	     
     }
     
		
	}enquanto(i<2)

	
	imprimir()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1741; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */