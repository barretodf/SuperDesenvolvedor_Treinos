# GradeMaster

GradeMaster é uma gem para gerenciamento de notas escolares, permitindo cadastrar alunos, adicionar notas e carregar registros a partir de arquivos.

## Instalação

Adicione esta linha ao seu Gemfile:

```ruby
 gem 'grademaster'
```

Ou instale manualmente com:

```sh
 gem install grademaster
```

## Uso

### Criando um Aluno

```ruby
require 'grademaster'

aluno = Grademaster::Student.new("Eddie")
aluno.add_grade(9.5)
aluno.add_grade(8.7)
puts aluno.grades # => [9.5, 8.7]
```

### Salvando e Carregando Alunos

```ruby
require 'grademaster/arquivo'

Grademaster::Arquivo.salvar_aluno(aluno)
alunos = Grademaster::Arquivo.carregar_alunos

alunos.each do |a|
  puts "Aluno: #{a.name}, Notas: #{a.grades.join(', ')}"
end
```

## Testes

Para rodar os testes, use:

```sh
rspec
```

## Contribuição

1. Faça um fork do repositório
2. Crie uma branch para suas alterações (`git checkout -b minha-feature`)
3. Faça commit das suas alterações (`git commit -m 'Minha nova feature'`)
4. Envie para o branch (`git push origin minha-feature`)
5. Abra um Pull Request

## Licença

Este projeto está sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.

## Contatos
E-mail: edsb1981@gmail.com

Linkedin: https://www.linkedin.com/in/edmilson-barreto-012609215/

GitHub: https://github.com/barretodf