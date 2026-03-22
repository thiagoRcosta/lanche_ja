# Lanche Já 🍔

![Flutter](https://img.shields.io/badge/Flutter-3.x-blue)
![Architecture](https://img.shields.io/badge/Architecture-MVVM-green)
![State Management](https://img.shields.io/badge/State%20Management-Provider%20%2B%20ChangeNotifier-purple)
![Networking](https://img.shields.io/badge/Networking-Dio-orange)

### Aplicativo mobile para pedidos e controle de restaurantes, desenvolvido em Flutter com foco em boas práticas de arquitetura, organização modular e escalabilidade.

O objetivo do projeto é demonstrar boas práticas de engenharia de software aplicadas ao desenvolvimento mobile, incluindo separação de responsabilidades, modularização e organização escalável de código.

# O Projeto
O **Lanche Já** é um sistema multiplataforma para restaurantes, criado para agilizar pedidos e o controle de comandas.

A interface é dividida em duas áreas principais:

- **Cliente**: permite visualizar o cardápio, realizar pedidos, acompanhar o valor total e avaliar produtos.
- **Restaurante**: voltada à gestão de comandas e pedidos pela equipe.

A experiência do cliente possui um design moderno e intuitivo, pensado para **dispositivos móveis**, enquanto a interface do restaurante é otimizada para **eficiência e praticidade em telas maiores**, como desktops.

# Arquitetura
O projeto utiliza o padrão **MVVM (Model – View – ViewModel)** para separar responsabilidades entre interface, lógica de apresentação e modelo de dados.

### Estrutura de camadas
- **Model**  
  Representa os dados e regras de negócio da aplicação. Inclui classes responsáveis pela estrutura e manipulação dos dados.

- **View**  
  Responsável pela interface do usuário. Inclui telas, widgets e componentes visuais.

- **ViewModel**  
  Atua como intermediário entre a View e o Model, gerenciando o estado da aplicação e a lógica de apresentação.

# Fluxo de Dados da Aplicação
View → ViewModel → Service → API

# Gerenciamento de Estado
O gerenciamento de estado é implementado utilizando **ChangeNotifier** em conjunto com **Provider**, seguindo o padrão arquitetural **MVVM**.

- **Provider** é utilizado para injeção de dependências e exposição dos ViewModels na árvore de widgets.
- **ChangeNotifier** é utilizado nos ViewModels para gerenciar o estado da aplicação e notificar a interface quando ocorrem mudanças.

# Organização Feature-First
O código é organizado por funcionalidades (**features**) em vez de camadas tradicionais.

Cada feature contém suas próprias pastas para Model, View e ViewModel, facilitando a manutenção e escalabilidade do projeto.

Cada feature do aplicativo possui seu próprio conjunto de:

- **models**
- **viewmodels**
- **views**
- **widgets**
- **services**

Isso permite que cada módulo evolua de forma independente.

# Descrição das Camadas

### core
Contém recursos globais da aplicação:

- **config**: gerenciamento de configurações globais do aplicativo
- **constants**: definição de constantes utilizadas em todo o projeto
- **network**: configuração e gerenciamento de requisições HTTP
- **storage**: gerenciamento de dados persistentes no dispositivo
- **theme**: definição de temas e estilos visuais
- **utils**: funções auxiliares e helpers

### features
Cada funcionalidade do aplicativo é organizada como um módulo independente.

Cada feature contém:

- **models** → estrutura de dados específica da feature  
- **viewmodels** → lógica de apresentação e gerenciamento de estado  
- **views** → telas e componentes visuais da feature  
- **widgets** → componentes visuais reutilizáveis da feature  
- **services** → comunicação externa ou lógica de infraestrutura

### routes
Responsável pelo gerenciamento de rotas e navegação do aplicativo, incluindo definição de rotas e controle de navegação.

### shared
Componentes reutilizáveis por múltiplas features.

Exemplos:
- **models**: classes de modelo reutilizáveis
- **widgets**: componentes visuais genéricos como botões e campos de texto
- **services**: serviços compartilhados, como autenticação ou gerenciamento de estado

# Tecnologias Utilizadas
- **Flutter** — Framework para desenvolvimento de aplicativos móveis multiplataforma  
- **Dart** — Linguagem de programação utilizada pelo Flutter  
- **Provider + ChangeNotifier** — Injeção de dependências e gerenciamento de estado reativo
- **Dio** — Cliente HTTP para comunicação com APIs  

# Como executar o projeto

1. Clone o repositório
```
git clone https://github.com/thiagoRcosta/lanche_ja
```

2. Instale as dependências
```
flutter pub get
```

3. Execute o projeto
```
flutter run
```

# Status

🚧 Em desenvolvimento

