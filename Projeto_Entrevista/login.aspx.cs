using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class login : System.Web.UI.Page
{

    /// <summary>
    /// 
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /// <summary>
    /// PopMensagem
    /// </summary>
    /// <param name="stipo"></param>
    /// <param name="stitulo"></param>
    /// <param name="smensagem"></param>
    public void PopMensagem(string stipo, string stitulo, string smensagem)
    {
        Session["tipo_alerta"] = stipo;
        Session["titulo_alerta"] = stitulo;
        Session["mensagem_alerta"] = smensagem;
    }


    /// <summary>
    /// cmdlogin_Click
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void cmdlogin_Click(object sender, EventArgs e)
    {
        try
        {
            gergatlink obj = new gergatlink();
            string ssql = "";

            Session["titulo_alerta"] = "";
            Session["mensagem_alerta"] = "";
            Session["tipo_alerta"] = "";

            if (cmdlogin.Text == "Cadastrar-me")
            {
                Response.Redirect("dados_cliente.aspx", false);
                //Context.ApplicationInstance.CompleteRequest();
            }
            else
            {
                //Verifica o login
                using (SqlConnection cn = obj.abre_cn())
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {

                        ssql = @"select	IdCodCliente
                            from	gatcliente (nolock)
                            where	cpf = '" + txtCpf.Text.Replace("'", "").Trim() + "'";

                        cmd.Connection = cn;
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = ssql;

                        SqlDataReader dr = cmd.ExecuteReader();

                        if (dr.Read())
                        {
                            //variaveis de sessao
                            Session["idcodusuario"] = dr["idcodcliente"].ToString();
            

                            Response.Redirect("clientes.aspx", false);
                            Context.ApplicationInstance.CompleteRequest();
                        }
                        else
                        {
                            dr.Close();

                            cmdlogin.Text = "Cadastrar-me";
                            PopMensagem("error", "Erro", "Você não tem acesso a essa página, Favor tente realizar seu cadastro.");

                        }

                    }
                }
            }
            
        }
        catch (Exception err)
        {
            PopMensagem("error", "Erro", err.Message);
        }
    }
}