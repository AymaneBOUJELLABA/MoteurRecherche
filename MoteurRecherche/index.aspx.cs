using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MoteurRecherche
{
    public partial class index : System.Web.UI.Page
    {
        //database object
        dbDataContext db = new dbDataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack) return;
            GrdTable.DataSource = db.Mots;
            GrdTable.DataBind();
        }
        
        protected void BtnSrch_Click(object sender, EventArgs e)
        {

            String mots = InputMot.Value;
            Mots m = db.Mots.FirstOrDefault(a => a.text == mots);
            if (m != null)
            {
                lab.Text = mots;
                lab.Visible = true;

            }
            else
            {
                Mots mo = new Mots();
                mo.text = mots;
                db.Mots.InsertOnSubmit(mo);
                db.SubmitChanges();


                GrdTable.DataSource = db.Mots;
                GrdTable.DataBind();
            }
           

        }

    }
}