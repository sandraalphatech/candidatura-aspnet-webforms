# Candidatura — Sistema Web de Registo
Sistema web desenvolvido em ASP.NET Web Forms e C# para registo e consulta de candidaturas, com integração a uma base de dados SQL Server.

## Funcionalidades
- Formulário de registo de candidaturas
- Recolha de dados pessoais e de contacto
- Registo de informações académicas e profissionais
- Registo de documentação e identificação
- Armazenamento dos dados em base de dados
- Consulta dos dados da candidatura submetida
- Página de confirmação após o registo
- Possibilidade de impressão e salvar documento em PDF
- Identificação da candidatura através de ID

## Tecnologias
- C#
- ASP.NET Web Forms
- SQL Server
- ADO.NET
- HTML
- CSS

## Principais conceitos aplicados
- Programação orientada a eventos
- ASP.NET Web Forms
- Code-behind em C#
- Formulários web
- Manipulação de dados
- Consultas SQL
- INSERT e SELECT
- Parâmetros SQL
- Integração com SQL Server
- Redirecionamento entre páginas
- Query String
- Leitura de dados com SqlDataReader

## Configuração
Antes de executar o projeto, configure a connection string no arquivo `Web.config` com os dados do seu ambiente SQL Server.

## Estrutura do projeto

```text
Candidatura/
├── css/
│   └── style.css
├── img/
│   └── logo.png
│
├── Candidatura.aspx
├── Candidatura.aspx.cs
├── Candidatura.aspx.designer.cs
│
├── Sucess.aspx
├── Sucess.aspx.cs
├── Sucess.aspx.designer.cs
│
├── packages.config
└── Web.config
