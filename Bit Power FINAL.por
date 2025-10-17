programa {

//INCLUSÃO DE BIBLIOTECAS NECESSÁRIAS
  inclua biblioteca Util

//FUNÇÃO TELA DE LOADING
  funcao telaLoading(){
      
      limpa()
      escreva("\nPROCESSANDO REQUISIÇÃO\n\n")
      escreva("[██░░░░░░░░] 20%")
      Util.aguarde(500)
      limpa()
      escreva("\nPROCESSANDO REQUISIÇÃO\n\n")
      escreva("[█████░░░░░] 50%")
      Util.aguarde(500)
      limpa()
      escreva("\nPROCESSANDO REQUISIÇÃO\n\n")
      escreva("[██████████] 100% ✅")
      Util.aguarde(700)
      limpa()
  }

//VARIAVÉS GLOBAIS CADASTRADAS
  cadeia produto[12]
  inteiro codigo[12]
  real valor[12]
  inteiro estoque[12]
  inteiro entrada[12]
  inteiro saida[12]
  inteiro totalProdutos = 0

//FUNÇÃO AGUARDAR
  funcao aguarde(){
    cadeia pausa
    escreva("\n\nPRESSIONE 'ENTER' PARA VOLTAR AO MENU...")
    leia(pausa)
    limpa()}

//FUNÇÃO MENU PRINCIPAL
  funcao inteiro menuPrincipal(){
    inteiro opcao
    escreva("\n╔════════════════════════════════════════════╗\n")
		escreva("║       SISTEMA DE ESTOQUE - BiT Power       ║\n")
		escreva("╚════════════════════════════════════════════╝\n")
		escreva("\n📋 MENU DE OPÇÕES:\n")
		escreva("[1] CADASTRAR PRODUTOS\n")
    escreva("[2] LISTAR PRODUTOS\n")
    escreva("[3] ATUALIZAR ESTOQUE\n")
    escreva("[4] VALOR TOTAL DE ESTOQUE CADASTRADO\n")
    escreva("[5] EXIBIR O PRODUTO DE MAIOR/MENOR QUANTIDADE\n")
    escreva("[6] ENCERRAR SISTEMA\n")
    escreva("\n➤ ESCOLHA UMA OPÇÃO: ")
    leia(opcao)
    retorne opcao}

//FUNÇÃO CADASTRAR PRODUTOS
  funcao cadastrar_produto(){
    inteiro opcao
    faca{
        limpa()
        escreva("\n╔════════════════════════════════════════════╗\n")
		    escreva("║              CADASTRO DE ITENS             ║\n")
		    escreva("╚════════════════════════════════════════════╝\n")
        escreva("\n📋 MENU DE OPÇÕES:\n")
        escreva("[1] CADASTRAR NOVO ITEM\n")
        escreva("[2] VOLTAR MENU PRINCIPAL\n")
        escreva("\n➤ ESCOLHA UMA OPÇÃO: ")
        leia(opcao)
        
        se(opcao == 1){
        se(totalProdutos >= 12){
        escreva("\n❌ LIMITE DE PRODUTOS ATINGIDO! (MÁXIMO: 12) ❌\n")
        aguarde()}
        senao{
            limpa()
            escreva("\n╔════════════════════════════════════════════╗\n")
		        escreva("║                   NOVO ITEM                ║\n")
		        escreva("╚════════════════════════════════════════════╝\n\n")
            escreva("[1] NOME DO PRODUTO: ")
            leia(produto[totalProdutos])

            escreva("[2] CÓDIGO DO PRODUTO (APENAS NÚMEROS INTEIROS): ")
            leia(codigo[totalProdutos])

            escreva("[3] QUANTIDADE DO PRODUTO: ")
            leia(estoque[totalProdutos])
            enquanto(estoque[totalProdutos] < 0){
              escreva("❌ IMPOSSÍVEL ADICIONAR QUANTIDADE NEGATIVA ❌\n")
              ("DIGITE NOVAMENTE: ")
              leia(estoque[totalProdutos])}
                
            escreva("[4] VALOR UNITÁRIO DO PRODUTO (R$): ")
            leia(valor[totalProdutos])
            enquanto(valor[totalProdutos] < 0){
              escreva("❌ IMPOSSÍVEL ADICIONAR VALOR NEGATIVO ❌\n")
              escreva("DIGITE NOVAMENTE: ")
              leia(valor[totalProdutos])}

            totalProdutos++

            telaLoading()
                
            escreva("\n✅ PRODUTO CADASTRADO COM SUCESSO! ✅\n")
            aguarde()}}
        senao se(opcao <0 ou opcao>2){
            escreva("\n❌ OPÇÃO INVÁLIDA! TENTE NOVAMENTE. ❌\n")
            aguarde()}
        
    }enquanto(opcao != 2)
    limpa()}

//FUNÇÃO LISTAR PRODUTOS
  funcao listarProdutos(){
    se(totalProdutos==0){
      escreva("\n❌ NENHUM PRODUTO CADASTRADO ❌\n")
      aguarde()}
    senao{
      limpa()
      escreva("\n╔════════════════════════════════════════════╗\n")
		  escreva("║              PRODUTOS CADASTRADOS          ║\n")
		  escreva("╚════════════════════════════════════════════╝")
    para(inteiro i=0;i<totalProdutos;i++){
      escreva("\n\n═════ PRODUTO [",i+1,"] ═════\n")
      escreva("PRODUTO: ",produto[i],"\n")
      escreva("CÓDIGO: ",codigo[i],"\n")
      escreva("ESTOQUE: ",estoque[i],"\n")
      escreva("VALOR UNITÁRIO: R$",valor[i],"\n")
      escreva("ENTRADAS: ",entrada[i],"\n")
      escreva("SAÍDAS: ",saida[i],"\n")}
      aguarde()}}

//FUNÇÃO ATUALIZAR ESTOQUE
  funcao atualizarEstoque(){
    inteiro movimentacao,opcao,opcao2
    cadeia find_code
    inteiro indice=-1
    
    faca{
      limpa()
      escreva("\n╔════════════════════════════════════════════╗\n")
	    escreva("║              ATUALIZAR ESTOQUE             ║\n")
	    escreva("╚════════════════════════════════════════════╝\n")
      escreva("\n📋 MENU DE OPÇÕES:\n")
      escreva("[1] ATUALIZAR ESTOQUE POR CÓDIGO DE ITEM\n")
      escreva("[2] VOLTAR MENU PRINCIPAL\n")
      escreva("\n➤ ESCOLHA UMA OPÇÃO: ")   
      leia(opcao)

        se(opcao==1){
          limpa()
        escreva("\n╔════════════════════════════════════════════╗\n")
		    escreva("║              ATUALIZAR ESTOQUE             ║\n")
		    escreva("╚════════════════════════════════════════════╝\n")
        escreva("DIGITE O CÓDIGO DO ITEM A SER MOVIMENTADO\n")
        escreva("\n➤ CÓDIGO: ")
        leia(find_code)
          para(inteiro i=0;i<totalProdutos;i++){
            se(codigo[i]==find_code){
              indice = i
              pare
            }
          }
          se(indice!=-1){
            limpa()
            escreva("\n╔════════════════════════════════════════════╗\n")
		        escreva("║              ATUALIZAR ESTOQUE             ║\n")
		        escreva("╚════════════════════════════════════════════╝\n")
            escreva("PRODUTO ENCONTRADO: [",produto[indice],"]\n")
            escreva("ESTOQUE ATUAL: [",estoque[indice],"]\n\n")
            escreva("[1] RECEBMENTO DE NOTA FISCAL (ENTRADA)\n")
            escreva("[2] VENDA AO CONSUMIDOR FINAL (SAÍDA)")
            escreva("\n➤ ESCOLHA UMA OPÇÃO: ")
            leia(opcao2)

            se(opcao2 <1 ou opcao2>2){
            escreva("\n❌ OPÇÃO INVÁLIDA! TENTE NOVAMENTE. ❌\n")
            aguarde()}

            se(opcao2==1){
              escreva("\nENTRADA DE NOTA FISCAL\n")
              escreva("DIGITE A QUANTIDADE A INCLUIR")
               escreva("\n➤ QUANTIDADE: ")
              leia(movimentacao)
              enquanto(movimentacao<0){
                escreva("\n❌ IMPOSSÍVEL ADICIONAR QUANTIDADE NEGATIVA ❌\n")
                escreva("DIGITE NOVAMENTE: ")
                leia(movimentacao)}

              estoque[indice]=estoque[indice]+movimentacao //LÓGICA PARA ENTRADA DE ITENS NO ESTOQUE
              entrada[indice]=entrada[indice]+1 //LÓGICA PARA ADICIONAR AO CONTADOR DE MOVIMENTAÇÕES
              
              escreva("\n\n✅ QUANTIDADE ACRESCENTADA ✅\n")
              escreva("O NOVO ESTOQUE DO PRODUTO [",produto[indice],"] É: [",estoque[indice],"]\n")
              aguarde()
            }
            se(opcao2==2){
              escreva("\nVENDA AO CONSUMIDOR FINAL\n")
              escreva("DIGITE A QUANTIDADE A RETIRAR")
              escreva("\n➤ QUANTIDADE: ")
              leia(movimentacao)
              enquanto(movimentacao<0 ou movimentacao>estoque[indice]){
                escreva("\n❌ IMPOSSÍVEL RETIRAR ESSA QUANTIDADE ❌\n")
                escreva("DIGITE NOVAMENTE: ")
                leia(movimentacao)}
              

                estoque[indice]=estoque[indice]-movimentacao //LÓGICA PARA SAÍDA DE ITENS NO ESTOQUE
                saida[indice]=saida[indice]+1 //LÓGICA PARA ADICIONAR AO CONTADOR DE MOVIMENTAÇÕES

                escreva("\n\n✅ QUANTIDADE RETIRADA ✅\n")
                escreva("O NOVO ESTOQUE DO PRODUTO [",produto[indice],"] É: [",estoque[indice],"]\n")
                aguarde()
            }
            se(opcao2<1 ou opcao2>2){
              escreva("\n❌ OPÇÃO INVÁLIDA ❌\n")
              aguarde()
            }
          }
          senao{
            escreva("\n❌ CÓDIGO NÃO ENCONTRADO ❌\n")
            aguarde()
          }
        }

    }enquanto(opcao!=2)
    limpa()
    }


 //FUNÇÃO PARA SOMAR VALOR TOTAL DO ESTOQUE
  funcao somar_estoque(){
    inteiro estoqueTotal = 0
    real valorTotalEstoque = 0.0
    limpa()
    se(totalProdutos==0){
      escreva("\n❌ NENHUM PRODUTO CADASTRADO ❌\n")
      aguarde()}

      senao{
    escreva("VALOR TOTAL DO ESTOQUE CADASTARDO\n")
    para(inteiro i=0;i<totalProdutos;i++){
      inteiro quantidade = estoque[i]
      real preco = valor[i]

      estoqueTotal = estoqueTotal + quantidade
      valorTotalEstoque = valorTotalEstoque + (quantidade * preco)
      


    }
    escreva("\n✅ QUANTIDADE TOTAL DE ITENS NO ESTOQUE: ", estoqueTotal, "\n")
    escreva("✅ VALOR TOTAL DO ESTOQUE: R$", valorTotalEstoque, "\n")
    aguarde()
   }
  }


  funcao maior_menor(){
  inteiro maior_quant = 0
  inteiro menor_quant = 0
  inteiro indice_maior = 0
  inteiro indice_menor = 0
  inteiro opcao
  
  faca{
    limpa()
    escreva("\n╔════════════════════════════════════════════╗\n")
    escreva("║       EXIBIR O MAIOR OU MENOR PRODUTO      ║\n")
    escreva("╚════════════════════════════════════════════╝\n")
    escreva("[1] EXIBIR PRODUTO DE MAIOR QUANTIDADE\n")
    escreva("[2] EXIBIR PRODUTO DE MENOR QUANTIDADE\n")
    escreva("[3] VOLTAR AO MENU PRINCIPAL\n")
    escreva("\n➤ ESCOLHA UMA OPÇÃO: ")
    leia(opcao)
    
    se(opcao==1){
      se(totalProdutos<=0){
        escreva("\n❌ NENHUM PRODUTO CADASTRADO ❌\n")
        aguarde()
      }
      senao{
        maior_quant = estoque[0]
        indice_maior = 0

        para(inteiro i=1; i<totalProdutos; i++){
          se(estoque[i] > maior_quant){
            maior_quant = estoque[i]
            indice_maior = i
          }
        }
        
        escreva("\n✅ PRODUTO COM MAIOR ESTOQUE ✅\n")
        escreva("═══════════════════════════════\n")
        escreva("PRODUTO: ", produto[indice_maior], "\n")
        escreva("CÓDIGO: ", codigo[indice_maior], "\n")
        escreva("QUANTIDADE: ", maior_quant, "\n")
        aguarde()
      }
    }
    
    se(opcao==2){
      se(totalProdutos<=0){
        escreva("\n❌ NENHUM PRODUTO CADASTRADO ❌\n")
        aguarde()
      }
      senao{
        menor_quant = estoque[0]
        indice_menor = 0
       
        para(inteiro i=1; i<totalProdutos; i++){
          se(estoque[i] < menor_quant){  
            menor_quant = estoque[i]
            indice_menor = i
          }
        }
        
        escreva("\n✅ PRODUTO COM MENOR ESTOQUE ✅\n")
        escreva("═══════════════════════════════\n")
        escreva("PRODUTO: ", produto[indice_menor], "\n")
        escreva("CÓDIGO: ", codigo[indice_menor], "\n")
        escreva("QUANTIDADE: ", menor_quant, "\n")
        aguarde()
      }
    }
    
    se(opcao<1 ou opcao>3){
      escreva("\n❌ OPÇÃO INVÁLIDA! TENTE NOVAMENTE. ❌\n")
      aguarde()
    }
    
  }enquanto(opcao!=3)
  limpa()
}





//FUNÇÃO PRINCIPAL
  funcao inicio() {

    para(inteiro i=0;i<12;i++){
      codigo[i]=0
      entrada[i]=0
      saida[i]=0
    }

  inteiro opcao
 
 faca{  
  opcao = menuPrincipal()
  escolha (opcao){
    caso 1:
    cadastrar_produto()
    pare
    caso 2:
    listarProdutos()
    pare
    caso 3:
    atualizarEstoque()
    pare
    caso 4:
    somar_estoque()
    pare
    caso 5:
    maior_menor()
    pare
    caso 6:
    pare
    }
    }enquanto (opcao!=6)

    telaLoading()
    escreva("\n╔════════════════════════════════════════════╗\n")
		escreva("║              PROGRAMA ENCERRADO            ║\n")
		escreva("╚════════════════════════════════════════════╝\n\n")
  }
}