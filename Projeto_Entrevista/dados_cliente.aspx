<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dados_cliente.aspx.cs" Inherits="dados_cliente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Dados Cliente | STT GAT Link</title>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta content="width=device-width, initial-scale=1" name="viewport" />

    <meta name="description" content="STT GAT Link" />
    <meta name="keywords" content="admin,dashboard,stt" />
    <meta name="author" content="sergiolourenco" />

    <link rel="shortcut icon" type="image/png" href="favicon.png" />

    <!-- Styles -->
    <!-- <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600' rel='stylesheet' type='text/css' /> -->
    <link href="files/css" rel="stylesheet" type="text/css" />
    <link href="files/pace-theme-flash.css" rel="stylesheet" />
    <link href="files/uniform.default.min.css" rel="stylesheet" />
    <link href="files/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="./weather-icons-master/css/weather-icons.min.css" rel="stylesheet" type="text/css" />
    <link href="./simple-line-icons-master/css/simple-line-icons.css" rel="stylesheet" type="text/css" />
    <link href="files/font-awesome.css" rel="stylesheet" type="text/css" />
    <link href="files/menu_cornerbox.css" rel="stylesheet" type="text/css" />
    <link href="files/waves.min.css" rel="stylesheet" type="text/css" />
    <link href="files/switchery.min.css" rel="stylesheet" type="text/css" />
    <link href="files/style.css" rel="stylesheet" type="text/css" />
    <link href="files/component.css" rel="stylesheet" type="text/css" />
    <link href="files/MetroJs.min.css" rel="stylesheet" type="text/css" />
    <link href="files/toastr.min.css" rel="stylesheet" type="text/css" />
    <link href="files/select2.min.css" rel="stylesheet" type="text/css" />
    <link href="files/summernote.css" rel="stylesheet" type="text/css">
    <link href="files/datepicker3.css" rel="stylesheet" type="text/css">
    <link href="files/colorpicker.css" rel="stylesheet" type="text/css">
    <link href="files/bootstrap-tagsinput.css" rel="stylesheet" type="text/css">
    <link href="files/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css">

    <!-- Theme Styles -->
    <link href="files/modern.min.css" rel="stylesheet" type="text/css" />
    <link href="files/green.css" class="theme-color" rel="stylesheet" type="text/css" />
    <link href="files/custom.css" rel="stylesheet" type="text/css" />

    <script src="files/modernizr.js"></script>
    <script src="files/snap.svg-min.js"></script>
    <script type="text/javascript" src="js/canvasjs.min.js"></script>

    

</head>

<body>


    <!-- TITULO DA PAGINA -->
    <div class="page-title">
        <h3>
            <img src="imagens/home2.png" />
            &nbsp;
            Dados do Cliente</h3>
    </div>

    <div class="row">&nbsp;</div>

    <!-- corpo -->
    <div class="col-lg-12">

        <div class="panel panel-default">

            <div class="panel-body">

                <form id="frmdetalhes" runat="server">
                    <asp:HiddenField ID="idregistro" runat="server" />

                    <%--NOME DO CLIENTE--%>
                    <div class="form-group">
                        <label>Nome: *</label>
                        <asp:TextBox CssClass="form-control" ID="txtNome" MaxLength="255" onKeyPress="javascript:return bloqueiaNumero(event);" runat="server"></asp:TextBox>
                    </div>                   
                    
                    <%--CPF DO CLIENTE--%>
                    <div class="form-group">
                        <label>CPF: *</label>
                        <asp:TextBox CssClass="form-control" ID="txtCpf" onKeyPress="javascript:return aceitaApenasNumeros(event);" MaxLength="11" runat="server"></asp:TextBox>
                    </div>  

                    <%--EMAIL DO CLIENTE--%>
                    <div class="form-group">
                        <label>E-mail: *</label>
                        <asp:TextBox CssClass="form-control" ID="txtEmail" MaxLength="100" runat="server"></asp:TextBox>
                    </div>  

                    <%--TELEFONE DO CLIENTE--%>
                    <div class="form-group">
                        <label>Telefone: *</label>
                        <asp:TextBox CssClass="form-control" MaxLength="11" ID="txtTelefone" runat="server"></asp:TextBox>
                    </div>  

                    <%--ENDEREÇO DO CLIENTE--%>
                    <div class="form-group">
                        <label>Endereço: *</label>
                        <asp:TextBox CssClass="form-control" ID="txtEndereco" MaxLength="255" runat="server"></asp:TextBox>
                    </div>  


                    <!-- Botoes -->
                    <div class="col-lg-12 text-right">

                        <asp:Button ID="cmdsalvar" runat="server" CssClass="btn btn-warning" Text="Salvar" OnClick="cmdsalvar_Click" />
                        <asp:Button ID="cmdcancelar" runat="server" CssClass="btn btn-warning" Text="Cancelar" OnClick="cmdcancelar_Click"/>

                    </div>


                </form>
            </div>
        </div>
    </div>

    <div class="cd-overlay"></div>

    <!-- Javascripts -->
    <script src="files/jquery-2.1.4.min.js"></script>
    <script src="files/jquery-ui.min.js"></script>
    <script src="files/pace.min.js"></script>
    <script src="files/jquery.blockui.js"></script>
    <script src="files/bootstrap.min.js"></script>
    <script src="files/jquery.slimscroll.min.js"></script>
    <script src="files/switchery.min.js"></script>
    <script src="files/jquery.uniform.min.js"></script>
    <script src="files/classie.js"></script>
    <script src="files/main.js"></script>
    <script src="files/waves.min.js"></script>
    <script src="files/main2.js"></script>

    <script src="files/jquery.waypoints.min.js"></script>
    <script src="files/jquery.counterup.js"></script>
    <script src="files/toastr.min.js"></script>
    <script src="files/jquery.flot.min.js"></script>
    <script src="files/jquery.flot.time.min.js"></script>
    <script src="files/jquery.flot.symbol.min.js"></script>
    <script src="files/jquery.flot.resize.min.js"></script>
    <script src="files/jquery.flot.tooltip.min.js"></script>
    <script src="files/curvedLines.js"></script>
    <script src="files/MetroJs.min.js"></script>
    <script src="files/select2.min.js"></script>

    <script src="files/summernote.min.js"></script>
    <script src="files/bootstrap-datepicker.js"></script>
    <script src="files/bootstrap-colorpicker.js"></script>
    <script src="files/bootstrap-tagsinput.min.js"></script>
    <script src="files/bootstrap-timepicker.min.js"></script>

    <script src="files/modern.js"></script>
    <script src="files/form-elements.js"></script>

    <script src="files/form-select2.js"></script>
    <script src="files/dashboard.js"></script>

    <div id="flotTip" style="display: none; position: absolute;"></div>



    <!-- mensagem de alerta -->
    <script>

        //mensagem de erro
            <% if (Session["titulo_alerta"] != "")
        {%>
        toastr.options = {
            "closeButton": true,
            "debug": false,
            "newestOnTop": false,
            "progressBar": true,
            "positionClass": "toast-top-right",
            "preventDuplicates": false,
            "onclick": null,
            "showDuration": "300",
            "hideDuration": "1000",
            "timeOut": "5000",
            "extendedTimeOut": "1000",
            "showEasing": "swing",
            "hideEasing": "linear",
            "showMethod": "fadeIn",
            "hideMethod": "fadeOut"
        };

        toastr["<%=Session["tipo_alerta"]%>"]("<%=Session["mensagem_alerta"]%>", "<%=Session["titulo_alerta"]%>");

        <%
            //zera os valores
            Session["titulo_alerta"] = "";
            Session["mensagem_alerta"] = "";
            Session["tipo_alerta"] = "";

        }
              %>
    </script>


    <script language="javascript">

        function formatahora(hora) {

            if (hora.value.length == 2) {
                hora.value = hora.value + ':';
            }

            if (hora.value.length == 5) {
                Verifica_Hora(hora);
            }

            return true;
        }

        function Verifica_Hora(hora) {
            hrs = (hora.value.substring(0, 2));
            min = (hora.value.substring(3, 5));

            estado = "";
            if ((hrs < 00) || (hrs > 23) || (min < 00) || (min > 59)) {
                estado = "errada";
            }

            if (hora.value == "") {
                estado = "errada";
            }

            if (estado == "errada") {
                alert("Hora invalida!");
                hora.focus();
            }
        }

        //aceitaApenasNumeros
        function aceitaApenasNumeros(e) {
            var tecla = new String();

            if (window.event) {
                tecla = e.keyCode;
            }
            else if (e.which) {
                tecla = e.which;
            }
            else {
                return true;
            }

            if (tecla > 47 && tecla < 58) {
                return true;
            }
            else {
                return false;
            }

        }

        //bloqueiaNumero
        function bloqueiaNumero(e) {
            var tecla = new String();

            if (window.event) {
                tecla = e.keyCode;
            }
            else if (e.which) {
                tecla = e.which;
            }
            else {
                return true;
            }

            if ((tecla > 64 && tecla < 91) || (tecla > 96 && tecla < 123)) {
                return true;
            }
            else {
                return false;
            }

        }


    </script>
</body>
</html>
