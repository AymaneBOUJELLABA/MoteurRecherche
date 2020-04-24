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
            if(!IsCallback)
            {
                GrdTable.Visible = false;
            }
        }
        private void Afficher()
        {
            GrdTable.Visible = true;
        }
        protected void BtnSrch_Click(object sender, EventArgs e)
        {
            //saves the searched word in session data
            Session["Mot"] = InputMot.Value;
            Afficher();

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}