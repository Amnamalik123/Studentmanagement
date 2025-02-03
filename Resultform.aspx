<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Resultform.aspx.cs" Inherits="proj.Resultform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <style>
        body{
    background-image:url('./image/studentss.jpg');
    background-repeat:no-repeat;
    background-size:cover;
    max-width: 100%; 
    height: auto; 
    display: block; 
    margin: 0 auto;
}
            .auto-style1 {
                height: 319px;
                margin-left: 444px;
                margin-right: 204px;
                margin-top: 155px;
                width: 504px;
                  background-color:rgba(0,0,0,0.5);
                  border-radius:20px;
                 color:white;
            }
            .auto-style2 {
                margin-left: 75px;
                margin-top: 25px;
            }
            </style>
</head>
    
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <br />
            <h3 style= "margin-left:150px;">STUDENTS RESULT</h3>
            <p style= "margin-left:40px;">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" Width="345px" CssClass="auto-style2" Height="180px">
    <Columns>
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
        <asp:BoundField DataField="Grade" HeaderText="Grade" SortExpression="Grade" />
    </Columns>
</asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:SMSConnectionString2 %>" SelectCommand="SELECT * FROM [tblresult]"></asp:SqlDataSource>
            </p>
            <p style= "margin-left:40px;">&nbsp;</p></div>
    </form>
</body>
</html>
