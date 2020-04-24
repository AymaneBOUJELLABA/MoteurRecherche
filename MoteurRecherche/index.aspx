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
                        <asp:GridView ID="GrdTable" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="IdMot" DataSourceID="SqlDataSource1" CssClass="auto-style1">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="IdMot" HeaderText="IdMot" InsertVisible="False" ReadOnly="True" SortExpression="IdMot" />
                                <asp:BoundField DataField="Text" HeaderText="Text" SortExpression="Text" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:RechercheDatabaseConnectionString %>" SelectCommand="SELECT * FROM [Mot] WHERE ([Text] = @Text)" OnSelecting="SqlDataSource1_Selecting">
                            <SelectParameters>
                                <asp:SessionParameter Name="Text" SessionField="Mot" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                </div>
            </ContentTemplate>
       </asp:UpdatePanel>
    </form>
</body>
</html>
