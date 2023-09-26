# ADVPL-Acesso ao Banco de Dados

[![NPM](https://img.shields.io/npm/l/react)](https://github.com/scheronlini/ADVPL-Acesso-Banco-de-Dados/blob/main/LICENSE)

# Sobre o projeto

Este Projeto trata-se de Exemplos de telas AxCadastros e MBrowse com acesso ao Banco de Dados.

# Definição de Banco de Dados

É a organização e armazenagem de informações sobre um domínio(Assunto) específico, que precisam ser armazenados para segurança ou conferência futura.
Para o Protheus, um banco de dados armazena os dados empresariais.

## Principais Comandos de acesso a tabelas:

**dbSelectArea:** Seleciona tabela.

**dbSetOrder:**  Muda a ordem de Pesquisa.

**dbSeek:**  Pesquisa.

**dbUseArea:** Abre tabela.

**dbCloseArea:** Fecha uma tabela.

**dbStruct:** Retorna a estrutura de uma tabela.

- Importante: - O Protheus só consegue abrir uma tabela após ter a informação da empresa. O nome da tabela carrega o numero da Empresa

## Principais Comandos de navegação de tabelas:

**DbSkip:** Próxima linha ou linha anterior ( -1 ).

**DbGoTop:** Vai para o primeiro registro da tabela.

**DbGoBottom:** Vai para o ultimo registro da tabela.

**DbGoTo:** Vai para um determinado registro da tabela.

**DbSetOrder:** Muda a ordem dos registros.

-Dica: - O Protheus só consegue navegar se a tabela estiver na área ativa.


## AxCadastro

**Apenas Com um titulo e o numero da tabela, é criada uma interface com o browse de cadastro padrão do Protheus, Caso queira utilizar da estrutura da AxCadastro com botões personalizado, utilizar MBowse().**

![Instance](https://github.com/scheronlini/assets/blob/main/AxCadastro.jpg)

## Estrutura de uma Interface

![Instance](https://github.com/scheronlini/assets/blob/main/Estrutura%20de%20Interface%20Completa.jpg)

## Diagrama de Criação de um mBrowse com aRotina

![Instance](https://github.com/scheronlini/assets/blob/main/Diagrama%20aRotina%20e%20MBrowse.jpg)

# Tecnologias utilizadas
- Linguagem ADVPL
- VSCode
- AppServer
- SQL
- DBAccess

# Autor

Scheronlini Mendes Fauser Martins

https://www.linkedin.com/in/scheronlini
