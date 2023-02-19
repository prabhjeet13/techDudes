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
using System.Text;
using System.Configuration;
using iTextSharp.text.html.simpleparser;

public partial class ViewQuestionPaper : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }



    protected void Download_Click(object sender, EventArgs e)
    {
        try
        {
        PdfPTable pdfTable = new PdfPTable(quesdetailsgridview.HeaderRow.Cells.Count);
        float[] colswid = { 450, 150,270, 260, 280,250};
        pdfTable.SetWidths(colswid);
        foreach (TableCell headerCell in quesdetailsgridview.HeaderRow.Cells)
        {
            Font font = new Font();
            font.Color = new BaseColor(quesdetailsgridview.HeaderStyle.ForeColor);

            PdfPCell pdfCell = new PdfPCell(new Phrase(headerCell.Text, font));

            pdfCell.FixedHeight = 30;
            pdfCell.BackgroundColor = new BaseColor(quesdetailsgridview.HeaderStyle.BackColor);
            pdfTable.AddCell(pdfCell);
        }


        foreach (GridViewRow gridViewRow in quesdetailsgridview.Rows)
        {
            Font font = new Font();
            font.Color = new BaseColor(quesdetailsgridview.RowStyle.ForeColor);
            foreach (TableCell tabelCell in gridViewRow.Cells)
            {
                PdfPCell pdfCell = new PdfPCell(new Phrase(tabelCell.Text));
                pdfCell.FixedHeight = 40;
                pdfCell.BackgroundColor = new BaseColor(quesdetailsgridview.RowStyle.BackColor);
                pdfTable.AddCell(pdfCell);
            }

        }
        pdfTable.SpacingAfter = 15f;

        PdfPTable pdfTable2 = new PdfPTable(GridView2.HeaderRow.Cells.Count);
        float[] collswid = { 270,330,330,270};
        pdfTable2.SetWidths(collswid);
        foreach (TableCell headerCell in GridView2.HeaderRow.Cells)
        {
            Font font = new Font();
            font.Color = new BaseColor(GridView2.HeaderStyle.ForeColor);

            PdfPCell pdfCell = new PdfPCell(new Phrase(headerCell.Text, font));

            pdfCell.FixedHeight = 30;
            pdfCell.BackgroundColor = new BaseColor(GridView2.HeaderStyle.BackColor);
            pdfTable2.AddCell(pdfCell);
        }


        foreach (GridViewRow gridViewRow in GridView2.Rows)
        {
            Font font = new Font();
            font.Color = new BaseColor(GridView2.RowStyle.ForeColor);
            foreach (TableCell tabelCell in gridViewRow.Cells)
            {
                PdfPCell pdfCell = new PdfPCell(new Phrase(tabelCell.Text));
                pdfCell.FixedHeight = 40;
                pdfCell.BackgroundColor = new BaseColor(GridView2.RowStyle.BackColor);
                pdfTable2.AddCell(pdfCell);
            }

        }
        pdfTable2.SpacingAfter = 30f;

        PdfPTable pdfTable1 = new PdfPTable(GridView1.HeaderRow.Cells.Count);
        float[] colswidth = { 80, 1000, 100 };
        pdfTable1.SetWidths(colswidth);
        foreach (TableCell headerCell in GridView1.HeaderRow.Cells)
        {
            Font font = new Font();
            font.Color = new BaseColor(GridView1.HeaderStyle.ForeColor);

            PdfPCell pdfCell = new PdfPCell(new Phrase(headerCell.Text, font));

            pdfCell.FixedHeight = 30;
            pdfCell.BackgroundColor = new BaseColor(GridView1.HeaderStyle.BackColor);
            pdfTable1.AddCell(pdfCell);
        }


        foreach (GridViewRow gridViewRow in GridView1.Rows)
        {
            Font font = new Font();
            font.Color = new BaseColor(GridView1.RowStyle.ForeColor);
            foreach (TableCell tabelCell in gridViewRow.Cells)
            {
                PdfPCell pdfCell = new PdfPCell(new Phrase(tabelCell.Text));
                pdfCell.FixedHeight = 230;
                pdfCell.BackgroundColor = new BaseColor(GridView1.RowStyle.BackColor);
                pdfTable1.AddCell(pdfCell);
            }

        }

        Document pdfDocument = new Document(PageSize.A4, 10f, 10f, 10f, 10f);
        PdfWriter.GetInstance(pdfDocument, Response.OutputStream);

        pdfDocument.Open();
        Paragraph para = new Paragraph("Your Roll No: ____________________", new Font(Font.FontFamily.HELVETICA, 14));
        para.Alignment = Element.ALIGN_LEFT;
        pdfDocument.Add(para);
        pdfDocument.Add(new Paragraph("\r\n"));
        pdfDocument.Add(pdfTable);
        pdfDocument.Add(pdfTable2);
        pdfDocument.Add(pdfTable1);

        pdfDocument.Close();
        Response.ContentType = "application/pdf";
        Response.AppendHeader("content-disposition", "attachment;filename= QuestionPaper.pdf");
        Response.Write(pdfDocument);
        Response.Flush();
        Response.End();

        }
        catch (Exception)
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
        Response.AddHeader("content-disposition", "attachment;filename=QuestionPaper.doc");
        Response.Charset = "";
        Response.ContentType = "application/vmd.ms-word";

        using (StringWriter sw = new StringWriter())
        {
            HtmlTextWriter hw = new HtmlTextWriter(sw);
            quesdetailsgridview.AllowPaging = false;
            quesdetailsgridview.Visible = true;
            quesdetailsgridview.DataBind();
            quesdetailsgridview.HeaderRow.BackColor = System.Drawing.Color.White;
            foreach (TableCell cell in quesdetailsgridview.HeaderRow.Cells)
            {

                cell.BackColor = quesdetailsgridview.HeaderStyle.BackColor;
            }
            foreach (GridViewRow row in quesdetailsgridview.Rows)
            {
                row.BackColor = System.Drawing.Color.White;
                foreach (TableCell cell in row.Cells)
                {
                    cell.BackColor = quesdetailsgridview.BackColor;
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

            GridView1.AllowPaging = false;
            GridView1.Visible = true;
            GridView1.DataBind();
            GridView1.HeaderRow.BackColor = System.Drawing.Color.White;
            foreach (TableCell cell in GridView1.HeaderRow.Cells)
            {

                cell.BackColor = GridView1.HeaderStyle.BackColor;
            }
            foreach (GridViewRow row in GridView2.Rows)
            {
                row.BackColor = System.Drawing.Color.White;
                foreach (TableCell cell in row.Cells)
                {
                    cell.BackColor = GridView1.BackColor;
                }
            }

            quesdetailsgridview.RenderControl(hw);
            GridView2.RenderControl(hw);
            GridView1.RenderControl(hw);
            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
        }
    }
          catch(Exception)
        {
            Label1.ForeColor = System.Drawing.Color.Red;
            Label1.Text = "Enter The Correct Details!";
        }

    }
    public override void VerifyRenderingInServerForm(Control control)
    {

    }

}