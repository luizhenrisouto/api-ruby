# Prova - Testes/API
Projeto para automação dos testes de backend 



## Inicialização
Para o desenvolvimento dessa aplicação de teste, foram utilizadas as seguintes ferramentas:
1.  [Ruby](https://rubyinstaller.org/)
2.	[Cucumber](https://cucumber.io/)
3.  [HTTParty](https://rubygems.org/gems/httparty/)
4.	[Rspec](https://github.com/rspec/rspec)
5.  [Git](https://git-scm.com/download/win)

### Pré requisitos
Necessário instalar o [Ruby](https://rubyinstaller.org/) na versão mais recente e em seguida rodar os comandos através terminal:

```
gem install bundler --force
```

### Instalação
>Clone o projeto no diretório de interesse e abra o terminal dentro da pasta do projeto:
```
git clone <url-clone-projeto>
```
>Execute o comando abaixo para realizar a instalação das dependencias:
```
bundle install
```

# Executando os Testes
>Após a instalação das dependências e configuração do ambiente, vamos executar os testes:
```
cucumber -p [AMBINTE] -t [TAG DO(S) TESTE(S)]

Exemplo completo: cucumber -p hlg @auto_users
```
###### Parâmetros
1.  **ambiente:** hlg
2.  **tag:** @auto_users


