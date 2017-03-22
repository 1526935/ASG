<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Default.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name:<asp:TextBox ID="NameTxt" runat="server" OnTextChanged="NameTxt_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="ReqNameValidator" runat="server" ControlToValidate="NameTxt" ErrorMessage="Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <br />
            Email:<asp:TextBox ID="EmailTxt" runat="server"></asp:TextBox>
&nbsp;<asp:RegularExpressionValidator ID="RegExpValidator" runat="server" ControlToValidate="EmailTxt" ErrorMessage="Invalid email format." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
        </div>
        Subject: <asp:TextBox ID="SubjectTxt" runat="server" Width="222px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="SubTxt" runat="server" ControlToValidate="NameTxt" ErrorMessage="Subject is required." ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <br />
        Message:<br />
        <asp:TextBox ID="MessageTxt" runat="server" Height="124px" TextMode="MultiLine" Width="433px"></asp:TextBox>
        <br />
        <br />
        <br />
        <asp:Button ID="SubmitBtn" runat="server" OnClick="Button1_Click" Text="Submit" />
        <br />
        <br />
        <asp:Literal ID="ResultTxt" runat="server"></asp:Literal>
        <br />
        <br />
    </form>
</body>
</html>
