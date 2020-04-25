<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MoteurRecherche.index" %>
<!-- moteur de recherche version 1.0-->
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Moteur de Recherche</title>
    <link rel="stylesheet" type="text/css" href="~/Styles/style.css" runat="server"/>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="content">
                    <h1>Moteur De Recherche</h1>
                    <div class="hvr-underline-from-center">
                        <img src="~/Styles/srch2.png" alt="No image found!" runat="server"/>
                        <input id="InputMot" placeholder="Veuillez saisir un mot...." type="text" runat="server"/>
                    </div>
                    <div id="btn_srch" class="hvr-underline-from-center">
                     <asp:Button ID="BtnSrch" runat="server" OnClick="BtnSrch_Click" Text="Go!" Width="128px"  />
                    </div>
                </div>
                <div class="Gridtable">
                        <asp:GridView ID="GrdTable" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                            <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                            <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                            <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                            <RowStyle BackColor="White" ForeColor="#003399" />
                            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                            <SortedAscendingCellStyle BackColor="#EDF6F6" />
                            <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                            <SortedDescendingCellStyle BackColor="#D6DFDF" />
                            <SortedDescendingHeaderStyle BackColor="#002876" />
                        </asp:GridView>
                        <asp:Label ID="lab" runat="server" Text="Label"></asp:Label>
                </div>
            </ContentTemplate>
       </asp:UpdatePanel>
    </form>
</body>
</html>
