using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class clientes : System.Web.UI.Page
{
    //var
    public string _scliente = "";

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
    /// AplicaFiltro
    /// </summary>
    public void AplicaFiltro()
    {
        try
        {
            //relatorios
            Rel_Cliente(Session["idcodusuario"].ToString());

        }
        catch (Exception err)
        {
            Erro(err.Message);
        }
    }

    /// <summary>
    /// Page_Load
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (IsPostBack == false)
            {

                AplicaFiltro();

            }
        }
        catch (Exception err)
        {
            Erro(err.Message);
        }
    }

    /// <summary>
    /// cmdnovo_Click
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void cmdSair_Click(object sender, EventArgs e)
    {
        Session["idcodusuario"] = "";
        Response.Redirect("login.aspx", false);
    }

    /// <summary>
    /// Rel_Cliente
    /// </summary>
    /// <param name="scliente"></param>
    public void Rel_Cliente(string scliente)
    {
        try
        {
            gergatlink ogat = new gergatlink();
            string ssql = "";

            using (SqlConnection cn = ogat.abre_cn())
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    //monta select
                    ssql = @"select * from gatcliente (nolock) where idcodcliente = " + scliente;
                    
                    cmd.Connection = cn;
                    cmd.CommandText = ssql;
                    cmd.CommandType = CommandType.Text;

                    SqlDataReader dr = cmd.ExecuteReader();

                    gdw_dados.DataSource = dr;
                    gdw_dados.DataBind();

                    dr.Close();
                }
            }
        }
        catch (Exception err)
        {
            Erro(err.Message);
        }
    }

    /// <summary>
    /// gdw_dados_RowDataBound
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void gdw_dados_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        gergatlink obj = new gergatlink();

        try
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                Session["txt_cliente"] = "";

                foreach (TableCell cell in e.Row.Cells)
                {
                    Session["txt_cliente"] += obj.TrataHTMLASCII(cell.Text.Replace("&nbsp;", "")) + ";";
                }
                //Add new line.
                Session["txt_cliente"] += "\r\n";
            }
            else if (e.Row.RowType == DataControlRowType.DataRow)
            {
                
            }
        }
        catch (Exception err)
        {
            Erro(err.Message);
        }
    }
}