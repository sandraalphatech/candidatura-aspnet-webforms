using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace Candidatura
{
    public partial class Candidatura : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegistar_Click(object sender, EventArgs e)
        {

            string nome = this.nome.Value;
            string dataNascimento = tbDataNascimento.Text;
            string sexo = Request.Form["sexo"];
            string naturalidade = tbNaturalidade.Text;
            string estadoCivil = ddlEstadoCivil.SelectedValue;
            string nacionalidade = Request.Form["nacionalidade"];
            string email = tbEmail.Text;

            string rua = tbRua.Text;
            string codigoPostal1 = Request.Form["codigoPostal1"];
            string codigoPostal2 = Request.Form["codigoPostal2"];
            string codigoPostal = codigoPostal1 + "-" + codigoPostal2;
            string localidade = this.localidade.Value;
            string concelho = Request.Form["concelho"];
            string pais = this.pais.Value;
            string telefone = Request.Form["telefone"];
            string telemovel = tbTelemovel.Text;

            string numeroBI = Request.Form["biNumero"];
            string dataEmissao = Request.Form["biEmissao"];
            string dataValidade = Request.Form["bivalidade"];
            string filhoDe = Request.Form["filhoDe"];
            string eDe = Request.Form["eDe"];
            string nif = Request.Form["nif"];

            string habilitacoesLiterarias = Request.Form["habilitacoes"];
            string curso = Request.Form["curso"];
            string profissao = Request.Form["profissao"];

            string servicoMilitarValor = Request.Form["servicoMilitar"];
            bool servicoMilitar = servicoMilitarValor == "Sim";

            string localCandidatura = Request.Form["localProvas"];
            string outrasHabilitacoes = Request.Form["outrasHabilitacoes"];

            bool declaracaoHonra = chkDeclaracaoHonra.Checked;

            string connectionString = ConfigurationManager.ConnectionStrings["CandidaturaConnectionString"].ConnectionString;

            using (SqlConnection conn = new SqlConnection(connectionString))
            {
                string sql = @"
            INSERT INTO Candidatura
            (
                Nome,
                DataNascimento,
                Sexo,
                Naturalidade,
                EstadoCivil,
                Nacionalidade,
                Email,
                Rua,
                CodigoPostal,
                Localidade,
                Concelho,
                Pais,
                Telefone,
                Telemovel,
                NumeroBI,
                DataEmissao,
                DataValidade,
                FilhoDe,
                EDe,
                NIF,
                HabilitacoesLiterarias,
                Curso,
                Profissao,
                ServicoMilitar,
                LocalCandidatura,
                OutrasHabilitacoes,
                DeclaracaoHonra
            )
            VALUES
            (
                @Nome,
                @DataNascimento,
                @Sexo,
                @Naturalidade,
                @EstadoCivil,
                @Nacionalidade,
                @Email,
                @Rua,
                @CodigoPostal,
                @Localidade,
                @Concelho,
                @Pais,
                @Telefone,
                @Telemovel,
                @NumeroBI,
                @DataEmissao,
                @DataValidade,
                @FilhoDe,
                @EDe,
                @NIF,
                @HabilitacoesLiterarias,
                @Curso,
                @Profissao,
                @ServicoMilitar,
                @LocalCandidatura,
                @OutrasHabilitacoes,
                @DeclaracaoHonra
                );
             
                SELECT CAST(SCOPE_IDENTITY() AS INT);";


                using (SqlCommand cmd = new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@Nome", nome);
                    cmd.Parameters.AddWithValue("@DataNascimento",Convert.ToDateTime(dataNascimento));
                    cmd.Parameters.AddWithValue("@Sexo",(object)sexo ?? DBNull.Value);
                    cmd.Parameters.AddWithValue("@Naturalidade",naturalidade);
                    cmd.Parameters.AddWithValue("@EstadoCivil",estadoCivil);
                    cmd.Parameters.AddWithValue("@Nacionalidade",nacionalidade);
                    cmd.Parameters.AddWithValue("@Email",email);

                    cmd.Parameters.AddWithValue("@Rua", rua);
                    cmd.Parameters.AddWithValue("@CodigoPostal",codigoPostal);
                    cmd.Parameters.AddWithValue("@Localidade",localidade);
                    cmd.Parameters.AddWithValue("@Concelho",concelho);
                    cmd.Parameters.AddWithValue("@Pais",pais);
                    cmd.Parameters.AddWithValue("@Telefone",string.IsNullOrWhiteSpace(telefone)? (object)DBNull.Value: telefone);
                    cmd.Parameters.AddWithValue("@Telemovel",string.IsNullOrWhiteSpace(telemovel)? (object)DBNull.Value: telemovel);

                    cmd.Parameters.AddWithValue("@NumeroBI", numeroBI);
                    cmd.Parameters.AddWithValue("@DataEmissao", Convert.ToDateTime(dataEmissao));
                    cmd.Parameters.AddWithValue("@DataValidade", Convert.ToDateTime(dataValidade));
                    cmd.Parameters.AddWithValue("@FilhoDe", filhoDe);
                    cmd.Parameters.AddWithValue("@EDe", eDe);
                    cmd.Parameters.AddWithValue("@NIF",nif);

                    cmd.Parameters.AddWithValue("@HabilitacoesLiterarias",habilitacoesLiterarias);
                    cmd.Parameters.AddWithValue("@Curso", string.IsNullOrWhiteSpace(curso) ? (object)DBNull.Value: curso);
                    cmd.Parameters.AddWithValue("@Profissao", string.IsNullOrWhiteSpace(profissao) ? (object)DBNull.Value: profissao);

                    cmd.Parameters.AddWithValue("@ServicoMilitar", servicoMilitar);

                    cmd.Parameters.AddWithValue("@LocalCandidatura",localCandidatura);

                    cmd.Parameters.AddWithValue("@OutrasHabilitacoes", string.IsNullOrWhiteSpace(outrasHabilitacoes) ? (object)DBNull.Value: outrasHabilitacoes);

                    cmd.Parameters.AddWithValue("@DeclaracaoHonra", declaracaoHonra);

                    conn.Open();
                    int idCandidatura = Convert.ToInt32(cmd.ExecuteScalar());
                    Response.Redirect("sucess.aspx?id=" + idCandidatura);
                }
            }

            Response.Write("Candidatura registada com sucesso!");
        }
    }
}