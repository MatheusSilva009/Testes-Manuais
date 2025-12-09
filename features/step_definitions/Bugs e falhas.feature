Cenário: 11 — Alterar dados de compra antes do pagamento
    Dado que estou na tela de checkout
    Quando eu atualizo os campos de endereço ou quantidade
    Então o resumo e o total devem ser recalculados imediatamente
    Resultado: Não houve alteração nos dados de comprar pois a plataforma não permitia alterar ou inserir dados para a compra.

Cenário: 16 — Acessibilidade básica
    Dado que utilizo navegação por teclado ou leitor de tela
    Quando percorro as telas principais
    Então elementos interativos devem ser alcançáveis por teclado e possuir labels acessíveis.
    Resultado: Acessibilidade não funcional, não é possível navegar utilizando teclado ou leitor de tela.

Cenário: 18 — Cancelamento de pedido
    Dado que um pedido foi criado recentemente
    Quando o usuário solicita o cancelamento dentro das regras
    Então o pedido deve ser marcado como cancelado e o usuário notificado adequadamente.
    Resultado: Não foi possível cancelar o pedido, a plataforma não oferecia essa funcionalidade.

Cenário: 19 — Recuperação de senha
    Dado que um usuário esqueceu a senha
    Quando ele solicita recuperação e segue os passos de verificação
    Então deve receber instruções para redefinir a senha.
    Resultado: A funcionalidade de recuperação de senha não funcionou, o usuário não recebeu as instruções para redefinir a senha.

Cenário: 20 — Sugestão de produtos baseada no histórico
    Dado que o usuário possui histórico de navegação e compras
    Quando abre a página inicial ou a página de produto
    Então o sistema deve exibir sugestões relevantes com base no histórico.
    Resultado: O sistema não exibiu sugestões de produtos baseadas no histórico de navegação e compras do usuário.

Cenário: 21 — Avaliação de produtos
    Dado que um usuário comprou um produto
    Quando ele tenta deixar uma avaliação ou comentário
    Então a avaliação deve ser salva e exibida na página do produto.
    Resultado: A funcionalidade de avaliação de produtos não funcionou, o usuário não conseguiu deixar uma avaliação ou comentário sobre o produto comprado.

