# Novo no Neovim com NeoMood - Guia Completo para Iniciantes

Bem-vindo ao Neovim com a configuração NeoMood! Este guia irá ensinar tudo que você precisa saber para começar com esta configuração poderosa.

**Antes de começar**: Este tutorial assume que você tem o NeoMood instalado. Abra um terminal e execute `nvim` para verificar se funciona.

## Índice
1. [Lição 1: Movimento Básico](#lição-1-movimento-básico)
2. [Lição 2: Editando Texto](#lição-2-editando-texto)
3. [Lição 3: Seleção Visual](#lição-3-seleção-visual)
4. [Lição 4: Objetos de Texto](#lição-4-objetos-de-texto)
5. [Lição 5: Pesquisa e Navegação](#lição-5-pesquisa-e-navegação)
6. [Lição 6: Envolvimento de Texto (Nvim-Surround)](#lição-6-envolvimento-de-texto-nvim-surround)
7. [Lição 7: Macros Básicos](#lição-7-macros-básicos)
8. [Lição 8: Múltiplos Cursores (Especial do NeoMood)](#lição-8-múltiplos-cursores-especial-do-neomood)
9. [Lição 9: Operações de Copiar e Colar](#lição-9-operações-de-copiar-e-colar)
10. [Recursos do NeoMood](#recursos-do-neomood)
11. [Resumo](#resumo)

## O que é NeoMood?

NeoMood é uma configuração moderna do Neovim que torna a edição mais rápida e intuitiva. Principais características:

- **Tecla Líder**: `<Espaço>` (sua tecla de comando principal)
- **Salto Flash**: Pressione `s` para pular para qualquer lugar na tela
- **Recursos Inteligentes**: Auto-completar, destaque de sintaxe, explorador de arquivos

## Começando

**Importante**: Este tutorial ensina você a usar NeoMood. A coisa mais importante a lembrar é que pressionar `<ESC>` sempre te tirará de problemas.

## Entendendo os Princípios Fundamentais do Neovim

O Neovim segue um sistema de gramática simples mas poderoso que o torna incrivelmente eficiente uma vez que você entende o padrão.

### A Gramática do Neovim: [CONTAGEM] + AÇÃO + MOVIMENTO

Os comandos do Neovim seguem esta estrutura:
- **CONTAGEM** (opcional): Quantas vezes repetir
- **AÇÃO**: O que fazer (deletar, alterar, copiar, etc.)
- **MOVIMENTO**: Onde operar (palavra, linha, caractere, etc.)

### Ações Básicas
```
d - deletar
c - alterar (deletar e entrar no modo inserção)
y - copiar
v - seleção visual
```

### Movimentos Básicos
```
w - palavra para frente
b - palavra para trás
e - fim da palavra
$ - fim da linha
0 - início da linha
j - descer uma linha
k - subir uma linha
```

### Exemplos da Gramática em Ação

**Movimento com Contagem:**
- `3w` - mover 3 palavras para frente
- `5j` - mover 5 linhas para baixo
- `2b` - mover 2 palavras para trás

**Ação + Movimento:**
- `dw` - deletar palavra
- `cw` - alterar palavra
- `y$` - copiar até o fim da linha
- `d0` - deletar até o início da linha

**Contagem + Ação + Movimento:**
- `3dw` - deletar 3 palavras
- `2cw` - alterar 2 palavras
- `5dd` - deletar 5 linhas
- `3yy` - copiar 3 linhas

### Por que Esta Gramática é Poderosa

Uma vez que você aprende esse padrão, pode combinar qualquer contagem, ação e movimento:
- `d3w` - deletar 3 palavras para frente
- `c2j` - alterar 2 linhas para baixo
- `y5k` - copiar 5 linhas para cima
- `v3e` - selecionar visualmente 3 palavras até o fim

### Casos Especiais

Alguns comandos funcionam sozinhos:
- `dd` - deletar linha inteira
- `yy` - copiar linha inteira
- `cc` - alterar linha inteira
- `x` - deletar caractere sob o cursor

Esta gramática torna o Neovim incrivelmente expressivo e eficiente!

## Lição 1: Movimento Básico

### Lição 1.1: PRIMEIROS PASSOS

** Você já está no NeoMood lendo este tutorial! **

  1. Certifique-se de que sua tecla caps-lock NÃO esteja pressionada.

  2. Pressione a tecla <ESC> para ter certeza de que está no modo Normal.

  3. Mova seu cursor para a linha abaixo que diz "Linha de prática:"

  4. Digite: i <ENTER> para entrar no modo Inserção.

  5. Digite: Bem-vindo ao NeoMood!

  6. Pressione <ESC> para voltar ao modo Normal.

  7. Digite: u <ENTER> para desfazer suas alterações.

Linha de prática: (tente editar aqui)

NOTA: Você está agora no modo Normal. É aqui que a maioria dos comandos do NeoMood funcionam.

### Lição 1.2: MOVIMENTO BÁSICO DO CURSOR

** O cursor é movido usando as teclas de seta ou as teclas hjkl. **

	     ^
	     k		    Dica:  A tecla h está à esquerda e move para a esquerda.
    < h	 l >		   A tecla l está à direita e move para a direita.
	     j			   A tecla j parece uma seta para baixo
	     v

  1. Mova o cursor pelo texto até se sentir confortável.

  2. Segure a tecla para baixo (j) até ela repetir.

  3. Agora você sabe como ir para a próxima lição.

  4. Usando a tecla para baixo, mova-se para a Lição 1.3.

NOTA: Se você não tiver certeza sobre algo que digitou, pressione <ESC> para
      colocá-lo no modo Normal. Então redigite o comando que queria.

### Lição 1.3: MOVIMENTO POR PALAVRAS

** Pressione w para mover para o início da próxima palavra. **

  1. Mova o cursor para a linha abaixo marcada com --->.

  2. Pressione w para mover para o início da próxima palavra.

  3. Pressione 3w para mover três palavras para frente.

  4. Pressione b para mover para o início da palavra anterior.

  5. Pressione e para mover para o fim da palavra atual.

  6. Pressione 0 para mover para o início da linha.

  7. Pressione - ou $ para mover para o fim da linha. (Obs: - é apenas no NeoMood)

---> A raposa marrom pula sobre o cão preguiçoso

NOTA: No NeoMood, você também pode usar - em vez de $ para ir ao fim da linha.

### Lição 1.4: SALTO FLASH (Especial do NeoMood)

** Pressione s para pular para qualquer caractere na tela. **

  1. Mova o cursor para a linha abaixo marcada com --->.

  2. Pressione s para ativar o salto flash.

  3. Digite as letras 'pr' (você deve ver várias letras 'pr' destacadas).

  4. Digite a letra do rótulo para pular lá instantaneamente.

  5. Tente s novamente e pule para uma palavra diferente usando salto flash.

---> Agora tente alguns saltos rápidos da raposa marrom sobre o cão preguiçoso
---> Use esta linha para mais prática de salto flash com letras diferentes

NOTA: O salto flash é muito mais rápido que o movimento tradicional para longas distâncias!

### Lição 1.5: MOVIMENTO NO ARQUIVO

** Digite gg para ir para a primeira linha do arquivo. **

  1. Pressione G para ir para a última linha deste arquivo.

  2. Pressione gg para ir para a primeira linha deste arquivo.

  3. Digite 50G para ir para a linha 50.

  4. Digite 100G para ir para a linha 100.

  5. Pressione G para voltar à última linha.

  6. Pressione gg para voltar à primeira linha.

NOTA: Os números das linhas são mostrados no lado esquerdo da tela.

## Lição 2: Editando Texto

### Lição 2.1: COMANDOS DE EXCLUSÃO

** Digite dw para deletar uma palavra. **

  1. Mova o cursor para a linha abaixo marcada com --->.

  2. Mova o cursor para o início da palavra "uma".

  3. Digite dw para deletar a palavra.

  4. Mova o cursor para o início da palavra "algumas".

  5. Digite dw para deletar a palavra.

---> Há uma algumas palavras que você pode deletar desta linha.

NOTA: A linha deve agora mostrar: Há palavras que você pode deletar desta linha.

### Lição 2.2: MAIS COMANDOS DE EXCLUSÃO

** Digite dd para deletar uma linha inteira. **

  1. Mova o cursor para a segunda linha abaixo marcada com --->.

  2. Digite dd para deletar a linha inteira.

  3. A linha "Esta linha precisa ser deletada." deve ter sumido.

---> Esta linha está ok.
---> Esta linha precisa ser deletada.
---> Esta linha também está ok.

### Lição 2.3: EXCLUSÃO DE CARACTERES

** Digite x para deletar o caractere sob o cursor. **

  1. Mova o cursor para a linha abaixo marcada com --->.

  2. Mova o cursor para o primeiro 'r' em "Corrrija".

  3. Digite x para deletar o 'r' extra.

  4. Corrija os outros erros movendo o cursor e digitando x.

---> Corrrija os errrros nesttta sentennça.

NOTA: A linha deve agora mostrar: Corrija os erros nesta sentença.

### Lição 2.4: INSERÇÃO E SUBSTITUIÇÃO

** Digite i para inserir texto antes do cursor. **

  1. Mova o cursor para a linha abaixo marcada com --->.

  2. Mova o cursor para o espaço antes de "palavra".

  3. Digite i para entrar no modo de inserção.

  4. Digite: uma 

  5. Pressione <ESC> para voltar ao modo Normal.

---> Esta linha está faltando palavra.

NOTA: A linha deve agora mostrar: Esta linha está faltando uma palavra.

### Lição 2.5: MAIS FORMAS DE ENTRAR NO MODO INSERÇÃO

** Existem várias formas de entrar no modo Inserção. **

  1. Mova o cursor para a linha abaixo marcada com --->.

  2. Mova o cursor para o início da palavra "texto".

  3. Digite I (i maiúsculo) para inserir no início da linha.

  4. Digite: Início: 

  5. Pressione <ESC> para voltar ao modo Normal.

---> texto aqui precisa de algo no início

  6. Mova o cursor para o final da palavra "fim".

  7. Digite A (a maiúsculo) para acrescentar no final da linha.

  8. Digite:  - Pronto!

  9. Pressione <ESC> para voltar ao modo Normal.

---> Esta linha precisa de algo no fim

  10. Mova o cursor para qualquer lugar na linha abaixo.

  11. Digite o (o minúsculo) para abrir uma nova linha abaixo.

  12. Digite: Esta é uma nova linha abaixo.

  13. Pressione <ESC> para voltar ao modo Normal.

---> Posicione o cursor em qualquer lugar desta linha

  14. Digite O (o maiúsculo) para abrir uma nova linha acima.

  15. Digite: Esta é uma nova linha acima.

  16. Pressione <ESC> para voltar ao modo Normal.

NOTA: Agora você conhece i, I, a, A, o, O - as seis formas de entrar no modo Inserção!

### Lição 2.6: MODO SUBSTITUIÇÃO

** Digite r para substituir um único caractere. **

  1. Mova o cursor para a linha abaixo marcada com --->.

  2. Mova o cursor para o 'x' em "coxsas".

  3. Digite r e depois i para substituir o x por i.

  4. Mova para o 'x' em "dixite" e digite r depois g.

  5. Continue corrigindo os outros erros.

---> Para corrigir as coxsas erradaz, dixite r e o caractere correto.

NOTA: A linha deve ficar: Para corrigir as coisas erradas, digite r e o caractere correto.

## Lição 3: Seleção Visual

### Lição 3.1: SELEÇÃO VISUAL

** Digite v para iniciar a seleção visual. **

  1. Mova o cursor para a linha abaixo marcada com --->.

  2. Mova o cursor para o início da palavra "marrom".

  3. Digite v para iniciar a seleção visual.

  4. Mova o cursor para o fim da palavra "raposa" usando e.

  5. Digite y para copiar o texto selecionado.

  6. Mova o cursor para o fim da linha.

  7. Digite p para colar o texto copiado.

---> A raposa marrom pula sobre o cão preguiçoso.

A linha deve agora mostrar: A raposa marrom pula sobre o cão preguiçoso.marrom raposa

### Lição 3.2: SELEÇÃO DE LINHAS

** Digite V para selecionar linhas inteiras. **

  1. Mova o cursor para a primeira linha abaixo marcada com --->.

  2. Digite V para selecionar a linha inteira.

  3. Pressione j para estender a seleção para a segunda linha.

  4. Pressione j novamente para estender à terceira linha.

  5. Digite d para deletar as linhas selecionadas.

---> Linha um precisa ser deletada
---> Linha dois precisa ser deletada
---> Linha três também precisa ser deletada

### Lição 3.3: SELEÇÃO EM BLOCO

** Digite Ctrl+v para selecionar blocos retangulares. **

  1. Mova o cursor para o início de "banana" abaixo.

  2. Digite Ctrl+v para iniciar a seleção em bloco.

  3. Pressione j para estender para baixo uma linha.

  4. Pressione j novamente para estender à terceira linha.

  5. Pressione l para estender a seleção para a direita.

  6. Digite d para deletar o bloco selecionado.

---> maçã     banana    cereja
---> cão      elefante  sapo
---> guitarra casa      gelo

NOTA: A seleção em bloco permite selecionar áreas retangulares de texto.

## Lição 4: Objetos de Texto

Objetos de texto são uma das características mais poderosas do Vim. Eles permitem operar em "coisas" como palavras, frases, parágrafos e blocos de código.

### Lição 4.1: OBJETOS DE TEXTO DE PALAVRAS

** Digite dw para deletar uma palavra, ou diw para deletar dentro da palavra. **

  1. Mova o cursor para a linha abaixo marcada com --->.

  2. Mova o cursor para o início da palavra "extra".

  3. Digite dw para deletar a palavra.

  4. Mova o cursor para a palavra "desnecessárias".

  5. Digite diw para deletar dentro da palavra.

---> Há algumas palavras extra desnecessárias nesta sentença.

### Lição 4.2: OBJETOS DE TEXTO COM ASPAS

** Digite di" para deletar dentro das aspas. **

  1. Mova o cursor para a linha abaixo marcada com --->.

  2. Mova o cursor dentro das aspas ao redor de "delete isso".

  3. Digite di" para deletar dentro das aspas.

  4. Mova o cursor para as aspas ao redor de "e isso também".

  5. Digite da" para deletar ao redor das aspas (incluindo aspas).

---> Mantenha este "delete isso" e também "e isso também" texto.

### Lição 4.3: OBJETOS DE TEXTO COM PARÊNTESES

** Digite di( para deletar dentro dos parênteses. **

  1. Mova o cursor para a linha abaixo marcada com --->.

  2. Mova o cursor dentro dos parênteses.

  3. Digite di( para deletar dentro dos parênteses.

  4. Mova o cursor dentro das chaves {}.

  5. Digite da{ para deletar ao redor das chaves.

---> Função(remover este conteúdo) e objeto{remover isto também}.

NOTA: Objetos de texto funcionam com d (deletar), c (alterar), y (copiar), e v (visual).

## Lição 5: Pesquisa e Navegação

### Lição 5.1: PESQUISA BÁSICA

** Digite / para pesquisar texto para frente no arquivo. **

  1. Digite / (barra) para iniciar uma pesquisa para frente.

  2. Digite: raposa

  3. Pressione <ENTER> para executar a pesquisa.

  4. Pressione n para encontrar a próxima ocorrência.

  5. Pressione N para encontrar a ocorrência anterior.

  6. Tente pesquisar outras palavras neste tutorial.

---> A raposa marrom pula sobre o cão preguiçoso
---> Outra raposa está correndo na floresta
---> Procure por raposa ou cão nestas linhas de prática
---> A raposa e o cão estão brincando juntos

### Lição 5.2: PESQUISA PARA TRÁS

** Digite ? para pesquisar para trás no arquivo. **

  1. Digite ? (ponto de interrogação) para iniciar uma pesquisa para trás.

  2. Digite: rápida

  3. Pressione <ENTER> para executar a pesquisa.

  4. Pressione n para continuar pesquisando para trás.

  5. Pressione N para pesquisar para frente da posição atual.

---> Pesquise para trás para encontrar movimentos rápida marrom
---> Uma forma rápida de pesquisar é muito útil
---> Navegação rápida torna a edição mais eficiente

### Lição 5.3: PESQUISA COM LIMITES DE PALAVRA

** Use * e # para pesquisar a palavra sob o cursor. **

  1. Mova o cursor para a palavra "pesquisa" abaixo.

  2. Pressione * para pesquisar para frente pela mesma palavra.

  3. Pressione # para pesquisar para trás pela mesma palavra.

  4. Tente isso com diferentes palavras no texto.

---> Esta função de pesquisa é muito útil para operações de pesquisa
---> Quando você pesquisa, a pesquisa destaca as correspondências
---> Técnicas avançadas de pesquisa ajudam com pesquisa de código

NOTA: * pesquisa para frente, # pesquisa para trás pela palavra sob o cursor.

### Lição 5.4: PESQUISA SENSÍVEL A MAIÚSCULAS

** Controle a sensibilidade a maiúsculas nas pesquisas. **

Por padrão, as pesquisas são sensíveis a maiúsculas. Você pode:

  1. Digite /gato para encontrar "gato" mas não "Gato"
  2. Digite /\cgato para ignorar maiúsculas (encontra "gato", "Gato", "GATO")
  3. Digite /\Cgato para forçar sensibilidade a maiúsculas

---> O gato e o Gato são animais diferentes
---> GATO em maiúsculas vs gato em minúsculas  
---> Pesquisa sensível a maiúsculas: gato Gato GATO

### Lição 5.5: NAVEGAÇÃO BUSCAR E ATÉ CARACTERE

** Digite f{char} para buscar um caractere, t{char} para ir até (antes) dele. **

**Nota**: No NeoMood com Flash.nvim, os comandos f e t são aprimorados com feedback visual.

  1. Mova para a linha abaixo marcada com --->.

  2. Digite f] para buscar o caractere ']'.

  3. Pressione f novamente para buscar o próximo caractere ']'.

  4. Pressione F para buscar o caractere ']' anterior (para trás).

  5. Digite t( para ir até (antes) do caractere '('.

  6. Pressione t novamente para ir até o próximo caractere '('.

---> A raposa [marrom] pula (sobre) o cachorro [preguiçoso] na (floresta)

### Lição 5.6: COMBINANDO BUSCAR/ATÉ COM AÇÕES

** Use f e t com comandos de deletar, alterar e copiar. **

  1. Mova para a linha abaixo marcada com --->.

  2. Digite df] para deletar até e incluindo o caractere ']'.

  3. Digite dt) para deletar até (mas não incluindo) o caractere ')'.

  4. Digite cf( para alterar até e incluindo o caractere '('.

  5. Digite ct" para alterar até (mas não incluindo) o caractere '"'.

  6. Digite yf; para copiar até e incluindo o caractere ';'.

  7. Digite yt, para copiar até (mas não incluindo) o caractere ','.

---> Remover [este texto] e (alterar isto) "texto citado"; manter, esta parte

**Padrões comuns de uso f/t:**
- `dt]` - Deletar até o caractere `]`
- `df]` - Deletar até e incluindo o caractere `]`
- `ct"` - Alterar até o caractere `"`
- `cf"` - Alterar até e incluindo o caractere `"`
- `yt)` - Copiar até o caractere `)`
- `yf)` - Copiar até e incluindo o caractere `)`

**Lembre-se com Flash.nvim**: 
- `f` busca e inclui o caractere
- `t` vai até (para antes) do caractere
- Pressione `f` novamente para buscar a próxima ocorrência do mesmo caractere
- Pressione `F` para buscar a ocorrência anterior do mesmo caractere
- Pressione `t` novamente para ir até a próxima ocorrência
- Pressione `T` para ir até a ocorrência anterior

## Lição 6: Envolvimento de Texto (Nvim-Surround)

### Lição 6.1: ALTERANDO ENVOLVIMENTOS

** Digite cs seguido de dois caracteres para alterar envolvimentos. **

  1. Mova para a linha abaixo marcada com --->.

  2. Coloque o cursor dentro dos colchetes ao redor de "texto".

  3. Digite cs]) para alterar `[` para `)`.

  4. Coloque o cursor dentro das aspas ao redor de "olá".

  5. Digite cs"' para alterar `"` para `'`.

  6. Coloque o cursor dentro das aspas simples ao redor de 'mundo'.

  7. Digite cs't para alterar `'` para `<q>`. (html tag)

---> Altere [texto] e "olá" e 'mundo' envolvimentos

### Lição 6.2: DELETANDO ENVOLVIMENTOS

** Digite ds seguido de um caractere para deletar envolvimentos. **

  1. Mova para a linha abaixo marcada com --->.

  2. Coloque o cursor dentro das aspas ao redor de "deletar estas aspas".

  3. Digite ds" para deletar as aspas envolventes.

  4. Coloque o cursor dentro dos colchetes ao redor de "remover colchetes".

  5. Digite ds] para deletar os colchetes envolventes.

  6. Coloque o cursor dentro dos parênteses ao redor de "remover parênteses".

  7. Digite ds) para deletar os parênteses envolventes.

---> Deletar "deletar estas aspas" e [remover colchetes] e (remover parênteses)

### Lição 6.3: ADICIONANDO ENVOLVIMENTOS A PALAVRAS

** Digite ysiw seguido de um caractere para envolver uma palavra. **

  1. Mova para a linha abaixo marcada com --->.

  2. Coloque o cursor na palavra "olá".

  3. Digite ysiw" para envolver a palavra com aspas.

  4. Coloque o cursor na palavra "mundo".

  5. Digite ysiw] para envolver a palavra com colchetes.

  6. Coloque o cursor na palavra "vim".

  7. Digite ysiw[ para envolver a palavra com colchetes e espaços.

---> Envolver olá e mundo e vim com caracteres diferentes

### Lição 6.4: ADICIONANDO ENVOLVIMENTOS A SELEÇÃO

** Selecione texto com v, então digite S seguido de um caractere. **

  1. Mova para a linha abaixo marcada com --->.

  2. Coloque o cursor em "raposa marrom".

  3. Digite v para começar a seleção visual.

  4. Mova para selecionar "raposa marrom ágil".

  5. Digite S" para envolver a seleção com aspas.

  6. Coloque o cursor em "cachorro preguiçoso".

  7. Digite ve para selecionar "cachorro preguiçoso".

  8. Digite S] para envolver a seleção com colchetes.

---> A raposa marrom ágil pula sobre o cachorro preguiçoso

### Lição 6.5: PADRÕES COMUNS DE ENVOLVIMENTO

** Pratique operações comuns de envolvimento. **

**Operações de alteração:**
- `cs])` - Alterar `[olá]` para `(olá)`
- `cs"'` - Alterar `"olá"` para `'olá'`
- `cs'<q>` - Alterar `'olá'` para `<q>olá</q>`

**Operações de deleção:**
- `ds"` - Alterar `"olá"` para `olá`
- `ds]` - Alterar `[olá]` para `olá`
- `dst` - Deletar tag HTML envolvente

**Operações de adição:**
- `ysiw"` - Alterar `olá` para `"olá"`
- `ysiw]` - Alterar `olá` para `[olá]`
- `ysiw[` - Alterar `olá` para `[ olá ]` (com espaços)

**Modo visual:**
- Selecione texto com `v`, então `S"` - Envolver seleção com aspas
- Selecione texto com `v`, então `S]` - Envolver seleção com colchetes

Texto de prática para envolvimentos:
---> Altere "estas aspas" para [colchetes]
---> Delete (estes parênteses) e 'estas aspas'
---> Adicione envolvimentos a palavra e seleção
---> A <tag>conteúdo</tag> pode ser alterada com cst

**Lista de exercícios:**
1. Altere `"aspas"` para `'aspas'` usando `cs"'`
2. Delete `[colchetes]` usando `ds[`
3. Adicione aspas a `palavra` usando `ysiw"`
4. Selecione `seleção de texto` e envolva com `S]`
5. Altere `<tag>` para `"aspas"` usando `cst"`

## Lição 7: Macros Básicos

### Lição 7.1: GRAVANDO UM MACRO

** Digite q seguido de uma letra para começar a gravar um macro. **

  1. Mova para a linha abaixo marcada com --->.

  2. Digite qa para começar a gravar um macro no registro 'a'.

  3. Digite I para inserir no início da linha.

  4. Digite: "Olá, 

  5. Pressione <ESC> para ir ao modo Normal.

  6. Digite A para acrescentar no final da linha.

  7. Digite: !"

  8. Pressione <ESC> para ir ao modo Normal.

  9. Digite q para parar de gravar o macro.

---> mundo

### Lição 7.2: EXECUTANDO UM MACRO

** Digite @a para executar o macro que você acabou de gravar. **

  1. Mova para a primeira linha abaixo marcada com --->.

  2. Digite @a para executar o macro.

  3. Mova para a próxima linha e digite @a novamente.

  4. Mova para a terceira linha e digite @a mais uma vez.

---> amigo
---> usuário
---> todos

NOTA: As linhas devem agora ficar: "Olá, amigo!", "Olá, usuário!", "Olá, todos!"

### Lição 7.3: REPETINDO MACROS

** Digite @@ para repetir o último macro, ou 3@a para executar o macro 'a' três vezes. **

  1. Grave um novo macro com qb (registro 'b').

  2. Digite A para acrescentar no final da linha.

  3. Digite:  - concluído

  4. Pressione <ESC> e digite q para parar de gravar.

  5. Vá para uma linha abaixo e digite @b.

  6. Digite @@ para repetir o último macro.

  7. Digite 2@b para executar o macro duas vezes em outras linhas.

---> Tarefa um
---> Tarefa dois
---> Tarefa três
---> Tarefa quatro

NOTA: Macros são poderosos para tarefas de edição repetitivas!

## Lição 8: Múltiplos Cursores (Especial do NeoMood)

Múltiplos cursores permitem editar várias localizações simultaneamente, tornando tarefas de edição repetitivas incrivelmente rápidas.

### Lição 8.1: SELEÇÃO BÁSICA COM MÚLTIPLOS CURSORES

** Use Ctrl+n para selecionar palavras correspondentes e criar múltiplos cursores. **

  1. Mova o cursor para a linha abaixo marcada com --->.

  2. Coloque seu cursor na primeira ocorrência da palavra "maçã".

  3. Pressione Ctrl+n para selecionar a palavra e criar um cursor.

  4. Pressione Ctrl+n novamente para adicionar a segunda "maçã" à sua seleção.

  5. Pressione Ctrl+n mais uma vez para adicionar a terceira "maçã" à sua seleção.

  6. Digite cw para alterar todas as três palavras (isso coloca você no modo inserção).

  7. Agora digite "laranja" para substituir todas as três palavras de uma vez.

  8. Pressione <ESC> para sair do modo múltiplos cursores.

---> A maçã é vermelha, a maçã é doce, e a maçã é deliciosa.

### Lição 8.2: CORRESPONDER TODAS AS OCORRÊNCIAS

** Use <Espaço>n para selecionar todas as palavras correspondentes de uma vez. **

  1. Mova para a linha abaixo marcada com --->.

  2. Coloque seu cursor em qualquer ocorrência de "banana".

  3. Pressione <Espaço>n para selecionar TODAS as ocorrências de "banana" de uma vez.

  4. Digite "manga" para substituir todas as instâncias simultaneamente.

  5. Pressione <ESC> para sair do modo múltiplos cursores.

---> Eu gosto de banana, banana é amarela, vitamina de banana, banana fresca, banana madura, banana doce, pão de banana, banana tropical.

### Lição 8.3: GERENCIAMENTO SELETIVO DE CURSORES

** Use setas direcionais e <Espaço>x para gerenciar múltiplos cursores precisamente. **

  1. Mova para a linha abaixo marcada com --->.

  2. Coloque seu cursor em qualquer "uva".

  3. Pressione <Espaço>n para selecionar todas as ocorrências de "uva".

  4. Pressione a seta <direita> para percorrer os cursores.

  5. Quando estiver em um cursor que deseja remover, pressione <Espaço>x.

  6. Continue até ter apenas 2-3 cursores ativos.

  7. Digite "fruta" para substituir as palavras selecionadas.

  8. Pressione <ESC> para sair do modo múltiplos cursores.

---> Uva fresca, uva roxa, uva do vinho, uva de mesa, suco de uva, videira de uva, cacho de uva, colheita de uva.

### Lição 8.4: PADRÕES DE EDIÇÃO COM MÚLTIPLOS CURSORES

** Pratique fluxos de trabalho comuns com múltiplos cursores. **

**Exercício 1: Adicionando prefixos**
1. Coloque o cursor em "tarefa" na linha abaixo
2. Pressione Ctrl+n duas vezes para selecionar as três primeiras palavras "tarefa"
3. Pressione I para entrar no modo inserção no início
4. Digite "FAZER: "
5. Pressione <ESC> para terminar

---> Complete tarefa um, termine tarefa dois, revise tarefa três, envie tarefa quatro.

**Exercício 2: Envolvendo com aspas**
1. Coloque o cursor em "palavra" na linha abaixo
2. Pressione <Espaço>n para selecionar todas as ocorrências de "palavra"
3. Pressione I para ir ao início, digite " (aspas)
4. Pressione <ESC>, depois A para ir ao fim, digite " (aspas)
5. Pressione <ESC> para terminar

---> Cada palavra deve ficar entre aspas: palavra, palavra, palavra, palavra, palavra.

### Lição 8.5: TÉCNICAS AVANÇADAS DE MÚLTIPLOS CURSORES

** Combine múltiplos cursores com outras operações do Vim. **

**Cursores verticais com Ctrl+j/Ctrl+k:**

1. Mova para a primeira linha abaixo marcada com --->.
2. Pressione Ctrl+j para adicionar um cursor na linha abaixo.
3. Pressione Ctrl+j novamente para adicionar outro cursor.
4. Pressione Ctrl+j mais uma vez para um quarto cursor.
5. Pressione A para ir ao fim de todas as linhas simultaneamente.
6. Digite " - CONCLUÍDO" em todas as linhas de uma vez.
7. Pressione <ESC> para terminar.

---> Item um
---> Item dois
---> Item três
---> Item quatro

**Lembre-se:**
- `Ctrl+n` - Adicionar próxima palavra correspondente à seleção
- `<Espaço>n` - Selecionar TODAS as palavras correspondentes de uma vez
- `<esquerda>/<direita>` - Navegar entre cursores ativos
- `<Espaço>x` - Remover cursor atual da seleção
- `Ctrl+j/Ctrl+k` - Adicionar cursores verticalmente acima/abaixo
- `<ESC>` - Sair do modo múltiplos cursores

## Lição 9: Operações de Copiar e Colar

### Lição 9.1: COPIAR E COLAR BÁSICO

** Digite yy para copiar uma linha e p para colá-la. **

  1. Mova o cursor para a linha abaixo marcada com --->.

  2. Digite yy para copiar a linha inteira.

  3. Mova o cursor para o final do bloco de linhas de prática.

  4. Digite p para colar a linha após o cursor.

  5. Digite P (p maiúsculo) para colar a linha antes do cursor.

---> Copie esta linha e pratique colando em diferentes lugares
---> Outra linha para prática de cópia
---> Última linha do bloco de prática

### Lição 9.2: COPIAR PALAVRAS E CARACTERES

** Use yw para copiar palavras e diferentes movimentos com y. **

  1. Mova o cursor para a linha abaixo marcada com --->.

  2. Coloque o cursor em "rápida" e digite yw para copiar a palavra.

  3. Mova para o final da linha e digite p para colar.

  4. Coloque o cursor em "raposa" e digite y2w para copiar duas palavras.

  5. Mova para outra posição e cole com p.

  6. Coloque o cursor em "p" de "pula" e digite y$ para copiar até o fim da linha.

  7. Vá para uma nova posição e cole.

---> A rápida raposa marrom pula sobre o cão preguiçoso

### Lição 9.3: COPIAR E COLAR COM SELEÇÃO VISUAL

** Use o modo visual para cópia precisa. **

  1. Mova para a linha abaixo marcada com --->.

  2. Coloque o cursor em "programação" e digite v para iniciar seleção visual.

  3. Mova o cursor para selecionar "linguagem de programação" (use e para ir ao fim das palavras).

  4. Digite y para copiar a seleção visual.

  5. Mova para o final da linha e digite p para colar.

---> Neovim é um poderoso editor de linguagem de programação para desenvolvedores

  6. Coloque o cursor em qualquer lugar na linha abaixo.

  7. Digite V para selecionar a linha inteira.

  8. Digite y para copiar a linha toda.

  9. Mova para o final e digite p para colar.

---> Esta linha inteira será copiada usando modo visual de linha

### Lição 9.4: COPIAR PARA REGISTRADORES ESPECÍFICOS

** Use "ay para copiar ao registrador 'a' e "ap para colar do registrador 'a'. **

  1. Mova para a primeira linha abaixo marcada com --->.

  2. Digite "ayy para copiar a linha ao registrador 'a'.

  3. Mova para a segunda linha.

  4. Digite "byy para copiar a linha ao registrador 'b'.

  5. Mova para a terceira linha.

  6. Digite "cyy para copiar a linha ao registrador 'c'.

  7. Agora cole em ordem reversa: digite "cp, depois "bp, depois "ap.

---> Primeira linha vai para o registrador a
---> Segunda linha vai para o registrador b
---> Terceira linha vai para o registrador c

### Lição 9.5: COPIAR E COLAR COM OBJETOS DE TEXTO

** Combine cópia com objetos de texto para cópia eficiente. **

  1. Mova para a linha abaixo marcada com --->.

  2. Coloque o cursor dentro das aspas ao redor de "copie este texto".

  3. Digite yi" para copiar dentro das aspas.

  4. Mova para o final da linha e digite p para colar.

  5. Coloque o cursor dentro dos parênteses ao redor de "e isto também".

  6. Digite ya( para copiar ao redor dos parênteses (incluindo parênteses).

  7. Mova para uma nova posição e cole com p.

---> A mensagem diz "copie este texto" e também (e isto também) para prática

  8. Coloque o cursor na palavra "função" abaixo.

  9. Digite yiw para copiar a palavra interna.

  10. Mova para o final e cole com p.

  11. Coloque o cursor em "completa" e digite yaw para copiar ao redor da palavra (inclui espaços).

  12. Cole com p em uma nova posição.

---> Esta função deve completa os exercícios de prática de cópia

### Lição 9.6: COPIAR PARA ÁREA DE TRANSFERÊNCIA DO SISTEMA

** Use "+ para acessar a área de transferência do sistema. **

  1. Mova para a linha abaixo marcada com --->.

  2. Digite "+yy para copiar a linha para a área de transferência do sistema.

  3. Agora você pode colar esta linha em qualquer outro aplicativo (fora do Neovim).

  4. Digite "+p para colar da área de transferência do sistema.

---> Este texto será copiado para sua área de transferência do sistema

### Lição 9.7: PRÁTICA DE COPIAR E COLAR

** Pratique diferentes combinações de copiar e colar. **

Texto de prática para exercícios de copiar e colar:

---> Linha 1: Raposa marrom pula sobre cão preguiçoso
---> Linha 2: O "texto com aspas" e (texto com parênteses) precisam ser copiados
---> Linha 3: nome_funcao nome_variavel chamada_metodo()
---> Linha 4: Copie este {bloco inteiro} e [estes colchetes] também
---> Linha 5: Linha final de prática com palavras para copiar

**Lista de exercícios:**
1. Copie a Linha 1 com yy e cole depois da Linha 5
2. Copie apenas "texto com aspas" (incluindo aspas) da Linha 2
3. Copie a palavra "nome_funcao" da Linha 3
4. Copie de "Copie" até "colchetes" na Linha 4 usando seleção visual
5. Copie a Linha 5 para o registrador 'x' usando "xyy
6. Copie qualquer linha para área de transferência do sistema usando "+yy
7. Cole do registrador 'x' usando "xp
8. Copie duas palavras de uma vez usando y2w
9. Copie até o fim da linha usando y$
10. Copie parágrafo inteiro usando modo visual de linha (V)

NOTA: Lembre-se - y copia, p cola após o cursor, P cola antes do cursor!

## Trabalhando com Indentação

### O Poder do `vij`

`vij` é um comando mágico que seleciona todas as linhas no mesmo nível de indentação:

```
vi{  - Selecionar dentro de chaves
vij  - Selecionar mesmo nível de indentação
vaI  - Selecionar ao redor da indentação (com linhas em branco)
```

### Prática de Indentação

**Usando o bloco de função em seu texto de prática:**

1. **Selecionar bloco de indentação**: Coloque o cursor em `linha1_aqui` e pressione `vij`
2. **Selecionar com chaves**: Coloque o cursor dentro do bloco `if (condicao)` e pressione `vi{`
3. **Mover seleção**: No modo visual, pressione `J` para mover linhas para baixo, `K` para cima
4. **Indentar seleção**: Selecione linhas com `V`, então pressione `>` para indentar, `<` para desindentar

**Tente estes exercícios específicos:**
- Coloque o cursor em `linha1_aqui` e pressione `vij` para selecionar o bloco indentado
- Coloque o cursor dentro de `{` após `if (condicao)` e pressione `vi{` para selecionar tudo dentro das chaves
- Selecione as três linhas com `linha1_aqui`, `linha2_aqui`, `linha3_aqui` e pressione `>` para indentá-las mais
- Selecione as mesmas linhas e pressione `<` para desindentá-las

**Dica profissional**: Após selecionar com `vij`, você pode:
- Pressionar `>` para indentar todo o bloco
- Pressionar `<` para desindentar todo o bloco
- Pressionar `J` para mover todo o bloco para baixo
- Pressionar `K` para mover todo o bloco para cima

## Editando Texto

### Entrando no Modo Inserção
```
i - Inserir antes do cursor
I - Inserir no início da linha
a - Inserir após o cursor
A - Inserir no final da linha
o - Nova linha abaixo
O - Nova linha acima
```

### Deletando Texto
```
x - Deletar caractere (sem copiar)
dd - Deletar linha
dw - Deletar palavra
d$ - Deletar até o fim da linha
```

### Alterando Texto
```
cw - Alterar palavra
cc - Alterar linha
c$ - Alterar até o fim da linha
r  - Substituir um único caractere
```

### Prática de Edição

**Corrija os erros em seu texto de prática:**

1. **Corrigir erros de ortografia**:
   - Coloque o cursor em "textooo" (linha 1) e pressione `x` para deletar o 'o' extra
   - Coloque o cursor em "rapida" (linha 2) e pressione `cw` depois digite "rápida"
   - Coloque o cursor em "temm" (linha 3) e pressione `x` para deletar o 'm' extra
   - Coloque o cursor em "errada" (linha 4) e pressione `cw` depois digite "correta"

2. **Variações de inserção**:
   - Coloque o cursor no final da linha 1 e pressione `A` para acrescentar texto
   - Coloque o cursor em qualquer lugar na linha 2 e pressione `o` para criar nova linha abaixo
   - Coloque o cursor em qualquer lugar na linha 3 e pressione `O` para criar nova linha acima

3. **Variações de exclusão**:
   - Coloque o cursor em qualquer caractere e pressione `x` para deletá-lo
   - Coloque o cursor na linha 7 e pressione `dd` para deletar a linha inteira
   - Coloque o cursor em "erros" e pressione `dw` para deletar a palavra

4. **Copiar e colar**:
   - Coloque o cursor em "Esta é a linha um" e pressione `yy` para copiar a linha
   - Mova para o final do arquivo e pressione `p` para colar após o cursor
   - Coloque o cursor em "prática" e pressione `yw` para copiar a palavra
   - Mova para outro lugar e pressione `p` para colar a palavra

5. **Desfazer/Refazer**:
   - Pressione `u` para desfazer sua última alteração
   - Pressione `Ctrl+r` para refazer

**Lembre-se**: Sempre pressione `Esc` para retornar ao modo Normal antes de tentar novos comandos!

## Recursos Aprimorados do NeoMood

### Atalhos Personalizados do NeoMood

O NeoMood altera alguns comportamentos padrão para ser mais eficiente:

```
\           - Salvar todos os arquivos (em vez de :w)
-           - Pular para o fim da linha (em vez de $)
,           - Alternar entre janelas
<Espaço>    - Tecla líder (tecla de comando principal)
```

### Operações de Arquivo
```
\           - Salvar todos os arquivos
<Espaço>qq  - Sair de tudo
<Espaço>k   - Deletar buffer atual
```

### Gerenciamento de Buffer
```
<Ctrl+e>    - Alternar para buffer alternativo
ge          - Alternar para buffer alternativo  
<Espaço>,   - Mostrar todos os buffers (FZF)
```

### Gerenciamento de Janelas
```
,           - Alternar entre janelas
<Espaço>wq  - Fechar janela
<Espaço>wh/j/k/l - Mover para janela específica
```

### Prática do NeoMood

**Tente estes recursos do NeoMood:**

1. **Salvando**: Faça algumas alterações e pressione `\` (salva todos os arquivos)
2. **Fim da linha**: Pressione `-` para pular ao fim da linha
3. **Alternância de janelas**: Pressione `,` para alternar entre janelas
4. **Lista de buffers**: Pressione `<Espaço>,` para ver todos os buffers abertos
5. **Buffer alternativo**: Pressione `Ctrl+e` para alternar para o último buffer

**Crie múltiplos arquivos para praticar:**
- Salve seu trabalho atual com `\`
- Pressione `<Espaço>qq` para sair
- Abra múltiplos arquivos: `nvim arquivo1.txt arquivo2.txt arquivo3.txt`
- Use `<Espaço>,` para alternar entre eles
- Use `<Espaço>k` para fechar o buffer atual

## Gerenciamento de Arquivos

### Explorador de Arquivos (Neo-tree)
```
<Espaço>e   - Alternar explorador de arquivos
<Espaço>E   - Mostrar arquivo atual no explorador
```

### Explorador FZF (Gerenciamento Moderno de Arquivos)
```
<Espaço>.   - Explorador FZF
<Espaço>fC  - Copiar arquivo
<Espaço>fM  - Mover arquivo
<Espaço>fR  - Renomear arquivo
<Espaço>fd  - Deletar arquivo
```

### Acesso Rápido a Arquivos
```
<Espaço>fp  - Abrir dotfiles (.zshrc, .tmux.conf, etc.)
<Espaço>fy  - Copiar caminho relativo
<Espaço>fY  - Copiar caminho completo
```

### Prática de Gerenciamento de Arquivos

**Tente estas operações de arquivo:**

1. **Explorador de Arquivos**: Pressione `<Espaço>e` para abrir a árvore de arquivos
   - Navegue com `j/k` (cima/baixo)
   - Pressione `Enter` para abrir arquivos
   - Pressione `<Espaço>e` novamente para fechar

2. **Explorador FZF**: Pressione `<Espaço>.` para navegador moderno de arquivos
   - Digite para pesquisar arquivos
   - Pressione `Enter` para abrir
   - Muito mais rápido que navegadores tradicionais

3. **Operações de Arquivo**: 
   - Pressione `<Espaço>fR` para renomear arquivo atual
   - Pressione `<Espaço>fC` para copiar arquivo
   - Pressione `<Espaço>fd` para deletar arquivo

4. **Operações de Caminho**:
   - Pressione `<Espaço>fy` para copiar caminho relativo para área de transferência
   - Pressione `<Espaço>fY` para copiar caminho completo para área de transferência

**Dica profissional**: O explorador FZF (`<Espaço>.`) geralmente é mais rápido que a árvore de arquivos para encontrar arquivos rapidamente.

## Pesquisa e Navegação

### FZF-Lua (Busca Difusa)
```
<Espaço><Espaço> - Encontrar arquivos
<Espaço>sp       - Grep ao vivo (pesquisar em arquivos)
<Espaço>sr       - Arquivos recentes
<Espaço>sw       - Pesquisar palavra sob o cursor
<Espaço>ss       - Pesquisar no buffer atual
<Espaço>so       - Pesquisar em todos os buffers abertos
```

### Pesquisa Tradicional
```
/padrão    - Pesquisar para frente
?padrão    - Pesquisar para trás
n/N        - Próximo/anterior resultado
```

### Prática de Pesquisa e Navegação

**Encontrar Arquivos:**
1. Pressione `<Espaço><Espaço>` para encontrar arquivos
   - Digite parte do nome do arquivo (correspondência difusa funciona!)
   - Pressione `Enter` para abrir
   - Pressione `<Espaço>sr` para arquivos recentes

**Pesquisa de Conteúdo:**
1. Pressione `<Espaço>sp` para pesquisar texto em todos os arquivos
   - Digite seu termo de pesquisa
   - Veja resultados ao vivo enquanto digita
   - Pressione `Enter` para pular ao resultado

**Pesquisa em Buffer:**
1. Pressione `<Espaço>ss` para pesquisar apenas no arquivo atual
2. Pressione `<Espaço>so` para pesquisar em todos os buffers abertos

**Pesquisa de Palavra:**
1. Coloque o cursor em qualquer palavra
2. Pressione `<Espaço>sw` para pesquisar essa palavra em todos os lugares

**Pesquisa Tradicional:**
1. Pressione `/` e digite o termo de pesquisa
2. Pressione `n` para próximo resultado, `N` para anterior
3. Pressione `?` para pesquisar para trás

**Dica profissional**: A pesquisa FZF (`<Espaço>sp`) geralmente é melhor que a pesquisa tradicional (`/`) para encontrar coisas em múltiplos arquivos.

## Desenvolvimento de Código

### Recursos Avançados (Quando Você Estiver Pronto)

**LSP (Protocolo de Servidor de Linguagem):**
```
K           - Mostrar documentação
gd          - Ir para definição
gr          - Ir para referências
<Espaço>ca  - Ações de código
<Espaço>hr  - Reiniciar LSP
```

**Diagnósticos:**
```
]d/[d       - Próximo/anterior diagnóstico
gl          - Mostrar diagnósticos da linha
```

**Completação de Código:**
- Pressione `Tab` para aceitar completações
- `Ctrl+j` - Aceitar sugestões de IA (Codeium)
- `Ctrl+f` - Aceitar próxima palavra
- `Ctrl+b` - Navegar entre completações

**Integração Git:**
```
<Espaço><Tab> - Status do git
]g/[g         - Próximo/anterior hunk do git
<Espaço>gs    - Fazer stage do hunk
<Espaço>gr    - Resetar hunk
<Espaço>gp    - Visualizar hunk
<Espaço>gb    - Blame da linha
```

**Desenvolvimento Ruby (se aplicável):**
```
<Espaço>rm  - Encontrar model
<Espaço>rc  - Encontrar controller
<Espaço>rv  - Encontrar view
<Espaço>=   - Auto-correção Rubocop
<Espaço>d   - Adicionar binding.pry
<Espaço>a   - Ir para arquivo de teste
```

## Resumo de Atalhos Essenciais

### Essenciais Diários
```
<Espaço>     - Tecla líder (sua tecla de comando principal)
\           - Salvar todos os arquivos
<Espaço>qq  - Sair de tudo
<Espaço>e   - Explorador de arquivos
<Espaço><Espaço> - Encontrar arquivos
<Espaço>sp  - Buscar em arquivos
<Espaço>k   - Fechar buffer
```

### Movimento
```
h j k l     - Movimento básico
s           - Salto flash
w b e       - Movimento por palavras
gg G        - Primeira/última linha
-           - Fim da linha
```

### Edição
```
i a o       - Modos de inserção
x dd        - Deletar
yy          - Copiar linha
p           - Colar
u           - Desfazer
Ctrl+r      - Refazer
```

### Modo Visual
```
v V         - Selecionar texto
J K         - Mover linhas para cima/baixo
< >         - Indentar/desindentar
```

### Fluxo de Trabalho Diário

**Abrindo e explorando:**
1. Abrir: `nvim` ou `nvim nomedoarquivo`
2. Explorar: `<Espaço>e` para árvore de arquivos ou `<Espaço><Espaço>` para busca difusa
3. Navegar: Use `s` para salto flash, `hjkl` para movimento

**Editando:**
1. Editar: `i` para inserir, `Esc` para modo normal
2. Selecionar: `v` para caractere, `V` para linha, `vij` para indentação
3. Copiar/Colar: `yy` para copiar, `p` para colar
4. Salvar: `\` para salvar todos os arquivos

**Avançado:**
1. Buscar: `<Espaço>sp` para buscar em arquivos
2. Git: `<Espaço><Tab>` para status do git
3. Fechar: `<Espaço>k` para fechar buffer, `<Espaço>qq` para sair

## Dicas Rápidas

✅ **Faça:**
- Use `hjkl` em vez das teclas de seta
- Domine o salto flash (`s`) - é revolucionário
- Use `<Espaço>` para a maioria dos recursos avançados
- Pratique `vij` para seleção de indentação
- Use `<Espaço>sp` para buscar em arquivos

❌ **Não faça:**
- Ficar no modo Inserção para navegação
- Ignorar a tecla líder (`<Espaço>`)
- Usar teclas de seta ou mouse
- Lutar contra a configuração - confie no NeoMood

## Palavras Finais

O NeoMood transforma o Neovim em um ambiente de desenvolvimento moderno e eficiente. A chave é **aprendizado gradual**:

1. **Comece simples**: Domine modos e movimento básico
2. **Construa memória muscular**: Pratique os fundamentos diariamente
3. **Adicione complexidade**: Aprenda gradualmente recursos avançados
4. **Seja consistente**: 15 minutos diários é melhor que 2 horas semanais

Lembre-se: Vim tem uma curva de aprendizado íngreme, mas uma vez que você a supera, nunca mais vai querer voltar!

---

*Feliz codificação com NeoMood! 🚀*

*Para recursos mais avançados, consulte a [documentação completa de mapeamentos](mappings.md)*
