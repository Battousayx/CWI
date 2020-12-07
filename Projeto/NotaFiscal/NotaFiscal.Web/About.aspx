<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="NotaFiscal.Web.About" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v11.2, Version=11.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v11.2, Version=11.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="jumbotron">
        <h1>Criar Nota</h1>
    </div>
    <div class="row">
        <div class="col-md-2">
            <div class="form-group">
                <label for="ddlCliente">Cliente</label>
                <dx:ASPxComboBox ID="ddlCliente" runat="server" DataSourceID="ClienteSqlDataSource" ValueField="IDCliente" TextField="Nome" ValueType="System.Int32"></dx:ASPxComboBox>
                <asp:SqlDataSource ID="ClienteSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NotaFiscal.Core.Properties.Settings.NEWDESENVConnectionString %>" SelectCommand="ClientesSelecionar" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:Parameter DefaultValue=" " Name="Pesquisa" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <label for="ddlFornecedor">Fornecedor</label>
                <dx:ASPxComboBox ID="ddlFornecedor" runat="server" DataSourceID="FornecedorSqlDataSource" TextField="Nome" ValueField="IDFornecedor"></dx:ASPxComboBox>
                <asp:SqlDataSource ID="FornecedorSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NotaFiscal.Core.Properties.Settings.NEWDESENVConnectionString %>" SelectCommand="FornecedoresSelecionar" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:Parameter DefaultValue=" " Name="Pesquisa" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <label for="ddlProduto">Produto</label>
                <dx:ASPxComboBox ID="ddlProduto" runat="server" DataSourceID="ProdutoSqlDataSource" TextField="Nome" ValueField="IDProduto"></dx:ASPxComboBox>
                <asp:SqlDataSource ID="ProdutoSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:NotaFiscal.Core.Properties.Settings.NEWDESENVConnectionString %>" SelectCommand="ProdutosSelecionar" SelectCommandType="StoredProcedure">
                    <SelectParameters>
                        <asp:Parameter DefaultValue=" " Name="Pesquisa" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <label for="txtPesquisar">Quantidade</label>
                <dx:ASPxTextBox class="form-control" ID="txtQuantidade" runat="server" placeholder="Informe um Cliente ou Fornecedor"></dx:ASPxTextBox>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <label for="txtValor">Valor</label>
                <dx:ASPxTextBox class="form-control" ID="txtValor" runat="server" placeholder="Informe um Cliente ou Fornecedor"></dx:ASPxTextBox>
            </div>
        </div>
        <div class="col-md-2">
            <div class="form-group">
                <dx:ASPxButton style="vertical-align:middle; margin-top:17px !important" ID="btnAdicionar" runat="server" Text="Adicionar" OnClick="btnAdicionar_Click"></dx:ASPxButton>
            </div>
        </div>
    </div>
    
    <div class="row">
        <div class="col-md-12">
            <dx:ASPxGridView ID="NotaFiscalProdutosGridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <dx:GridViewDataTextColumn FieldName="IDNotaFiscal" ReadOnly="True" Visible="False" VisibleIndex="0">
                        <editformsettings visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="IDNotaFiscalProduto" ReadOnly="True" Visible="False" VisibleIndex="1">
                        <editformsettings visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="IDProduto" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Nome" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Descricao" Visible="False" VisibleIndex="4">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="ValorProduto" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Quantidade" FieldName="QuantidadeProdutoNotaFiscal" VisibleIndex="6">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Valor" FieldName="ValorNotaFiscal" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
        </div>
    </div>
</asp:Content>
