<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NotaFiscal.Web._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v11.2, Version=11.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v11.2, Version=11.2.7.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Lista de Notas Fiscais</h1>
    </div>
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <label for="txtPesquisar">Pesquisar</label>
                <dx:ASPxTextBox class="form-control" ID="txtPesquisar" runat="server" placeholder="Informe um Cliente ou Fornecedor"></dx:ASPxTextBox>
                
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <dx:ASPxGridView ID="ASPxGridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%">
                <Columns>
                    <dx:GridViewCommandColumn VisibleIndex="0">
                        <ClearFilterButton Visible="True">
                        </ClearFilterButton>
                    </dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="IDNotaFiscal" ReadOnly="True" Visible="False" VisibleIndex="1">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="IDCliente" Visible="False" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Cliente" FieldName="NomeCliente" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="IDFornecedor" ReadOnly="True" Visible="False" VisibleIndex="4">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn Caption="Fornecedor" FieldName="NomeFornecedor" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataDateColumn Caption="Dt. Emissão" FieldName="DataEmissao" VisibleIndex="6">
                    </dx:GridViewDataDateColumn>
                    <dx:GridViewDataTextColumn FieldName="Desconto" VisibleIndex="7">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Juros" VisibleIndex="8">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Total" VisibleIndex="9">
                    </dx:GridViewDataTextColumn>
                </Columns>
                <Settings ShowFilterRow="True" />
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NotaFiscal.Core.Properties.Settings.NEWDESENVConnectionString %>" DeleteCommand="NotaFiscalExcluir" DeleteCommandType="StoredProcedure" SelectCommand="NotaFiscalSelecionar" SelectCommandType="StoredProcedure">
                <DeleteParameters>
                    <asp:Parameter Name="IDNotaFiscal" Type="Int32" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="txtPesquisar" DefaultValue=" " Name="Pesquisa" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </div>

</asp:Content>
