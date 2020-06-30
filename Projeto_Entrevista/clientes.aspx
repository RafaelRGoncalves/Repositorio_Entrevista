<%@ Page Title="Clientes | STT - GAT Link" Language="C#" AutoEventWireup="true" CodeFile="clientes.aspx.cs" Inherits="clientes" %>

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

    <!-- TITULO DA PAGINA -->
    <div class="page-title">
        <h3>
            <img src="imagens/monitorar.png" />
            &nbsp;
            Dados do Cliente</h3>
    </div>

    <div class="row">&nbsp;</div>

    <!-- corpo -->
    <div class="col-lg-12">

        <form runat="server">

            <!-- TITULO DA PAGINA -->
            <div class="page-title">
                <h3>Clientes </h3>
                <div class="page-breadcrumb">
                    <ol class="breadcrumb">
                        <li><a href="dashboard.aspx">Home</a></li>
                        <li class="active">Clientes</li>
                    </ol>
                </div>
            </div>

            <!-- ESPACO -->
            <div class="row">
                &nbsp;
            </div>

            <!-- CORPO -->
            <div id="col-lg-12">

                <!-- BOTOES DE ACAO -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-right">
                            <asp:Button ID="cmdSair" runat="server" CssClass="btn btn-warning" Text="Sair" OnClick="cmdSair_Click" />


                        </div>
                    </div>
                </div>

            </div>
            <!-- ESPACO -->
            <div class="row">
                &nbsp;
            </div>

            <!-- Tabela -->
            <div class="row">
                <div class="col-lg-12">

                    <div class="panel panel-default">

                        <div class="panel-body">
                            <asp:Label ID="lbltotal" runat="server" Text=""></asp:Label>
                            <br />
                            <br />
                            <!-- grid -->
                            <asp:Panel ID="panel_dados" Width="100%" ScrollBars="Auto" runat="server">

                                <!-- grid -->
                                <asp:GridView ID="gdw_dados" CssClass="table table-hover table-striped"
                                    runat="server" CellPadding="2" CellSpacing="2" ForeColor="#333333"
                                    GridLines="None" ShowFooter="True" ShowHeaderWhenEmpty="True" AllowPaging="false"
                                    HorizontalAlign="Left" Font-Names="Calibri"
                                    Width="100%" AutoGenerateColumns="False"
                                    PageSize="25" OnRowDataBound="gdw_dados_RowDataBound">

                                    <PagerSettings Position="TopAndBottom" PageButtonCount="25" Mode="NextPreviousFirstLast "
                                        PreviousPageText="<img src='imagens/anterior.png' border='0' title='Página Anterior'/>"
                                        NextPageText="<img src='imagens/proximo.png' border='0' title='Próxima Página'/>"
                                        FirstPageText="<img src='imagens/primeiro.png' border='0' title='Primeira Página'/>"
                                        LastPageText="<img src='imagens/ultimo.png' border='0' title='Última Página'/>" />

                                    <Columns>
                                        <asp:TemplateField ItemStyle-Width="20px">
                                            <ItemTemplate>
                                                <asp:Image runat="server" ID="img" ImageUrl="imagens/os.png" />
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                        <asp:BoundField DataField="IDCODCLIENTE" HeaderText="ID" ItemStyle-HorizontalAlign="Left" />
                                        <asp:BoundField DataField="NomeCliente" HeaderText="Cliente" ItemStyle-HorizontalAlign="Left" />
                                        <asp:BoundField DataField="CPF" HeaderText="CPF" ItemStyle-HorizontalAlign="Left" />
                                        <asp:BoundField DataField="Email" HeaderText="Email" ItemStyle-HorizontalAlign="Left" />
                                        <asp:BoundField DataField="Telefone" HeaderText="Telefone" ItemStyle-HorizontalAlign="Left" />
                                        <asp:BoundField DataField="Endereco" HeaderText="Endereco" ItemStyle-HorizontalAlign="Left" />

                                    </Columns>

                                </asp:GridView>

                            </asp:Panel>
                        </div>
                    </div>

                </div>
            </div>



        </form>
    </div>
</body>
