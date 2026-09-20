# Atividade 0 - IA01008 - UFPA - Prof. Claudomiro Sales
**Aluna:** Andrelly Richelly
**Matrícula:** 202692540024

## Tema Escolhido: STARTUP / APP - Doce Anndy Chocolates

Este repositório contém a apresentação em Jupyter Notebook da minha startup real @doce_anndy, conforme solicitado na Atividade 0.

[Bolos Doce Anndy](bolos_doce_anndy.jpg)

### O que tem neste repositório:
- `Atividade_0_FINAL_COMPLETA_andrelly.ipynb` - Notebook completo com índice, apresentação da startup e tratamento do dataset
- `bolos_doce_anndy.jpg` - Foto dos produtos da confeitaria
- `README.md` - Este arquivo

### Sobre o projeto:
- **O que é:** Startup de chocolates artesanais em Belém
- **Problema Real:** Prever quais sabores produzir mais em datas comemorativas (Páscoa, Dia das Mães)
- **Solução com IA:** Classificador binário Perceptron para prever intenção de compra (Sim/Não), evolução para Adaline com Gradient Descent e Stochastic Gradient Descent

### Tratamento do dataset:
Foi realizado o mesmo tratamento mostrado em sala referente ao capítulo 2 do livro Python Machine Learning:
- Leitura do dataset Iris
- Filtragem das duas primeiras classes (Setosa vs Versicolor) com conversão para -1 e 1
- Seleção de 2 features para visualização
- Implementação da classe Perceptron orientada a objetos
- Plotagem da fronteira de decisão
- Normalização das features (Zero mean and unit variance)
- Implementação AdalineGD e AdalineSGD com análise de custo

### Como executar:
1. Abra o arquivo .ipynb no Google Colab
2. Execute todas as células: Ambiente de execução > Executar tudo
3. Os gráficos de dispersão, convergência e fronteira de decisão serão gerados

Link do Notebook no Colab: Abra o arquivo Atividade_0_FINAL_COMPLETA_andrelly.ipynb diretamente no Colab
