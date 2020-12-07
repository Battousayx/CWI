using NotaFiscal.Core.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NotaFiscal.Web
{
    public partial class About : Page
    {
        public NotaFiscalDataSet.NotaFiscalProdutoDataTable NotaFiscalProdutoDT
        {
            get
            {
                if (ViewState["NotaFiscalProdutoDT"] == null)
                    return new NotaFiscalDataSet.NotaFiscalProdutoDataTable();
                else
                    return (NotaFiscalDataSet.NotaFiscalProdutoDataTable)ViewState["NotaFiscalProdutoDT"];
            }
            set
            {
                ViewState["NotaFiscalProdutoDT"] = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                NotaFiscalProdutoDT = new NotaFiscalDataSet.NotaFiscalProdutoDataTable();
        }

        protected void btnAdicionar_Click(object sender, EventArgs e)
        {
            
            var row = NotaFiscalProdutoDT.NewNotaFiscalProdutoRow();
            row.IDProduto = Convert.ToInt32(ddlProduto.SelectedItem.Value);
            row.ValorNotaFiscal = Convert.ToInt32(txtValor.Text);
            row.QuantidadeProdutoNotaFiscal = Convert.ToInt16(txtQuantidade.Text);
            row.Nome = ddlProduto.SelectedItem.Text;
            row.Descricao = "";
            row.IDNotaFiscal = -1;
            row.IDNotaFiscalProduto = -1;
            row.ValorProduto = Convert.ToInt32(txtValor.Text);
            NotaFiscalProdutoDT.AddNotaFiscalProdutoRow(row);

            NotaFiscalProdutosGridView1.DataSource = NotaFiscalProdutoDT;
            NotaFiscalProdutosGridView1.DataBind();
        }
    }
}