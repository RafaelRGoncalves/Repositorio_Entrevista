<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {

    }
    
    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        
        // Code that runs when a new session is started
        Session["titulo_alerta"] = "";
        Session["mensagem_alerta"] = "";
        Session["tipo_alerta"] = "";
        Session["ContarLinha"] = "0";
        Session["idMulta"] = "0";
        Session["InativaBotao"] = "0";
        Session["IdPermissao"] = 0;
        Session["idcodusuario"] = "";
        Session["nomeusuario"] = "";
        Session["idcodperfil"] = "";
        Session["hostname"] = "";

        Session["txt"] = "";
        Session["txt_back"] = "";
        Session["txt_hora"] = "";
        Session["txt_rank1"] = "";
        Session["txt_rank2"] = "";
        Session["txt_rank3"] = "";
        Session["txt_rank4"] = "";
        Session["txt_fin1"] = "";
        Session["txt_fin2"] = "";
        Session["txt_disc1"] = "";
        Session["txt_disc2"] = "";
        Session["txt_disc3"] = "";
        Session["verificaTela"] = "";
        Session["carroPesquisa"] = "";
        Session["IdIndicacao"] = "";
        
        Session["ds"] = null;
    }

    void Session_End(object sender, EventArgs e)
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>

