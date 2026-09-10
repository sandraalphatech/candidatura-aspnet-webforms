using System;
using System.Configuration;
using System.Data.SqlClient;
using System.EnterpriseServices;

namespace Candidatura
{
    public partial class Sucess : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregarCandidatura();
            }
        }

        private void CarregarCandidatura()
        {
            int id;

            if (!int.TryParse(Request.QueryString["id"], out id))
            {
                Response.Redirect("Candidatura.aspx");
                return;
            }

            string connectionString =
                ConfigurationManager
                .ConnectionStrings["CandidaturaConnectionString"]
                .ConnectionString;

            string sql = @"
                SELECT
                    IdCandidatura,
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
                    DeclaracaoHonra,
                    DataCandidatura
                FROM Candidatura
                WHERE IdCandidatura = @IdCandidatura
            ";

            using (SqlConnection conn =
                   new SqlConnection(connectionString))
            {
                using (SqlCommand cmd =
                       new SqlCommand(sql, conn))
                {
                    cmd.Parameters.AddWithValue("@IdCandidatura", id);

                    conn.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            lblNome.Text =
                                reader["Nome"].ToString();

                            lblDataNascimento.Text =
                                Convert.ToDateTime(
                                    reader["DataNascimento"]
                                ).ToString("dd/MM/yyyy");

                            lblSexo.Text =
                                reader["Sexo"].ToString();

                            lblNaturalidade.Text =
                                reader["Naturalidade"].ToString();

                            lblEstadoCivil.Text =
                                reader["EstadoCivil"].ToString();

                            lblNacionalidade.Text =
                                reader["Nacionalidade"].ToString();

                            lblEmail.Text =
                                reader["Email"].ToString();

                            lblRua.Text =
                                reader["Rua"].ToString();

                            lblCodigoPostal.Text =
                                reader["CodigoPostal"].ToString();

                            lblLocalidade.Text =
                                reader["Localidade"].ToString();

                            lblConcelho.Text =
                                reader["Concelho"].ToString();

                            lblPais.Text =
                                reader["Pais"].ToString();

                            lblTelefone.Text =
                                reader["Telefone"].ToString();

                            lblTelemovel.Text =
                                reader["Telemovel"].ToString();

                            lblNumeroBI.Text =
                                reader["NumeroBI"].ToString();

                            lblNIF.Text =
                                reader["NIF"].ToString();

                            lblDataEmissao.Text =
                                Convert.ToDateTime(
                                    reader["DataEmissao"]
                                ).ToString("dd/MM/yyyy");

                            lblDataValidade.Text =
                                Convert.ToDateTime(
                                    reader["DataValidade"]
                                ).ToString("dd/MM/yyyy");

                            lblFilhoDe.Text =
                                reader["FilhoDe"].ToString();

                            lblEDe.Text =
                                reader["EDe"].ToString();

                            lblHabilitacoes.Text =
                                reader["HabilitacoesLiterarias"].ToString();

                            lblCurso.Text =
                                reader["Curso"].ToString();

                            lblProfissao.Text =
                                reader["Profissao"].ToString();

                            bool servicoMilitar =
                                Convert.ToBoolean(
                                    reader["ServicoMilitar"]
                                );

                            lblServicoMilitar.Text =
                                servicoMilitar ? "Sim" : "Não";

                            lblLocalCandidatura.Text =
                                reader["LocalCandidatura"].ToString();

                            lblOutrasHabilitacoes.Text =
                                reader["OutrasHabilitacoes"].ToString();

                            bool declaracao =
                                Convert.ToBoolean(
                                    reader["DeclaracaoHonra"]
                                );

                            lblDeclaracao.Text =
                                declaracao ? "Aceite" : "Não aceite";

                            lblDataCandidatura.Text =
                                Convert.ToDateTime(
                                    reader["DataCandidatura"]
                                ).ToString("dd/MM/yyyy HH:mm");
                        }
                        else
                        {
                            Response.Redirect("Candidatura.aspx");
                        }
                    }
                }
            }
        }
    }
}