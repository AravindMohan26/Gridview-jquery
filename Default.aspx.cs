using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[3] { new DataColumn("Id", typeof(int)),
                        new DataColumn("Name", typeof(string)),
                        new DataColumn("Description",typeof(string)) });
            dt.Rows.Add(1, "Venkat", "Works as a Manager in Chennai.");
            dt.Rows.Add(2, "Veera", "ASP.Net programmer and consultant in Banglore.");
            dt.Rows.Add(3, "Dinesh Kumar", "Content Writer in Banglore.");
            dt.Rows.Add(4, "Robert", "Wild life photographer in South Africa.");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
    }
}