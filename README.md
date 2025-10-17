# 📦 Sistema de Estoque - BiT Power

Um sistema completo de gerenciamento de estoque desenvolvido em **Portugol**, ideal para controlar produtos, quantidades e valores de forma simples e intuitiva.

## 🎯 Funcionalidades

✅ **Cadastro de Produtos** - Adicione novos produtos com nome, código, quantidade e valor unitário  
✅ **Listagem de Produtos** - Visualize todos os produtos cadastrados com detalhes completos  
✅ **Atualizar Estoque** - Registre entradas (notas fiscais) e saídas (vendas)  
✅ **Valor Total do Estoque** - Calcule automaticamente o valor total do inventário  
✅ **Produtos Extremos** - Identifique produtos com maior e menor quantidade em estoque  
✅ **Interface Amigável** - Menu navegável com validações de entrada  

## 💡 Características Técnicas

- **Linguagem**: Portugol
- **Limite de Produtos**: 12 itens simultâneos
- **Campos por Produto**:
  - Nome do produto
  - Código único
  - Quantidade em estoque
  - Valor unitário (R$)
  - Contador de entradas
  - Contador de saídas

## 🚀 Como Usar

### Executar o Programa
1. Copie o arquivo do código Portugol para seu ambiente de desenvolvimento (Portugol Studio recomendado)
2. Compile e execute o programa
3. Use o menu interativo para navegar entre as opções

### Menu Principal
```
[1] CADASTRAR PRODUTOS
[2] LISTAR PRODUTOS
[3] ATUALIZAR ESTOQUE
[4] VALOR TOTAL DE ESTOQUE CADASTRADO
[5] EXIBIR O PRODUTO DE MAIOR/MENOR QUANTIDADE
[6] ENCERRAR SISTEMA
```

### Exemplo de Fluxo
1. Cadastre um produto (ex: "Teclado Mecânico")
2. Registre uma entrada de estoque via nota fiscal
3. Realize uma venda (saída de estoque)
4. Consulte o valor total do inventário
5. Veja qual produto tem mais/menos itens

## 📋 Requisitos

- **Portugol Studio** ou interpretador Portugol compatível
- Biblioteca `Util` (incluída no código)

## 🔒 Validações Implementadas

- Impede cadastro de mais de 12 produtos
- Rejeita quantidades e valores negativos
- Valida código do produto na atualização de estoque
- Verifica quantidade disponível antes de retirada
- Controla opções inválidas do menu

## 📝 Estrutura de Dados

```
Arrays Globais:
- produto[12]    // Nome dos produtos
- codigo[12]     // Código único (inteiro)
- valor[12]      // Valor unitário (real)
- estoque[12]    // Quantidade atual (inteiro)
- entrada[12]    // Contador de entradas (inteiro)
- saida[12]      // Contador de saídas (inteiro)
- totalProdutos  // Quantidade de produtos cadastrados
```

## 🎨 Interface

O programa conta com:
- Telas de carregamento (loading bar)
- Bordas decorativas em ASCII
- Mensagens de confirmação e erro
- Separadores visuais para melhor leitura

## ⚠️ Limitações

- Máximo de 12 produtos simultâneos
- Dados não persistem após fechamento (sem banco de dados)
- Funciona em ambiente console/terminal

## 🔮 Melhorias Futuras

- Implementar persistência de dados em arquivo
- Aumentar limite de produtos
- Adicionar busca avançada de produtos
- Gerar relatórios em PDF
- Interface gráfica

## 👨‍💻 Autor

Desenvolvido como projeto de gerenciamento de estoque em Portugol.

## 📄 Licença

Este projeto está disponível para fins educacionais e comerciais.

---

**Versão**: 1.0  
**Status**: ✅ Completo e Funcional
