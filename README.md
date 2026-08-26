# Abastecimento de Veículos

## Descrição do Projeto

Este projeto consiste no desenvolvimento de uma aplicação para controle e acompanhamento do histórico de abastecimentos de veículos, com versões Mobile e Web.

O sistema permite registrar abastecimentos, armazenar os dados localmente e acompanhar informações sobre os gastos e o consumo médio do veículo.

Cada registro de abastecimento possui:

- Data
- Tipo de combustível
- Quantidade de litros
- Valor pago
- Quilometragem

O aplicativo também calcula o preço médio por litro e o consumo médio do veículo em km/L, considerando o abastecimento anterior.

---

## Objetivo

Desenvolver uma aplicação capaz de auxiliar o usuário no controle dos abastecimentos e no acompanhamento do consumo e dos gastos do veículo.

O sistema calcula automaticamente:

- Preço médio por litro
- Consumo médio do veículo (km/L)
- Histórico de abastecimentos

---

## Desafio Mobile

O aplicativo Mobile permite cadastrar e consultar um histórico de abastecimentos, armazenando os registros localmente no dispositivo.

A aplicação possui uma tela Splash e uma tela Home para gerenciamento dos abastecimentos.

---

## Prints do Projeto
- Estão na pasta /images

---

## Tecnologias Utilizadas

### Mobile

- Flutter
- Dart
- Material Design
- Persistência local

### Web

- HTML
- CSS
- JavaScript
- LocalStorage
- Gráficos

---

## Funcionalidades

- Tela Splash
- Alternância para tema escuro
- Tela Home
- Cadastro de abastecimentos
- Exclusão de registros
- Edição de registros
- Armazenamento local dos dados
- Cálculo do preço médio por litro
- Cálculo do consumo médio do veículo
- Histórico de abastecimentos
- Gráfico comparativo dos abastecimentos

---

## Requisitos Funcionais

### RF001

O aplicativo possui uma tela Splash com um ícone, botão para trocar para o tema escuro e botão para entrar.

Criticidade: Importante

### RF002

A tela Home apresenta uma lista de abastecimentos, um botão `+` para adicionar novos registros e uma lixeira em cada item para excluir o registro.

Criticidade: Essencial

### RF003

O aplicativo exibe o custo médio por litro e o consumo médio do veículo (km/L).

Criticidade: Essencial

### RF004

O aplicativo armazena os registros localmente no celular.

Criticidade: Essencial

### RF005

Ao clicar em um item da lista, é aberto um modal para permitir a alteração dos dados do abastecimento.

Criticidade: Desejável

---

## Funcionamento do Aplicativo

1. O usuário acessa a tela Splash.
2. Pode alternar entre o tema claro e escuro.
3. Ao entrar, é direcionado para a tela Home.
4. O usuário cadastra um novo abastecimento.
5. Informa a data, combustível, quantidade de litros, valor pago e quilometragem.
6. O sistema calcula o preço médio por litro.
7. O sistema calcula o consumo médio em km/L utilizando o abastecimento anterior.
8. O abastecimento é armazenado localmente.
9. O usuário pode visualizar, editar ou excluir os registros.
10. Na versão Web, os abastecimentos também são apresentados em um gráfico comparativo.

---

## Cálculos

### Preço Médio por Litro

O preço por litro é calculado dividindo o valor pago pela quantidade de litros abastecidos.

Preço por litro = Valor pago ÷ Litros

### Consumo Médio

O consumo do veículo é calculado considerando a diferença entre a quilometragem atual e a quilometragem do abastecimento anterior.

Consumo médio = Distância percorrida ÷ Litros abastecidos

---

## Diferenciais

- Controle do histórico de abastecimentos
- Persistência local dos dados
- Cálculo automático do preço por litro
- Cálculo do consumo médio em km/L
- Edição e exclusão de registros
- Tema claro e escuro
- Interface responsiva na versão Web
- Gráfico comparativo dos abastecimentos
- Aplicação para Mobile e Web

---
