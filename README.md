# Lanche Já 🍔

![Flutter](https://img.shields.io/badge/Flutter-3.x-blue)
![Architecture](https://img.shields.io/badge/Architecture-MVVM-green)
![State Management](https://img.shields.io/badge/State%20Management-Provider-purple)
![Networking](https://img.shields.io/badge/Networking-Dio-orange)

### Aplicativo mobile para pedidos e controle de restaurantes, desenvolvido em Flutter com foco em boas práticas de arquitetura, organização modular e escalabilidade.

O objetivo do projeto é demonstrar boas práticas de engenharia de software aplicadas ao desenvolvimento mobile, incluindo separação de responsabilidades, modularização e organização escalável de código.

## O Projeto
O Lanche Já é um sistema multiplataforma para restaurantes, criado para agilizar pedidos e o controle de comandas. A interface é dividida em duas áreas principais: a do cliente, onde os usuários podem fazer pedidos, visualizar o cardápio, acompanhar valores totais e realizar avaliações; e a do restaurante, voltada à gestão de comandas e pedidos pela equipe. A experiência do cliente possui um design moderno e intuitivo, pensado para smartphones, enquanto a interface do restaurante é otimizada para eficiência e praticidade em telas maiores, como desktops.

## Arquitetura
O projeto utiliza o padrão MVVM (Model – View – ViewModel) para separar responsabilidades entre interface, lógica de apresentação e modelo de dados.

Estrutura de camadas:
- **Model**: Representa os dados e a lógica de negócios. Inclui classes de modelo, repositórios e serviços de API.
- **View**: Responsável pela interface do usuário. Inclui telas, widgets e componentes visuais.
- **ViewModel**: Atua como intermediário entre a View e o Model, gerenciando o estado e a lógica de apresentação.

## Organização Feature-First
O código é organizado por funcionalidades (features) em vez de camadas tradicionais. Cada feature contém suas próprias pastas para Model, View e ViewModel, facilitando a manutenção e escalabilidade do projeto.

Cada feature do aplicativo possui seu próprio conjunto de:
- **models**
- **viewModels**
- **views**
- **widgets**
- **services**

Isso permite que cada módulo evolua de forma independente.

## Descrição das camadas

### core

Contém recursos globais da aplicação:
- **config**: Gerenciamento de configurações globais do aplicativo.
- **constants**: Definição de constantes utilizadas em todo o projeto.
- **network**: Configuração e gerenciamento de requisições HTTP.
- **storage**: Gerenciamento de dados persistentes no dispositivo.
- **theme**: Definição de temas e estilos visuais.
- **utils**: Funções auxiliares e helpers.

### features

Cada funcionalidade do aplicativo é organizada como um módulo independente e cada feature contém:
- **models**: → Estrutura de dados específica da feature.
- **viewmodels**: → Lógica de apresentação e gerenciamento de estado da feature.
- **views**: → Telas e componentes visuais específicos da feature.
- **widgets**: → Componentes visuais específicos da feature.
- **services**: → Comunicação externa ou lógica de infraestrutura relacionada à feature.

### routes
Gerenciamento de rotas e navegação do aplicativo, incluindo definição de rotas, transições e lógica de navegação.

### shared

Componentes reutilizáveis por múltiplas features.
Exemplos:
- **models**: Classes de modelo que podem ser utilizadas em várias features.
- **widgets**: Componentes visuais genéricos, como botões, campos de texto, etc.
- **services**: Serviços que fornecem funcionalidades transversais, como autenticação, gerenciamento de estado, etc.

## Tecnologias Utilizadas
- **Flutter**: Framework para desenvolvimento de aplicativos móveis multiplataforma.
- **Dart**: Linguagem de programação utilizada pelo Flutter.
- **Provider**: Gerenciamento de estado.
- **Dio**: Cliente HTTP para comunicação com APIs.

## Como executar o projeto

1. Clone o repositório
```
git clone https://github.com/thiagoRcosta/lanche-ja
```

2. Instale as dependências
```
flutter pub get
```

3. Execute o projeto
```
flutter run
```

## Status

🚧 Em desenvolvimento

