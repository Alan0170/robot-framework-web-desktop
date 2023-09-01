### Projeto de Testes de Conexão a uma Instância como usuário usando Robot Framework

Este repositório contém um projeto de testes automatizados relacionados à conexão a uma instância usando o Robot Framework. O projeto é voltado para sistemas Windows e utiliza as bibliotecas Selenium, Sikuli e Robot Framework. Este documento irá guiá-lo através do projeto, fornecendo informações sobre sua estrutura, comandos do Robot Framework, uma explicação das principais palavras-chave utilizadas e como executar os testes.

## Estrutura do Projeto ##    
A estrutura do projeto é organizada da seguinte forma:

project-root/

    ├── TestCases/
    │   ├── Login/
    │   │   ├── login.robot
    │   │   ├── keywords.robot
    │   │   └── elements.robot
    │   └──...
    │   
    ├── resources/
    │   ├── Test_Data/
    │   │   ├── ...
    │   │   └── ...
    │   └── images-sikuli/
    │       ├── image1.png
    │       └── ...
    │
    ├── settings/
    │   ├── basePage.robot
    │   └── env.json
    │ 
    ├── README.md
    │
    └── requirements.txt


**TestCases**: Nesta pasta, você encontrará subpastas com arquivos de testes Robot Framework. Cada arquivo representa um caso de teste diferente, onde você define a sequência de ações a serem executadas.

**nome_teste.robot**: Estes arquivos possuem os casos de testes estruturados com o *** Test Cases ***, ou seja são os arquivos de testes.

**keywords.robot**: Estes arquivos contém palavras-chave personalizadas para reutilização nos casos de teste. As palavras-chave são essenciais para abstrair a lógica e tornar os testes mais legíveis e reutilizáveis.

**elements.robot**: Estes arquivos contém o mapeamento de elementos utilizados nos casos de testes, por exemplo, seletores de botões a serem clicados nos testes.

**resources**: Aqui você pode armazenar dados de teste, como informações de login, em arquivos de texto na pasta Test_Data. A pasta Images-Sikuli contém capturas de tela ou imagens que podem ser usadas com a biblioteca Sikuli.

**settings**: O arquivo main.robot contém configurações globais para o projeto, como importação de bibliotecas e configurações de execução.

**Comandos do Robot Framework**    
O Robot Framework usa uma sintaxe de linguagem natural para criar testes automatizados. Aqui estão alguns dos comandos e estruturas-chave que você encontrará nos arquivos do projeto:

1. **Settings**     
No arquivo main.robot, você configura as bibliotecas a serem utilizadas no projeto.

2. **Variables**        
Você pode definir variáveis no início do arquivo de teste ou em um arquivo separado de variáveis.

3. **Test Cases**       
Os casos de teste são definidos na seção *** Test Cases ***.

4. **Keywords**     
Palavras-chave personalizadas podem ser definidas na seção *** Keywords ***. Isso ajuda a organizar e reutilizar a lógica do teste. Aqui está um exemplo:


**Configurando o Projeto em sua Máquina**       
Siga estas etapas para configurar o projeto de testes em sua máquina:

**1. Clonando o Repositório**   
Clone este repositório em sua máquina usando o Git:

`git clone https://`
Substitua seu-usuario/seu-projeto pelo URL do repositório real.

**2. Navegando para a Pasta do Projeto**     
Vá para a pasta do projeto:     
`cd seu-projeto`

**3. Preparação do Ambiente Virtual (Opcional, mas recomendado)**   
Utilizar um ambiente virtual ajuda a isolar as dependências do projeto.Certifique-se de ter o Python instalado em sua máquina, caso não tenha, siga os passos na documentação do próprio Robot Framework: https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#python-installation


**Após verificar se o Python está instalado, siga os passos abaixo:**

**Crie um ambiente virtual (substitua 'nome_do_ambiente' pelo nome que você deseja dar ao ambiente)**       
`python -m venv nome_do_ambiente_virtual`

**Ative o ambiente virtual**:
**No Windows**      
`nome_do_ambiente\Scripts\activate`

**No macOS e Linux**        
`source nome_do_ambiente/bin/activate`

**4. Instalando Dependências**   
Certifique-se de ter o pip instalado em seu ambiente virtual. Em seguida, instale as dependências do projeto a partir do arquivo requirements.txt:

`pip install -r requirements.txt`

**5. Configurando Variáveis de Ambiente (se necessário)**   
Se o seu projeto exigir variáveis de ambiente para configurações, 

**6. Executando os Testes**     
Agora, você pode executar os testes Robot Framework usando o comando robot. Certifique-se de estar no diretório raiz do projeto ao executar este comando:

`robot TestCases/`

**7. Executando os Testes com Tags**     
O Robot Framework permite que você marque casos de teste com tags e execute apenas os casos marcados com tags específicas. Para fazer isso, você pode usar o seguinte comando:      
`robot -i tagname TestCases/`


- Por exemplo, se você tem casos de teste marcados com a tag essential, você pode executá-los assim:
`robot -i essential TestCases/`     



**Links de documentações das tecnologis utilizadas:**
https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html
https://rainmanwy.github.io/robotframework-SikuliLibrary/doc/SikuliLibrary.html
https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html