<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="student.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" onsubmit= "return validateForm()" method="post">
        <div>
         <h2>Student Registration Form</h2>
         <asp:Label ID="Label1" runat="server" Text="Enter First Name"></asp:Label>
         <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
         <br/><br/>
         <asp:Label ID="Label2" runat="server" Text="Enter Last Name"></asp:Label>
         <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
         <br/><br/>
         &nbsp;  &nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <%--<asp:RadioButton ID="male" runat="server" GroupName ="gender" Text="Male" />
         <asp:RadioButton ID="female" runat="server" GroupName ="gender" Text="Female" />--%>
            
         &nbsp;  &nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem Value="Male">Male</asp:ListItem>
                <asp:ListItem Value="Female">Female</asp:ListItem>
            </asp:RadioButtonList>
             <br/><br/>
         <asp:Label ID="Label3" runat="server" Text="Enter Age"></asp:Label>
         <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
         <br/><br/>

         <asp:Button ID="submit" runat="server" Text="SAVE" OnClick="submit_Click" />
        </div>
       
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="true"  PageSize="10">
    <Columns>
        <asp:BoundField ItemStyle-Width="150px" DataField="student_id" HeaderText="Student ID" />
        <asp:BoundField ItemStyle-Width="150px" DataField="first_name" HeaderText="First Name" />
        <asp:BoundField ItemStyle-Width="150px" DataField="last_name" HeaderText="Last Name" />
        <asp:BoundField ItemStyle-Width="150px" DataField="gender" HeaderText="Gender" />
        <asp:BoundField ItemStyle-Width="150px" DataField="age" HeaderText="Age" />
     

    </Columns>
    </asp:GridView>

    </form>
</body>
</html>
