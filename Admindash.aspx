<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admindash.aspx.cs" Inherits="proj.Admindash" %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            height: 445px;
            margin-left:44%;
            padding-top:40px;
            padding-left:10px;
            margin-top: 29px;
            background-color:rgba(0,0,0, 0.5);
            border-radius:20px;
            
        }
        
        .auto-style3 {
            margin-left: 144px;
        }
                
        .auto-style6 {
            margin-left: 2px;
            text-align:center;
           width:1362px;
            margin-top: -10px;
            margin-left:-20px;
           
        }
       
        
        .auto-style7 {
            height: 40px;                   
background-color:rgba(0,0,0,0.5);
  
           
        }
        
        
        .auto-style8 {
            margin-left: 147px;
        }
        .auto-style9 {
            margin-left: 142px;
        }
        
        
        .auto-style10 {
            margin-left: 138px;
        }
        .auto-style11 {
            margin-left: 145px;
        }
        
        
        .auto-style14 {
            margin-left:10px;
            margin-top: -53px;
        }
        
        
        </style>
</head>
<body style="height: 602px; width: 1050px;background-image:url(./image/dashboard.jpg);background-size:cover;background-position:bottom;background-repeat:no-repeat;">
    <form id="form1" runat="server">
        <div class="auto-style6">
            <h1 class="auto-style7" style="font-family: 'Arial Rounded MT Bold';padding-top:10px; font-size: x-large; color: #FFFFFF;">
                FATIMA JINNAH WOMEN UNIVERSITY</h1>
        </div>
        <asp:button runat="server" ID="arrowleft" Font-Bold="True" Font-Size="Small" Text="←" CssClass="auto-style14" OnClick="arrowleft_Click" />
    <div class="auto-style1">
        <strong>
        <br/>
            <h1 style="text-align:center;font-size: large; font-weight: bolder;margin-top:-20px; font-family: 'Arial Rounded MT Bold';color: #FFFFFF;">STUDENT MANAGEMENT SYSTEM</h1>
        </strong>
        <br />
        
        <br />
          <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Font-Bold="True" Height="38px" Text="Students" Width="117px" PostBackUrl="~/Studentform.aspx" />
        <br />
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" CssClass="auto-style9" Font-Bold="True" Height="37px" Text="Courses" Width="116px" PostBackUrl="~/Courseform.aspx" />
        <br />
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" CssClass="auto-style3" Font-Bold="True" Height="35px" Text="Result" Width="117px" PostBackUrl="~/Resultform.aspx" />
        <br />
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" CssClass="auto-style11" Font-Bold="True" Height="38px" Text="Attendance" Width="120px" PostBackUrl="~/studentatt.aspx"  />
       
        <br />
        <br />       
        <br />       
        <asp:Button ID="Button6" runat="server" CssClass="auto-style8" Font-Bold="True" Height="27px" Text="Logout" Width="120px" OnClick="Button6_Click" PostBackUrl="~/Login.aspx" />
       
        <br />
       
    </div>
    </form>
</body>
</html>