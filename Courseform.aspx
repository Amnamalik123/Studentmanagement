<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Courseform.aspx.cs" Inherits="proj.Courseform" %>
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
            height: 330px;
            margin-left: -17px;
            background-color:rgb(0,0,0,0.5);
            width: 456px;
            margin-top:114px;
            padding-left:12%;
             border-radius:20px;
             color:white;
        }
        .auto-style5 {
            margin-left: 176px;
        }
        .auto-style8 {
            margin-left: 64px;
        }
        .auto-style9 {
            margin-left: 48px;
        }
        .auto-style10 {
            margin-left: 78px;
        }
    </style>
</head>
<body style="width: 612px; height: 382px; margin-left: 480px;">
    <form id="form1" runat="server">
        <div class="auto-style1" style="font-size: large">
            <br />
            <h3 style="padding-left:24%; margin-bottom:-12px">COURSES FORM</h3>
            
            <br />

            <br />
            <strong>Course title
            <input type="text" id="title" runat="server" name="title" required class="auto-style9" /></strong> <strong>
<br />
            <br />
    
            <asp:Label ID="Label3" runat="server" Text="Credit Hour" Font-Size="Medium"></asp:Label>

           <select id="credit" runat="server" name="hours" required class="auto-style8">
       <option value="">Select credithours</option>
       <option value="1 hour">1 hour</option>
       <option value="2 hours">2 hours</option>
       <option value="3 hours">3 hours</option>
       
   </select></strong> <strong>
            <br />
            <br />
    
            <asp:Label ID="Label4" runat="server" Text="Semester"></asp:Label>

            <select id="semester" runat="server" name="semester" required class="auto-style10">
                   <option value="">Select Semester</option>
                   <option value="1st sem">1st Semester</option>
                   <option value="2nd sem">2nd Semester</option>
                   <option value="3rd sem">3rd Semester</option>
                   <option value="4th sem">4th Semester</option>
                   
               </select></strong> <strong>

            <br />
            </strong>
            <br />
            <br />
        <asp:Button ID="Button2" runat="server" Text="ADD" Width="67px" CssClass="auto-style5" Font-Bold="True" OnClick="Button2_Click"  />

            
            <br />
            </strong></div>
    </form>
</body>
</html>
