# Words Meter

![Ruby](https://img.shields.io/badge/Ruby-2.7+-red) ![RSpec](https://img.shields.io/badge/RSpec-Testing-green) ![License](https://img.shields.io/badge/License-MIT-blue)

O **Words Meter** é uma ferramenta simples e eficiente desenvolvida em **Ruby** para contar palavras em textos. Ele ignora pontuações e espaços desnecessários, garantindo uma contagem precisa e confiável. Este projeto foi criado para demonstrar boas práticas de desenvolvimento, incluindo **Programação Orientada a Objetos (POO)**, **Testes Automatizados** com **RSpec** e **Gerenciamento de Dependências**.

---

## Funcionalidades

- **Contagem precisa de palavras**: Ignora pontuações e espaços em branco desnecessários.
- **Tratamento de casos especiais**:
  - Retorna `0` para strings vazias ou com apenas espaços.
  - Retorna `0` se o texto for `nil`.
  - Conta corretamente palavras separadas por múltiplos espaços.
- **Fácil integração**: Pode ser utilizado como uma **gem** ou incorporado em outros projetos Ruby.

---

## Instalação

Para utilizar o **Words Meter**, siga os passos abaixo:

1. Certifique-se de ter o **Ruby** instalado (versão 2.7 ou superior).
2. Clone este repositório:

   ```bash
   git clone https://github.com/seu-usuario/words-meter.git
   cd words-meter
   ```

3. Instale as dependências:

   ```bash
   bundle install
   ```

4. Execute os testes para garantir que tudo está funcionando corretamente:

   ```bash
   rspec spec/
   ```

---

## Como Usar

Após a instalação, você pode utilizar o **Words Meter** diretamente no seu código Ruby:

```ruby
require_relative 'lib/wordmeter'

texto = "Olá, mundo! Este é um teste."
contagem = WordMeter.count_words(texto)

puts "O texto contém #{contagem} palavras."
```

**Saída:**
```
O texto contém 5 palavras.
```

---

## Testes

O projeto inclui testes automatizados com **RSpec** para garantir a qualidade e a confiabilidade do código. Para executar os testes, utilize o comando:

```bash
rspec spec/
```

Os testes cobrem casos como:
- Contagem de palavras em frases com pontuações.
- Strings vazias ou com apenas espaços.
- Textos `nil`.
- Palavras separadas por múltiplos espaços.

---

## Tecnologias Utilizadas

- **Ruby**: Linguagem de programação principal.
- **RSpec**: Framework para testes automatizados.
- **Bundler**: Gerenciamento de dependências.
- **Git**: Controle de versão.

---

## Contribuição

Contribuições são bem-vindas! Se você deseja contribuir para o projeto, siga os passos abaixo:

1. Faça um **fork** do repositório.
2. Crie uma branch para sua feature (`git checkout -b feature/nova-feature`).
3. Commit suas mudanças (`git commit -m 'Adiciona nova feature'`).
4. Faça um push para a branch (`git push origin feature/nova-feature`).
5. Abra um **Pull Request**.

---

## Licença

Este projeto está licenciado sob a **MIT License**. Consulte o arquivo [LICENSE](LICENSE) para mais detalhes.

---

## Contato

Se você tiver alguma dúvida ou sugestão, sinta-se à vontade para entrar em contato:

- **Nome**: Edmilson Barreto
- **LinkedIn**: https://www.linkedin.com/in/edmilson-barreto-012609215/
- **E-mail**: edsb1981@gmail.com
