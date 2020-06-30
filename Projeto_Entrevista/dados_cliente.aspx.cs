using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net.Mail;
using System.Net;

public partial class dados_cliente : System.Web.UI.Page
{
    //campos filtro
    string _sidRegistro = "";

    /// <summary>
    /// Erro
    /// </summary>
    /// <param name="smsg"></param>
    void Erro(string smsg)
    {
        Session["tipo_alerta"] = "error";
        Session["titulo_alerta"] = "Erro";
        Session["mensagem_alerta"] = smsg;
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (IsPostBack == false)
            {

            }
        }
        catch (Exception err)
        {
            Erro(err.Message);
        }
    }
    
    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void cmdsalvar_Click(object sender, EventArgs e)
    {
        try
        {

            int iResult;
            
            //valores
            if (txtNome.Text.Trim() == "")
            {
                Erro("Informe o Cliente Obrigatório!");
                return;
            }

            if (txtCpf.Text.Trim() == "")
            {
                Erro("Informe o CPF Obrigatório!");
                return;
            }

            if (txtEmail.Text.Trim() == "")
            {
                Erro("Informe o Email Obrigatório!");
                return;
            }

            if (txtTelefone.Text.Trim() == "")
            {
                Erro("Informe o Telefone Obrigatório!");
                return;
            }

            if (txtEndereco.Text.Trim() == "")
            {
                Erro("Informe o Endereço Obrigatório!");
                return;
            }

            gergatlink ogat = new gergatlink();

            using (SqlConnection cn = ogat.abre_cn())
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = cn;
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "INSERE_CLIENTE";

                    cmd.Parameters.AddWithValue("@NomeCliente", txtNome.Text.Replace("'", ""));
                    cmd.Parameters.AddWithValue("@Cpf", txtCpf.Text.Replace("'", ""));
                    cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Replace("'", ""));
                    cmd.Parameters.AddWithValue("@Telefone", txtTelefone.Text.Replace("'", ""));
                    cmd.Parameters.AddWithValue("@Endereco", txtEndereco.Text.Replace("'", ""));
                    cmd.Parameters.AddWithValue("@Active",1);

                    iResult = cmd.ExecuteNonQuery();

                    if (iResult >= 1)
                    {
                        Erro("Cadastro realizado com sucesso!!!");
                    }
                    else
                    {
                        Erro("Erro ao realizar o cadastro!!!");
                    }

                }
            }


            //Volta para a página
            Response.Redirect("login.aspx", false);

        }
        catch (Exception err)
        {
            Erro(err.Message);
        }
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void cmdcancelar_Click(object sender, EventArgs e)
    {
        Response.Redirect("clientes.aspx", false);
    }
}