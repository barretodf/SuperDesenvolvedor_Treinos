# UniFlex - Conversor de Unidades Flexível

UniFlex é uma biblioteca em Ruby para conversão de unidades de medida, com suporte para unidades personalizadas e fácil expansão. A biblioteca permite a conversão entre várias unidades pré-definidas (como metros para quilômetros) e também a adição de novas unidades com seus próprios fatores de conversão. 

O objetivo do projeto é demonstrar habilidades de desenvolvimento em Ruby, incluindo o design de sistemas flexíveis e reutilizáveis.

## Funcionalidades

- **Conversão entre unidades pré-definidas**: Exemplo, converter de metros para quilômetros, de gramas para quilogramas, e muito mais.
- **Suporte a unidades personalizadas**: O usuário pode adicionar suas próprias unidades e definir os fatores de conversão.
- **Saída formatada e clara**: O resultado da conversão é apresentado de forma legível, informando claramente a unidade original e a unidade de destino.
- **Fácil integração**: O projeto foi criado de forma modular para que seja fácil integrar novas unidades ou funcionalidades.

## Tecnologias Usadas

- **Ruby**: Linguagem principal usada para desenvolvimento do projeto.
- **Orientação a Objetos**: O código é estruturado em classes e métodos que facilitam a manutenção e extensibilidade.
- **CLI**: A interação com o usuário ocorre via linha de comando.

## Instalação

Siga os passos abaixo para configurar e rodar o projeto localmente.

1. **Clone o repositório**:

   ```bash
   git clone https://github.com/barretodf/SuperDesenvolvedor_Treinos.git
   cd uniflex

Exemplos de Uso
Aqui estão alguns exemplos de como usar o UniFlex para realizar conversões de unidades.

Exemplo 1: Conversão de metros para quilômetros
ruby
Copiar
Editar
converter = UniFlex::Converter.new
result = converter.convert(10, from: :meters, to: :kilometers)
puts result  # Saída: Conversão: 10 meters -> 0.01 kilometers
Exemplo 2: Conversão de gramas para quilogramas
ruby
Copiar
Editar
result = converter.convert(5000, from: :grams, to: :kilograms)
puts result  # Saída: Conversão: 5000 grams -> 5 kilograms
Exemplo 3: Adicionando unidades personalizadas
ruby
Copiar
Editar
converter.add_unit(:light_year, 9.461e12)  # Definindo um light year em quilômetros
result = converter.convert(1, from: :light_year, to: :kilometers)
puts result  # Saída: Conversão: 1 light_year -> 9.461e+12 kilometers
Como Funciona?
O UniFlex usa um sistema baseado em classes e objetos para representar as unidades de medida e realizar as conversões. Cada unidade é associada a um fator de conversão, e a biblioteca permite que o usuário defina novas unidades com seus próprios fatores.

Estrutura do Projeto:
lib/uniflex/unit_store.rb: Gerencia as unidades de medida disponíveis.
lib/uniflex/converter.rb: Realiza a conversão entre as unidades.
run.rb: Arquivo principal para testar a biblioteca.
Testes
Para garantir que tudo funcione corretamente, o projeto está configurado para testes unitários (se você adicionar testes).

Como adicionar testes?
Você pode usar RSpec ou qualquer outra ferramenta de teste que preferir para testar o código. Aqui está um exemplo básico de teste para a conversão:

ruby
Copiar
Editar
describe UniFlex::Converter do
  it "deve converter metros para quilômetros corretamente" do
    converter = UniFlex::Converter.new
    result = converter.convert(1000, from: :meters, to: :kilometers)
    expect(result).to eq("Conversão: 1000 meters -> 1 kilometers")
  end
end

Licença
Este projeto está licenciado sob a MIT License - veja o arquivo LICENSE para mais detalhes.

Contato
Se você tiver alguma dúvida ou sugestão, pode entrar em contato comigo:

Email: edsb1981@gmail.com
LinkedIn: [(https://www.linkedin.com/in/edmilson-barreto-012609215/)]
GitHub: [(https://github.com/barretodf)]



---

### **Explicação das Seções:**

- **Título e Descrição**: Apresenta o propósito do projeto, o que ele faz e o que o torna interessante.
- **Funcionalidades**: Descreve as funcionalidades principais de forma concisa.
- **Tecnologias Usadas**: Fala sobre as tecnologias e conceitos que foram aplicados no projeto, mostrando sua expertise em Ruby.
- **Instalação e Exemplos de Uso**: Ensina como instalar e usar o projeto, incluindo exemplos práticos de código.
- **Testes**: Embora você ainda não tenha implementado testes, a seção já está pronta para ser usada caso decida adicionar testes automatizados no futuro.
- **Contribuições**: Mostra que o projeto é aberto a melhorias e que você valoriza contribuições externas.
- **Licença**: Inclui uma licença aberta (MIT) para que outros possam usar seu código.

---

