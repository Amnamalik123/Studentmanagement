<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Studentform.aspx.cs" Inherits="proj.Studentform" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
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
        width: 631px;
        height: 842px;
        background-color:rgb(0,0,0,0.5);
        padding-left:28px;
        margin-left:26%;
            margin-top: 66px;
            color:white;
            border-radius:20px;
            
        }
    
        .auto-style15 {
            margin-left: 76px;
        }
        .auto-style17 {
            margin-left: 30px;
        }
        .auto-style18 {
            margin-left: 91px;
        }
            
        .auto-style19 {
            margin-left: 80px;
        }
        .auto-style20 {
            margin-left: 40px;
        }
            
        .auto-style21 {
            margin-left: 57px;
        }
        .auto-style22 {
            margin-left: 227px;
            margin-top: 15px;
        }
            
        .auto-style23 {
            margin-top: 1px;
        }
        
            
        .auto-style24 {
            margin-left: 65px;
            margin-top: 24px;
        }
        
            
        </style>
</head>
<body style="height: 951px">
    <form id="form1" runat="server">
                <div class="auto-style1" style="font-size: large; font-weight: bold">
                    <h2 style="text-align:center; margin-bottom:-10px" class="auto-style23">&nbsp;</h2>
                    <h2 style="text-align:center; margin-bottom:-10px" class="auto-style23">Manage Students</h2>
                    
                    <br />
        <br />
                    <strong>
          <asp:Label ID="Label10" runat="server" Text="Student Id"></asp:Label>
                    <input type="text" id="id" runat="server" name="name0" required class="auto-style21" /><br />
                    <br />
                    <br />
          <asp:Label ID="Label9" runat="server" Text="Student Name"></asp:Label>
                    </strong><strong><input type="text" id="name" runat="server" name="name" required class="auto-style17" /><br />
                    <br />
                    <br />
            <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
                    <select id="gender" runat="server" name="gender" required class="auto-style15">
    <option value="">Select gender</option>
    <option value="male">male</option>
    <option value="female">female</option>
    
</select>
         <br />
         <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Phone"></asp:Label>
                        <input type="text" id="phone" runat="server" name="phone" required class="auto-style19" /><br />
                    <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Department"></asp:Label>
         <select id="dep" runat="server" name="dep" required class="auto-style20">
    <option value="">Select department</option>
    <option value="SE">SE</option>
    <option value="CS">CS</option>
    <option value="IT">IT</option>
     <option value="Physics">Physics</option>
    
</select>
            <br />
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Year"></asp:Label>
           <select id="year" runat="server" name="year" required class="auto-style18">
    <option value="">Select year</option>
    <option value="2021">2021</option>
    <option value="2022">2022</option>
    <option value="2023">2023</option>
        
</select>
  </strong>
       
        <br />
        <br />
                  
                    <asp:Button ID="Button1" runat="server" Text="Add" Font-Bold="True" Width="69px" OnClick="Button1_Click" CssClass="auto-style22"   />

                    <br />

               <br />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="auto-style24" DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" Font-Overline="False" ForeColor="Black" GridLines="Vertical" >
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="gender" HeaderText="gender" SortExpression="gender" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                            <asp:BoundField DataField="department" HeaderText="department" SortExpression="department" />
                            <asp:BoundField DataField="year" HeaderText="year" SortExpression="year" />
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" >
                            
                            <ItemStyle BorderColor="Black" />
                            </asp:CommandField>
                            
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SMSConnectionString2 %>" SelectCommand="SELECT * FROM [tblstd]" UpdateCommand="update tblstd set name=@name, gender=@gender, phone=@phone, department=@department, year=@year where id=@id" DeleteCommand="delete from tblstd where id=@id"></asp:SqlDataSource>
               <br />
            
        </div>
       
    </form>
</body>
</html>