<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>
<!-- saved from url=(0047)http://steelcoders.com/modern/admin1/login.html -->
<html style="" class=" js flexbox canvas canvastext webgl no-touch geolocation postmessage websqldatabase indexeddb hashchange history draganddrop websockets rgba hsla multiplebgs backgroundsize borderimage borderradius boxshadow textshadow opacity cssanimations csscolumns cssgradients cssreflections csstransforms csstransforms3d csstransitions fontface generatedcontent video audio localstorage sessionstorage webworkers applicationcache svg inlinesvg smil svgclippaths">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <!-- Title -->
    <title>Training Banking</title>

    <meta content="width=device-width, initial-scale=1" name="viewport">


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

    <!-- Theme Styles -->
    <link href="files/modern.min.css" rel="stylesheet" type="text/css" />
    <link href="files/green.css" class="theme-color" rel="stylesheet" type="text/css" />
    <link href="files/custom.css" rel="stylesheet" type="text/css" />

    <script src="files/modernizr.js"></script>
    <script src="files/snap.svg-min.js"></script>


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>
<body class="page-login  pace-done">
    <form id="frmlogin" runat="server">
        <div class="pace  pace-inactive">
            <div class="pace-progress" data-progress-text="100%" data-progress="99" style="transform: translate3d(100%, 0px, 0px);">
                <div class="pace-progress-inner"></div>
            </div>
            <div class="pace-activity"></div>
        </div>
        <main class="page-content">
            <div class="page-inner" style="min-height: 613px !important">
                <div id="main-wrapper">
                    <div class="row">
                        <div class="col-md-3 center">
                            
                            <div class="login-box">

                                <div class="row">
                                    <div class="text-center">
                                        
                                    </div>
                                </div>

                                <div class="row">&nbsp;</div>
                                <div class="row">&nbsp;</div>
                                <div class="row">&nbsp;</div>
                                <div class="row">&nbsp;</div>
                                <div class="row">&nbsp;</div>
                                <div class="row">&nbsp;</div>
                                <div class="row">&nbsp;</div>
                            </div>

                            <div class="form-group">
                                <div class="row">
                                    <div class="text-left">
                                        <h5>
                                            <img src="Imagens/lupa.png" alt="">
                                            Acesse sua Conta:</h5>
                                            <asp:TextBox ID="txtCpf" onKeyPress="javascript:return aceitaApenasNumeros(event);" required="" MaxLength="11" class="form-control" placeholder="Digite seu CPF..." runat="server"></asp:TextBox>
                                        <div class="row">&nbsp;

                                        </div>
                                        
                                        <asp:Button ID="cmdlogin" CssClass="btn btn-success btn-block" runat="server" Text="Acessar" OnClick="cmdlogin_Click"></asp:Button>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <p class="text-center m-t-xs text-sm">Training Banking</p>
                    </div>
                </div>
            </div>
            
        </main>
        <!-- Page Content -->
    </form>

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
    <script src="files/jquery.counterup.min.js"></script>
    <script src="files/toastr.min.js"></script>
    <script src="files/jquery.flot.min.js"></script>
    <script src="files/jquery.flot.time.min.js"></script>
    <script src="files/jquery.flot.symbol.min.js"></script>
    <script src="files/jquery.flot.resize.min.js"></script>
    <script src="files/jquery.flot.tooltip.min.js"></script>
    <script src="files/curvedLines.js"></script>
    <script src="files/MetroJs.min.js"></script>
    <script src="files/modern.js"></script>
    <script src="files/dashboard.js"></script>


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
    </script>



</body>

</html>

