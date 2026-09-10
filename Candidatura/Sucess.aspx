<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sucess.aspx.cs" Inherits="Candidatura.Sucess" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <title>Candidatura Registada</title>

    <style>

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f3f3f3;
            margin: 0;
            padding: 30px;
            color: #222;
        }

        .container {
            max-width: 900px;
            margin: auto;
        }

        .success-message {
            background: #dff3e4;
            border: 1px solid #9bd0a8;
            color: #216b35;
            padding: 18px;
            border-radius: 8px;
            margin-bottom: 25px;
            text-align: center;
        }

        .success-message h2 {
            margin: 0 0 8px 0;
        }

        .document {
            background: white;
            padding: 40px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,.10);
        }

        .document-header {
            text-align: center;
            border-bottom: 2px solid #222;
            padding-bottom: 20px;
            margin-bottom: 25px;
        }

        .document-header h1 {
            margin: 0;
            font-size: 25px;
            color: #181f13;
        }

        .document-header p {
            margin: 8px 0 0;
            color: #666;
        }

        .section {
            margin-top: 25px;
        }

        .section-title {
            background: #cbf2d4;
            padding: 9px 12px;
            font-weight: bold;
            border-left: 4px solid #333;
            margin-bottom: 12px;
            border-radius: 5px;
            color: #181f13;
        }

        .row {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
            margin-bottom: 12px;
        }

        .field {
            border-bottom: 1px solid #ddd;
            padding: 6px 0;
        }

        .label {
            font-size: 12px;
            color: #777;
            display: block;
            margin-bottom: 3px;
        }

        .value {
            font-size: 15px;
        }

        .actions {
            display: flex;
            justify-content: center;
            gap: 12px;
            margin: 25px 0;
        }

        .btn {
            border: none;
            padding: 12px 22px;
            border-radius: 6px;
            cursor: pointer;
            font-size: 15px;
        }

        .btn-print {
            background: #174a25;
            color: white;
        }

        .btn-pdf {
            background: #174a25;
            color: white;
        }

        @media(max-width:700px) {

            body {
                padding: 10px;
            }

            .document {
                padding: 20px;
            }

            .row {
                grid-template-columns: 1fr;
                gap: 0;
            }

        }

        @media print {

            body {
                background: white;
                padding: 0;
            }

            .container {
                max-width: none;
            }

            .success-message,
            .actions {
                display: none;
            }

            .document {
                box-shadow: none;
                border-radius: 0;
                padding: 0;
            }

            .section {
                break-inside: avoid;
            }

        }

    </style>

    <script>
        function imprimir() {
            window.print();
        }

        function guardarPDF() {
            window.print();
        }
    </script>

</head>

<body>

<form id="form1" runat="server">
    <div class="container">
        <div class="success-message">

            <h2>Candidatura registada com sucesso</h2>

            <p>
                A sua candidatura foi registada corretamente.
            </p>

        </div>

        <div class="actions">
            <button type="button" class="btn btn-print" onclick="imprimir()"> Imprimir </button>
            <button type="button" class="btn btn-pdf" onclick="guardarPDF()"> Guardar em PDF</button>
        </div>

        <div class="document">

            <div class="document-header">
                <h1>FORMULÁRIO DE CANDIDATURA</h1>
                <p> Comprovativo de candidatura</p>
            </div>

            <div class="section">

                <div class="section-title">Dados Pessoais</div>
                <div class="row">

                    <div class="field">
                        <span class="label">Nome</span><span class="value"><asp:Label ID="lblNome" runat="server"></asp:Label></span>
                    </div>

                    <div class="field">
                        <span class="label">Data de Nascimento</span><span class="value"><asp:Label ID="lblDataNascimento" runat="server"></asp:Label></span>
                    </div>

                </div>

                <div class="row">

                    <div class="field">
                        <span class="label">Sexo</span><span class="value"><asp:Label ID="lblSexo" runat="server"></asp:Label></span>
                    </div>

                    <div class="field">
                        <span class="label">Naturalidade</span><span class="value"><asp:Label ID="lblNaturalidade" runat="server"></asp:Label></span>
                    </div>

                </div>

                <div class="row">

                    <div class="field">
                        <span class="label">Estado Civil</span><span class="value"><asp:Label ID="lblEstadoCivil" runat="server"></asp:Label></span>
                    </div>

                    <div class="field">
                        <span class="label">Nacionalidade</span><span class="value">
                            <asp:Label ID="lblNacionalidade" runat="server"></asp:Label></span>
                    </div>

                </div>

                <div class="field">
                    <span class="label">Email</span> <span class="value">
                        <asp:Label ID="lblEmail" runat="server"></asp:Label></span>
                </div>

            </div>

            <div class="section">

                <div class="section-title">Morada e Contactos</div>

                <div class="field">
                    <span class="label">Rua</span><span class="value">
                        <asp:Label ID="lblRua" runat="server"></asp:Label></span>
                </div>

                <div class="row">

                    <div class="field"><span class="label">Código Postal</span><span class="value">
                            <asp:Label ID="lblCodigoPostal" runat="server"></asp:Label></span>
                    </div>

                    <div class="field">
                        <span class="label">Localidade</span>
                        <span class="value"><asp:Label ID="lblLocalidade" runat="server"></asp:Label></span>
                    </div>

                </div>

                <div class="row">

                    <div class="field">
                        <span class="label">Concelho</span><span class="value"><asp:Label ID="lblConcelho" runat="server"></asp:Label></span>
                    </div>

                    <div class="field">
                        <span class="label">País</span> <span class="value">
                            <asp:Label ID="lblPais" runat="server"></asp:Label>
                        </span>
                    </div>

                </div>

                <div class="row">

                    <div class="field">
                        <span class="label">Telefone</span><span class="value">
                            <asp:Label ID="lblTelefone" runat="server"></asp:Label></span>
                    </div>

                    <div class="field">
                        <span class="label">Telemóvel</span><span class="value">
                            <asp:Label ID="lblTelemovel" runat="server"></asp:Label></span>
                    </div>
                </div>
            </div>

            <div class="section">

                <div class="section-title"> Documento de Identificação</div>

                <div class="row">
                    <div class="field">
                        <span class="label">N.º BI / CC</span>
                        <span class="value"><asp:Label ID="lblNumeroBI" runat="server"></asp:Label></span>
                    </div>

                    <div class="field">
                        <span class="label">NIF</span>
                        <span class="value"><asp:Label ID="lblNIF" runat="server"></asp:Label></span>
                    </div>

                </div>

                <div class="row">

                    <div class="field">
                        <span class="label">Data de Emissão</span>
                        <span class="value">
                            <asp:Label ID="lblDataEmissao" runat="server"></asp:Label>
                        </span>
                    </div>

                    <div class="field">
                        <span class="label">Data de Validade</span>
                        <span class="value">
                            <asp:Label ID="lblDataValidade" runat="server"></asp:Label>
                        </span>
                    </div>
                </div>

                <div class="row">
                    <div class="field">
                        <span class="label">Filho de</span>
                        <span class="value">
                            <asp:Label ID="lblFilhoDe" runat="server"></asp:Label>
                        </span>
                    </div>

                    <div class="field">
                        <span class="label">E de</span>
                        <span class="value">
                            <asp:Label ID="lblEDe" runat="server"></asp:Label>
                        </span>
                    </div>
                </div>
            </div>

            <div class="section">

                <div class="section-title">Habilitações e Formação</div>

                <div class="row">
                    <div class="field">
                        <span class="label">Habilitações Literárias</span>
                        <span class="value">
                            <asp:Label ID="lblHabilitacoes" runat="server"></asp:Label>
                        </span>
                    </div>

                    <div class="field">
                        <span class="label">Curso</span>
                        <span class="value">
                            <asp:Label ID="lblCurso" runat="server"></asp:Label>
                        </span>
                    </div>

                </div>

                <div class="row">
                    <div class="field">
                        <span class="label">Profissão</span>
                        <span class="value">
                            <asp:Label ID="lblProfissao" runat="server"></asp:Label>
                        </span>
                    </div>

                    <div class="field">
                        <span class="label">Serviço Militar</span>
                        <span class="value">
                            <asp:Label ID="lblServicoMilitar" runat="server"></asp:Label>
                        </span>
                    </div>

                </div>
            </div>


            <div class="section">

                <div class="section-title">Dados da Candidatura</div>

                <div class="row">
                    <div class="field">
                        <span class="label">Local de Candidatura</span>
                        <span class="value">
                            <asp:Label ID="lblLocalCandidatura" runat="server"></asp:Label>
                        </span>
                    </div>

                    <div class="field">
                        <span class="label">Declaração de Honra</span>
                        <span class="value">
                            <asp:Label ID="lblDeclaracao" runat="server"></asp:Label>
                        </span>
                    </div>

                </div>

                <div class="field">
                    <span class="label">Outras Habilitações</span>
                    <span class="value">
                        <asp:Label ID="lblOutrasHabilitacoes" runat="server"></asp:Label>
                    </span>
                </div>

            </div>


            <div class="section">
                <p><strong>Data da candidatura:</strong>
                    <asp:Label ID="lblDataCandidatura" runat="server"></asp:Label>
                </p>
            </div>

        </div>
    </div>

</form>

</body>
</html>
