<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Candidatura.aspx.cs" Inherits="Candidatura.Candidatura" %>

<!DOCTYPE html>
<html lang="pt">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Candidatura — Nacional Multi</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,500;0,600;0,700;1,400;1,600&family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,600;1,9..40,300&display=swap" rel="stylesheet">
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,400;0,500;0,600;0,700;1,400;1,600&family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,600;1,9..40,300&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="css/style.css">
    <style type="text/css">
        .img {
            height: 47px;
            width: 55px;
        }
    </style>
</head>
<body>

  <header class="site-header">
    <div class="header-inner">
      <div class="brand">
        <img src="img/logo.png" class="img"/>
        <span class="brand-divider"></span>
        <span class="brand-tagline">Nacional Multi - Recursos Humanos</span>
      </div>
      <div class="header-meta">
        <span class="doc-ref">Formulário de Candidatura</span>
        <span class="doc-year">2026</span>
      </div>
    </div>
    <div class="header-rule"></div>
  </header>

  <main class="page-main">

    <div class="form-intro">
      <div class="intro-headline">
        <h1>Formulário de Candidatura</h1>
      </div>
      <div class="intro-notice">
        <p>Após preenchimento deste formulário será necessário imprimir e/ou exportar para PDF para posterior impressão.
        Este formulário impresso deve ser entregue para formalizar a candidatura via correios, ou via e-mail em formato PDF.</p>
      </div>
      <div class="intro-legend">
        <span><mark class="req">*</mark> Campos de preenchimento obrigatório</span>
        <span><mark class="req-dbl">**</mark> Pelo menos um destes campos tem de ser preenchido</span>
      </div>
    </div>

    <form id="Form1" runat="server" novalidate>
      <div class="form-grid two-col">

        <section class="form-section">
          <h2 class="section-title">Dados Pessoais</h2>

          <div class="field full">
            <label for="nome">Nome <mark class="req">*</mark></label>
            <input type="text" id="nome" name="nome" placeholder="Nome completo" required autocomplete="name" runat="server" />
          </div>

          <div class="field-row">
            <div class="field">
              <label for="dataNascimento">Data de Nascimento <mark class="req">*</mark></label>
                <asp:TextBox ID="tbDataNascimento" runat="server" TextMode="Date" CssClass="form-control" required="required"></asp:TextBox>
            </div>
           </div>

            <div class="field">
              <label>Sexo</label>
              <div class="radio-group">
                <label class="radio-label">
                  <input type="radio" name="sexo" value="Masculino"> Masculino
                </label>
                <label class="radio-label">
                  <input type="radio" name="sexo" value="Feminino"> Feminino
                </label>
              </div>
            </div>

          <div class="field-row">
            <div class="field">
              <label for="naturalidade">Naturalidade <mark class="req">*</mark></label>
              <asp:TextBox ID="tbNaturalidade" runat="server" CssClass="form-control" placeholder="Naturalidade" required="required"></asp:TextBox>
            </div>
            <div class="field">
              <label for="estadoCivil">Estado Civil</label>
               <asp:DropDownList ID="ddlEstadoCivil" runat="server" CssClass="form-control">
                   <asp:ListItem Value="Solteiro/a">Solteiro/a</asp:ListItem>
                   <asp:ListItem Value="Casado/a">Casado/a</asp:ListItem>
                   <asp:ListItem Value="Divorciado/a">Divorciado/a</asp:ListItem>
                   <asp:ListItem Value="Viúvo/a">Viúvo/a</asp:ListItem>
                   <asp:ListItem Value="União de facto">União de facto</asp:ListItem>
               </asp:DropDownList>

            </div>
          </div>
            <div class="field">
              <label for="nacionalidade">Nacionalidade</label>
              <select id="nacionalidade" name="nacionalidade">
                <option value="Portuguesa">Portuguesa</option>
                <option value="Brasileira">Brasileira</option>
                <option value="Alemã">Alemã</option>
                <option value="Espanhola">Espanhola</option>
                <option value="Francesa">Francesa</option>
                <option value="Italiana">Italiana</option>
                <option value="Outra">Outra</option>
              </select>
            </div>

            <div class="field full">
                <label for="email">Email <mark class="req-dbl">**</mark></label>
                <asp:TextBox ID="tbEmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="nome@exemplo.pt"></asp:TextBox>
            </div>
        </section>

        <section class="form-section">
          <h2 class="section-title">Morada e Contacto</h2>
            
            <div class="field full">
                <label for="tbRua">Rua <mark class="req">*</mark></label>
                <asp:TextBox ID="tbRua" runat="server" CssClass="form-control" placeholder="Morada completa e número" required="required"></asp:TextBox>
           </div>

          <div class="field">
            <label for="codigoPostal1">Código Postal <mark class="req">*</mark></label>
            <div class="cp-group">
              <input type="text" id="codigoPostal1" name="codigoPostal1" placeholder="0000" maxlength="4" pattern="\d{4}" required autocomplete="postal-code" style="max-width:90px">
              <span class="cp-sep">–</span>
              <input type="text" id="codigoPostal2" name="codigoPostal2" placeholder="000" maxlength="3" pattern="\d{3}" required style="max-width:68px">
            </div>
          </div>

          <div class="field-row">
            <div class="field">
              <label for="localidade">Localidade <mark class="req">*</mark></label>
              <input type="text" id="localidade" name="localidade" placeholder="Localidade" required runat="server" />
            </div>

            <div class="field">
              <label for="concelho">Concelho <mark class="req">*</mark></label>
              <input type="text" id="concelho" name="concelho" placeholder="Concelho" required>
            </div>
          </div>

          <div class="field full">
            <label for="pais">País <mark class="req">*</mark></label>
            <input type="text" id="pais" name="pais" placeholder="País" value="Portugal" required autocomplete="country-name" runat="server" />
          </div>

          <div class="field-row">
            <div class="field">
              <label for="telefone">Telefone <mark class="req-dbl">**</mark></label>
              <input type="tel" id="telefone" name="telefone" placeholder="+351 200 000 000" autocomplete="tel">
            </div>
            <div class="field">
              <label for="telemovel">Telemóvel <mark class="req-dbl">**</mark></label>
              <asp:TextBox ID="tbTelemovel" runat="server" TextMode="Phone" CssClass="form-control" placeholder="+351 900 000 000"></asp:TextBox>
            </div>
          </div>
        </section>
      </div>

      <div class="form-grid two-col">

        <section class="form-section">
          <h2 class="section-title">Dados do Bilhete de Identidade</h2>

          <div class="field-row">
            <div class="field">
              <label for="biNumero">Número <mark class="req">*</mark></label>
              <input type="text" id="biNumero" name="biNumero" placeholder="Número do BI / CC" required>
            </div>
            <div class="field">
              <label for="biEmissao">Data de Emissão <mark class="req">*</mark></label>
              <input type="date" id="biEmissao" name="biEmissao" required>
            </div>
          </div>

          <div class="field">
            <label for="biValidade">Data de Validade <mark class="req">*</mark></label>
            <input type="date" id="bivalidade" name="bivalidade"required>
          </div>

          <div class="field-row">
            <div class="field">
              <label for="filhoDe">Filho/a de <mark class="req">*</mark></label>
              <input type="text" id="filhoDe" name="filhoDe" placeholder="Nome do pai ou mãe" required>
            </div>
            <div class="field">
              <label for="eDe">e de <mark class="req">*</mark></label>
              <input type="text" id="eDe" name="eDe" placeholder="Nome do pai ou mãe" required>
            </div>

            <div class="field full">
                <label for="nif">Número de Identificação Fiscal (NIF) <mark class="req">*</mark></label>
                <input type="text" id="nif" name="nif" placeholder="000 000 000" maxlength="9" required>
            </div>

          </div>
        </section>

        <section class="form-section">
          <h2 class="section-title">Certificações</h2>


          <div class="field full">
            <label for="habilitacoes">Habilitações Literárias</label>
            <select id="habilitacoes" name="habilitacoes">
              <option value="4.º Ano">4.º Ano</option>
              <option value="6.º Ano">6.º Ano</option>
              <option value="9.º Ano" selected>9.º Ano</option>
              <option value="12.º Ano">12.º Ano</option>
              <option value="Licenciatura">Licenciatura</option>
              <option value="Pós-Graduação">Pós-Graduação</option>
              <option value="Mestrado">Mestrado</option>
              <option value="Doutoramento">Doutoramento</option>
            </select>
          </div>

          <div class="field full">
            <label for="curso">Curso</label>
            <input type="text" id="curso" name="curso" placeholder="Designação do curso">
          </div>

          <div class="field full">
            <label for="profissao">Profissão <mark class="req-dbl">**</mark></label>
            <input type="text" id="profissao" name="profissao" placeholder="Profissão atual">
          </div>

          <div class="field full">
            <label>Serviço Militar ou outras forças policiais</label>
            <div class="radio-group">
              <label class="radio-label">
                <input type="radio" name="servicoMilitar" value="Sim"> Sim
              </label>
              <label class="radio-label">
                <input type="radio" name="servicoMilitar" value="Não" checked> Não
              </label>
            </div>
          </div>
        </section>
      </div>

      <div class="form-grid">
        <section class="form-section">
          <div class="field-row">
            <div class="field">
              <label for="localCandidatura">Para qual local deseja se candidatar</label>
              <select id="localProvas" name="localProvas">
                <option value="Lisboa">Lisboa</option>
                <option value="Porto">Porto</option>
                <option value="Coimbra">Coimbra</option>
                <option value="Faro">Faro</option>
                <option value="Braga">Braga</option>
                <option value="Évora">Évora</option>
                <option value="Aveiro">Aveiro</option>
                <option value="Viseu">Viseu</option>
                <option value="Leiria">Leiria</option>
                <option value="Funchal">Funchal</option>
                <option value="Ponta Delgada">Ponta Delgada</option>
              </select>
            </div>
            <div class="field" style="flex:2">
              <label for="outrasHabilitacoes">Outras Habilitações</label>
              <textarea id="outrasHabilitacoes" name="outrasHabilitacoes" rows="4" placeholder="Certifições, formações adicionais, línguas estrangeiras, competências relevantes…"></textarea>
            </div>
          </div>
        </section>
      </div>

      <div class="form-grid" style="margin-bottom:0">
        <section class="declarations-section">
          <h2 class="declaration-title">Declaro sobre compromisso de honra o seguinte:</h2>
          <ul class="declaration-list">
            <li>Que possuo robustez física e não estou inibido/a ou interdito/a de desempenhar a função a qual me candidato.</li>
            <li>Não fui condenado por qualquer crime doloso;</li>
            <li>Tenho bom comportamento moral e cívico;</li>
            <li>Possuo as qualificações exigidas para a função.</li>
            <li>Não estou abrangido pelo estatuto de objetor de consciência.</li>
          </ul>

          <div class="declaration-check"> <asp:CheckBox ID="chkDeclaracaoHonra" runat="server"
              Text="Declaro, sob compromisso de honra, que as informações prestadas são verdadeiras." />
          </div>

        </section>
      </div>

      <div id="error-area"></div>

        <div class="form-actions">
            <asp:Button ID="btnRegistar" runat="server" Text="Registar Candidatura" CssClass="btn-submit" OnClick="btnRegistar_Click" />
        </div>
    </form>

  </main>

</body>
</html>