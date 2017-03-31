<%@ Page Title="" Language="C#" MasterPageFile="~/EducationalGuides.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Default.Contact1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">

    <br />
    <br />
    <asp:Label ID="NameLbl" runat="server" Text="Name:"></asp:Label>
    <asp:TextBox ID="NameTxt" runat="server"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegExpName" runat="server" ControlToValidate="NameTxt" ErrorMessage="Name is required." ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="EmailLbl" runat="server" Text="Email:"></asp:Label>
            <asp:TextBox ID="EmailTxt" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegExpEmail" runat="server" ErrorMessage="Email is required." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="EmailTxt" ForeColor="Red"></asp:RegularExpressionValidator>
            <br />
            <br />
            <asp:Label ID="SubjectLbl" runat="server" Text="Subject:"></asp:Label>
            <asp:TextBox ID="SubjectTxt" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegExpSub" runat="server" ErrorMessage="Fill in your subject." ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="SubjectTxt" ForeColor="Red"></asp:RegularExpressionValidator>
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
    <div id="map"></div>
    <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
            center: { lat: 4.8857309, lng: 114.9316692 },
          zoom: 8
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB9Pojp2CFXhoKXFbXhGf8qtZ2psuh066Q&callback=initMap"
            async defer></script>

</asp:Content>
