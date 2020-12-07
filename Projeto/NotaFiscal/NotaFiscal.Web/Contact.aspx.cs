using Stimulsoft.Report.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NotaFiscal.Web
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Reports.RptTotalDeVendasPorProduto rpt = new Reports.RptTotalDeVendasPorProduto();
            rpt.Render();
            StiReportResponse.ResponseAsPdf(this, rpt);
        }
    }
}