<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="contact1.aspx.cs" Inherits="Default.contact1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name:
            <asp:TextBox ID="TxtName" runat="server" Width="196px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegExpName" runat="server" ErrorMessage="Name is required." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            Email:<asp:TextBox ID="EmailTxt" runat="server" Width="202px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegExpEmail" runat="server" ErrorMessage="Email is required." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            Subject:<asp:TextBox ID="SubjectTxt" runat="server" Width="223px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegExpSub" runat="server" ErrorMessage="Fill in your subject." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            Message:<br />
            <asp:TextBox ID="MsgTxt" runat="server" Height="225px" TextMode="MultiLine" Width="351px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="SubmitBtn" runat="server" Text="Submit" />
        </div>
        <asp:Literal ID="ResultTxt" runat="server"></asp:Literal>
    </form>
</body>
</html>
