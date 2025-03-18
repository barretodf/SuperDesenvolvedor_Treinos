# Contact

Contact é uma Gem em Ruby que fornece uma maneira simples e eficiente de gerenciar contatos via linha de comando, com funcionalidades como adicionar, editar, excluir, buscar e exportar contatos para CSV.

## Instalação

Adicione esta linha ao seu `Gemfile`:

```ruby
gem 'contact'

E então execute:

Copy
bundle install

Como Usar
Após instalar a Gem, você pode usar os seguintes comandos:

# Adicionar um novo contato
contact add "João Silva" "1234-5678" "joao@example.com"

# Listar todos os contatos
contact list

# Buscar contatos por nome
contact search "João"

# Editar um contato
contact edit 1 "João Silva" "8765-4321" "joao.silva@example.com"

# Excluir um contato
contact delete 1

# Exportar contatos para CSV
contact export

Relatórios de bugs e pull requests são bem-vindos no GitHub em https://github.com/barretodf/contact.

![Versão](https://img.shields.io/gem/v/contact?color=blue)
![Testes](https://github.com/barretodf/contact/actions/workflows/tests.yml/badge.svg)
![Licença](https://img.shields.io/badge/license-MIT-green)