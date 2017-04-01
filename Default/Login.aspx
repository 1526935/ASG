<%@ Page Title="" Language="C#" MasterPageFile="~/EducationalGuides.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Default.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <div class="scroll-left" > <p > REGISTER NOW </p > </div >
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <br />
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Label ID="NameLbl" runat="server" Text="Name:"></asp:Label><asp:TextBox ID="UsernameBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UsernameBox" ErrorMessage="Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="PassLbl" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="PassBox" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPass" runat="server" ControlToValidate="PassBox" ErrorMessage="Please enter password" ForeColor="Red"></asp:RegularExpressionValidator>
            .<br />
            <br />
            <asp:Label ID="EnterPassLbl" runat="server" Text="Re-Enter Password:"></asp:Label>
            <asp:TextBox ID="ReEnterBox" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorReEnter" runat="server" ControlToValidate="ReEnterBox" ErrorMessage="Please re-enter your password." ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="PhoneNoLbl" runat="server" Text="Phone Number:"></asp:Label>
            <asp:TextBox ID="PhonNoBox" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server" ErrorMessage="Phone number is required." ControlToValidate="PhonNoBox" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="EmailIdLbl" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="EmailIdBox" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Valid email is required." ControlToValidate="EmailIdBox" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Button ID="SubmitBtn" runat="server" OnClick="SubmitBtn_Click" Text="Submit" />
            <asp:Literal ID="ResultLit" runat="server"></asp:Literal>
        </ContentTemplate>
    </asp:UpdatePanel>

    
</asp:Content>
