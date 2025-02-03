<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="studentatt.aspx.cs" Inherits="proj.studentatt" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student Attendance</title>
    <style type="text/css">
        body {
            background-image: url('./image/studentss.jpg');
            background-repeat: no-repeat;
            background-size: cover;
            max-width: 100%; 
            height: auto; 
            display: block; 
            margin: 0 auto;
        }
        .auto-style1 {
            width: 427px;
            height: 467px;
            background-color: rgba(0,0,0,0.5);
            padding-left: 20px;
            margin-left: 32%;
            margin-top: 81px;
            color: white;
            border-radius: 20px;
        }
        .auto-style4 {
            margin-left: 52px;
            text-align: center;
            margin-right: 0px;
        }
        .auto-style5 {
            margin-left: 178px;
            margin-top: 13px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="auto-style1" style="font-size: large; font-weight: bold">
                <h2 style="text-align:center; margin-bottom:-10px">&nbsp;</h2>
                <h2 style="text-align:center; margin-bottom:-10px">Student Attendance</h2>
                <br />
                <strong><br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="auto-style4" Width="314px" Height="173px">
                        <Columns>
                            
                            <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                            
                            <asp:BoundField DataField="name" HeaderText="Name" />
                            
                            <asp:TemplateField HeaderText="Attendance">
                                <ItemTemplate>
                                    <asp:RadioButton ID="Present" runat="server" ForeColor="White" Text="Present" GroupName="Attendance" />
&nbsp;
<asp:RadioButton ID="Absent" runat="server" Text="Absent" GroupName="Attendance" />

                                </ItemTemplate>
                            </asp:TemplateField>
                            
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMSConnectionString2 %>" SelectCommand="SELECT Id, name FROM tblstd"></asp:SqlDataSource>
                    <br />
                    <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Text="Save" Height="21px" OnClick="Button1_Click" BorderColor="#CCCCCC" Font-Bold="True" Font-Strikeout="False" Width="57px" />
                    <br />
                    <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                <br /><br /><br /><br /><br />
                </strong>
            </div>
        </div>
    </form>
</body>
</html>
