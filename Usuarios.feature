# language: pt
Funcionalidade: Validação dos fluxos principais da aplicação

  Contexto: Cenários em formato Gherkin para facilitar execução manual e automação.

  Background:
    Dado que eu abro a URL "https://www.saucedemo.com/"

  Cenário: 1 — Página inicial — usuários e seus acessos
    Dado que eu estou na página inicial
    Quando eu verificar a lista de usuários disponíveis
    Então cada usuário listado deve conseguir acessar a aplicação com sucesso

  Cenário: 2 — Página de login — validação de campos obrigatórios
    Dado que eu estou na página de login
    Quando eu submeter o formulário sem preencher os campos obrigatórios
    Então a aplicação deve exibir mensagens de validação para os campos obrigatórios

  Cenário: 3 — Página de inventário — validação de produtos e botões
    Dado que eu estou autenticado como um usuário válido
    Quando eu abrir a página de inventário
    Então devo ver a lista de produtos exibida
    E cada produto deve apresentar botões de ação (ex.: "Adicionar ao carrinho", "Detalhes")

  Cenário: 4 — Página de carrinho — validação de itens adicionados
    Dado que eu adicionei itens ao carrinho
    Quando eu abro a página do carrinho
    Então todos os itens adicionados devem aparecer corretamente na lista do carrinho

  Cenário: 5 — Página de checkout — validação de campos e resumo
    Dado que eu tenho itens no carrinho
    Quando eu acesso a tela de checkout
    Então devo ver os campos necessários para finalizar a compra
    E devo ver o resumo com itens, subtotais e total calculado

  Cenário: 6 — Página de confirmação de pedido — validação de mensagem final
    Dado que eu finalizei a compra com sucesso
    Quando a página de confirmação carregar
    Então devo ver uma mensagem clara de confirmação do pedido

  Cenário: 7 — Teste de logins com informações inválidas
    Dado que eu estou na tela de login
    Quando eu tento entrar com credenciais inválidas
    Então o sistema deve mostrar uma mensagem de erro adequada

  Cenário: 8 — Quantidade de itens no carrinho
    Dado que eu adiciono vários itens ao carrinho
    Quando eu visualizo o carrinho
    Então o contador e a lista devem refletir a quantidade correta de itens

  Cenário: 9 — Exclusão de itens do carrinho
    Dado que o carrinho contém itens
    Quando eu removo um item do carrinho
    Então o item removido não deve mais aparecer na lista

  Cenário: 10 — Finalização de compra (fluxo completo)
    Dado que tenho itens no carrinho e preenchi os dados de checkout
    Quando eu confirmar o pagamento
    Então devo ser redirecionado para a página de confirmação e ver o resumo do pedido

  Cenário: 11 — Alterar dados de compra antes do pagamento
    Dado que estou na tela de checkout
    Quando eu atualizo os campos de endereço ou quantidade
    Então o resumo e o total devem ser recalculados imediatamente

  Cenário: 12 — Mensagens de erro globais
    Dado que eu submeto dados inválidos em qualquer formulário
    Quando a aplicação processar a submissão
    Então o sistema deve exibir mensagens de erro claras e localizáveis

  Cenário: 13 — Responsividade da aplicação
    Dado que eu acesso a aplicação em diferentes tamanhos de tela
    Quando eu mudo entre layouts (desktop, tablet, mobile)
    Então a interface deve permanecer legível e funcional em todos os tamanhos

  Cenário: 14 — Desempenho básico de páginas
    Dado que eu estou em uma rede com latência típica
    Quando eu abro páginas principais (inicial, inventário, checkout)
    Então o tempo de carregamento deve estar dentro de limites aceitáveis (definidos pela equipe)

  Cenário: 15 — Compatibilidade com diferentes navegadores
    Dado que executo a aplicação em Chrome, Firefox, Edge ou Safari
    Quando realizo operações principais (login, adicionar ao carrinho, checkout)
    Então o comportamento deve ser consistente entre os navegadores suportados

  Cenário: 16 — Acessibilidade básica
    Dado que utilizo navegação por teclado ou leitor de tela
    Quando percorro as telas principais
    Então elementos interativos devem ser alcançáveis por teclado e possuir labels acessíveis

  Cenário: 17 — Busca e filtros na listagem de produtos
    Dado que existem produtos com diferentes nomes e categorias
    Quando aplico pesquisa ou filtros na página de inventário
    Então os resultados exibidos devem corresponder aos critérios aplicados

  Cenário: 18 — Cancelamento de pedido
    Dado que um pedido foi criado recentemente
    Quando o usuário solicita o cancelamento dentro das regras
    Então o pedido deve ser marcado como cancelado e o usuário notificado adequadamente

  Cenário: 19 — Recuperação de senha
    Dado que um usuário esqueceu a senha
    Quando ele solicita recuperação e segue os passos de verificação
    Então deve receber instruções para redefinir a senha

  Cenário: 20 — Sugestão de produtos baseada no histórico
    Dado que o usuário possui histórico de navegação e compras
    Quando abre a página inicial ou a página de produto
    Então o sistema deve exibir sugestões relevantes com base no histórico

  Cenário: 21 — Avaliação de produtos
    Dado que um usuário comprou um produto
    Quando envia uma avaliação com comentário e nota em estrelas
    Então a avaliação deve ser salva e exibida na página do produto
Funcionalidade: Validação das páginas estáticas e comportamentos do script SPA