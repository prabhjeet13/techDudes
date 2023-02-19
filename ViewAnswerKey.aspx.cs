using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;

public partial class ViewAnswerKey : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Download_Click(object sender, EventArgs e)
    {
        try
        {
            PdfPTable pdfTab = new PdfPTable(GridView3.HeaderRow.Cells.Count);
            float[] columnWidth = { 330, 200, 200, 330 };
            pdfTab.SetWidths(columnWidth);

            foreach (TableCell headcell in GridView3.HeaderRow.Cells)
            {
                Font font = new Font();
                font.Color = new BaseColor(GridView3.HeaderStyle.ForeColor);

                PdfPCell pcell = new PdfPCell(new Phrase(headcell.Text, font));

                pcell.FixedHeight = 30;
                pcell.BackgroundColor = new BaseColor(GridView3.HeaderStyle.BackColor);
                pdfTab.AddCell(pcell);
            }

            foreach (GridViewRow gridviewrow in GridView3.Rows)
            {
                Font font = new Font();
                font.Color = new BaseColor(GridView3.RowStyle.ForeColor);
                foreach (TableCell tabelcell in gridviewrow.Cells)
                {
                    PdfPCell pcell = new PdfPCell(new Phrase(tabelcell.Text));
                    pcell.BackgroundColor = new BaseColor(GridView3.RowStyle.BackColor);
                    pcell.FixedHeight = 40;
                    pdfTab.AddCell(pcell);
                }
            }
            pdfTab.SpacingAfter = 15f;

            PdfPTable pdfTable2 = new PdfPTable(GridView4.HeaderRow.Cells.Count);
            float[] collswidth = { 270, 330, 330, 270 };
            pdfTable2.SetWidths(collswidth);
            foreach (TableCell headerCell in GridView4.HeaderRow.Cells)
            {
                Font font = new Font();
                font.Color = new BaseColor(GridView4.HeaderStyle.ForeColor);

                PdfPCell pdfCell = new PdfPCell(new Phrase(headerCell.Text, font));

                pdfCell.FixedHeight = 30;
                pdfCell.BackgroundColor = new BaseColor(GridView4.HeaderStyle.BackColor);
                pdfTable2.AddCell(pdfCell);
            }


            foreach (GridViewRow gridViewRow in GridView4.Rows)
            {
                Font font = new Font();
                font.Color = new BaseColor(GridView4.RowStyle.ForeColor);
                foreach (TableCell tabelCell in gridViewRow.Cells)
                {
                    PdfPCell pdfCell = new PdfPCell(new Phrase(tabelCell.Text));
                    pdfCell.FixedHeight = 40;
                    pdfCell.BackgroundColor = new BaseColor(GridView4.RowStyle.BackColor);
                    pdfTable2.AddCell(pdfCell);
                }

            }
            pdfTable2.SpacingAfter = 30f;

            PdfPTable pdfTable1 = new PdfPTable(GridView2.HeaderRow.Cells.Count);
            float[] colswidth = { 100, 1000 };
            pdfTable1.SetWidths(colswidth);
            foreach (TableCell headerCell in GridView2.HeaderRow.Cells)
            {
                Font font = new Font();
                font.Color = new BaseColor(GridView2.HeaderStyle.ForeColor);

                PdfPCell pdfCell = new PdfPCell(new Phrase(headerCell.Text, font));

                pdfCell.FixedHeight = 30;
                pdfCell.BackgroundColor = new BaseColor(GridView2.HeaderStyle.BackColor);
                pdfTable1.AddCell(pdfCell);
            }


            foreach (GridViewRow gridViewRow in GridView2.Rows)
            {
                Font font = new Font();
                font.Color = new BaseColor(GridView2.RowStyle.ForeColor);
                foreach (TableCell tabelCell in gridViewRow.Cells)
                {
                    PdfPCell pdfCell = new PdfPCell(new Phrase(tabelCell.Text));
                    pdfCell.FixedHeight = 230;
                    pdfCell.BackgroundColor = new BaseColor(GridView2.RowStyle.BackColor);
                    pdfTable1.AddCell(pdfCell);
                }

            }

            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);

            pdfDoc.Open();
            Paragraph p = new Paragraph("ANSWER KEY", new Font(Font.FontFamily.HELVETICA, 14));
            p.Alignment = Element.ALIGN_LEFT;
            pdfDoc.Add(p);
            pdfDoc.Add(new Paragraph("\r\n"));
            pdfDoc.Add(pdfTab);
            pdfDoc.Add(pdfTable2);
            pdfDoc.Add(pdfTable1);
            pdfDoc.Close();
            Response.ContentType = "application/pdf";
            Response.AppendHeader("Content-disposition", "attachment;filename=AnswerKey.pdf");
            Response.Write(pdfDoc);
            Response.Flush();
            Response.End();
        }  
        catch(Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Enter The Correct Details!";
        }
    }

    protected void exportToword_Click(object sender, EventArgs e)
    {
       try
          { 
        Response.Clear();
        Response.Buffer = true;
        Response.AddHeader("content-disposition", "attachment;filename=AnswerKey.doc");
        Response.Charset = "";
        Response.ContentType = "application/vmd.ms-word";

        using (StringWriter sw = new StringWriter())
        {
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            GridView3.AllowPaging = false;
            GridView3.Visible = true;
            GridView3.DataBind();
            GridView3.HeaderRow.BackColor = System.Drawing.Color.White;
            foreach (TableCell cell in GridView3.HeaderRow.Cells)
            {

                cell.BackColor = GridView3.HeaderStyle.BackColor;
            }
            foreach (GridViewRow row in GridView3.Rows)
            {
                row.BackColor = System.Drawing.Color.White;
                foreach (TableCell cell in row.Cells)
                {
                    cell.BackColor = GridView3.BackColor;
                }
            }

            GridView4.AllowPaging = false;
            GridView4.Visible = true;
            GridView4.DataBind();
            GridView4.HeaderRow.BackColor = System.Drawing.Color.White;
            foreach (TableCell cell in GridView4.HeaderRow.Cells)
            {

                cell.BackColor = GridView4.HeaderStyle.BackColor;
            }
            foreach (GridViewRow row in GridView4.Rows)
            {
                row.BackColor = System.Drawing.Color.White;
                foreach (TableCell cell in row.Cells)
                {
                    cell.BackColor = GridView4.BackColor;
                }
            }

            GridView2.AllowPaging = false;
            GridView2.Visible = true;
            GridView2.DataBind();
            GridView2.HeaderRow.BackColor = System.Drawing.Color.White;
            foreach (TableCell cell in GridView2.HeaderRow.Cells)
            {

                cell.BackColor = GridView2.HeaderStyle.BackColor;
            }
            foreach (GridViewRow row in GridView2.Rows)
            {
                row.BackColor = System.Drawing.Color.White;
                foreach (TableCell cell in row.Cells)
                {
                    cell.BackColor = GridView2.BackColor;
                }
            }

            GridView3.RenderControl(hw);
            GridView4.RenderControl(hw);
            GridView2.RenderControl(hw);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
        }
       }
        catch (Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Enter The Correct Details!";
        }
    }
    public override void VerifyRenderingInServerForm(Control control)
    {

    }
}
