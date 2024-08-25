# Mobile Calculator Automation

Este repositório contém a automação de testes para uma aplicação de calculadora simples no Android, utilizando o Robot Framework e Appium.


## Descrição do Projeto

Este projeto foi desenvolvido para testar as funcionalidades básicas de uma calculadora, incluindo operações de adição, subtração, multiplicação e divisão. O objetivo é garantir que as operações sejam realizadas corretamente e que o aplicativo responda de acordo com as expectativas.

## Estrutura do Projeto

- **app/**: Contém o APK do aplicativo de calculadora.
- **config/**: Arquivo de configuração para mapeamento de bibliotecas e recursos.
- **pages/**: Mapeamento dos elementos de página utilizados nos testes.
- **resource/**: Arquivos de recursos que incluem palavras-chave personalizadas e funções reutilizáveis.
- **test/**: Contém os casos de teste que validam as funcionalidades da calculadora.
- **results/**: Diretório onde os resultados dos testes são armazenados.

## Pré-requisitos

Para executar este projeto, você precisará ter os seguintes softwares instalados:

- [Python](https://www.python.org/downloads/)
- [Appium](http://appium.io/)
- [Robot Framework](https://robotframework.org/)

Além disso, você pode instalar todas as dependências necessárias usando o arquivo `requirements.txt`:

```bash
pip install -r requirements.txt
```

## Configuração

1. Clone este repositório:
    ```bash
    git clone https://github.com/seu-usuario/mobile-calculator-automation.git
    ```
2. Navegue até o diretório do projeto:
    ```bash
    cd mobile-calculator-automation
    ```
3. Configure o Appium conforme necessário para conectar ao seu dispositivo ou emulador Android.

## Executando os Testes

1. Inicie o servidor Appium:
    ```bash
    appium -pa wd/hub
    ```
2. Execute os testes com o Robot Framework:
    ```bash
    robot -d results test/calculator_test.robot
    ```

## Estrutura dos Arquivos de Teste

### Exemplo de Caso de Teste

```robot
*** Test Cases ***
Validate Addition Functionality
    Given The Calculator App Is Open
    And I Input The First Number As "5"
    And I Input The Second Number As "3"
    When I Press The "SUM" Button
    Then The Result Should Display "8"
```

## Tecnologias Utilizadas

- **Robot Framework**: Utilizado para definir e executar casos de teste.
- **Appium**: Ferramenta de automação para aplicações móveis.

## Contribuição

Se você quiser contribuir para este projeto, sinta-se à vontade para enviar um pull request. Toda contribuição é bem-vinda!

## Licença

Este projeto está licenciado sob os termos da [MIT License](LICENSE).

## Contato

Para mais informações, entre em contato pelo e-mail [seu-email@example.com](mailto:seu-email@example.com).

---

Basta substituir as informações como o link do repositório, o e-mail de contato, e qualquer outro detalhe específico do seu projeto.