<%@ Page Title="" Language="C#" MasterPageFile="~/EducationalGuides.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Default.Contact1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
     <!--Code are adapted from https://w3school.com-->
    <br />
    <br />
    <asp:Label ID="NameLbl" runat="server" Text="Name:"></asp:Label>
    <asp:TextBox ID="NameTxt" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredNameValidator1" runat="server" ControlToValidate="NameTxt" ErrorMessage="Name is required." ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="EmailLbl" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="EmailTxt" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegExpEmail" runat="server" ErrorMessage="Email is required." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="EmailTxt" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="SubjectLbl" runat="server" Text="Subject:"></asp:Label>
            <asp:TextBox ID="SubjectTxt" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegExpSub" runat="server" ControlToValidate="SubjectTxt"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="MsgLbl" runat="server" Text="Message:"></asp:Label>
            <br />
            <asp:TextBox ID="MsgTxt" runat="server" Height="225px" TextMode="MultiLine" Width="437px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Submit" runat="server" OnClick="Submit_Click" Text="Submit" Width="110px" />
        <asp:Literal ID="ResultTxt" runat="server"></asp:Literal>
    <br />
    <br />
 
   
  
 
    <h3>Our Location</h3>
    <div id="map"></div>
    
    <script src="JavaScript1/Map.js"></script>

<script async defer 
    
    src="https://maps.googleapis.com/maps/api/js?key= AIzaSyBTcwZQDTCO4rI4zAILl_9hM9ugckDhXek&callback=initMap"
  type="text/javascript"></script>

<!--
To use this code on your website, get a free API key from Google.
Read more at: https://www.w3schools.com/graphics/google_maps_basic.asp
-->
   
</asp:Content>
