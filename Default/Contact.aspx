<%@ Page Title="" Language="C#" MasterPageFile="~/EducationalGuides.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Default.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit">
    <h3>
        Fill in the following to keep in touch with us!</h3>
 
        Your name:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Name is required"

            ControlToValidate="YourName" ValidationGroup="save" ForeColor="Red" /><br />
        <asp:TextBox ID="YourName" runat="server" Width="250px" BorderColor="#0099FF" />
        <br />
        <br />
        Your email address:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your valid email"

            ControlToValidate="YourEmail" ValidationGroup="save" ForeColor="Red" />
        <br />
        <asp:TextBox ID="YourEmail" runat="server" Width="250px" BorderColor="#0099FF" />
        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23"

            SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="YourEmail"

            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"

            ValidationGroup="save" ForeColor="Red" />
        <br />
        <br />
        Subject:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Subject is required"

            ControlToValidate="YourSubject" ValidationGroup="save" ForeColor="Red" /><br />
        <asp:TextBox ID="YourSubject" runat="server" Width="400px" BorderColor="#0099FF" />
        <br />
        <br />
        Your Message:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your message"

            ControlToValidate="Comments" ValidationGroup="save" ForeColor="Red" /><br />
        <asp:TextBox ID="Comments" runat="server" 

                TextMode="MultiLine" Rows="10" Width="400px" BorderColor="#0099FF" />
   
    <p>
        <asp:Button ID="btnSubmit" runat="server" Text="Send" 

                    OnClick="Button1_Click" ValidationGroup="save" Height="29px" Width="123px" />
    </p>
</asp:Panel>
<p>
    <asp:Literal ID="LitResult" runat="server" Visible="false"></asp:Literal>
</p>  

    <div class="scroll-left" > <p > FIND US </p > </div >
    <br />
    <h3>Our Location</h3>
    <div id="map"></div>
    
    <script src="JavaScript1/Map.js"></script>

<script async defer 
    
    src="https://maps.googleapis.com/maps/api/js?key= AIzaSyBTcwZQDTCO4rI4zAILl_9hM9ugckDhXek&callback=initMap"
  type="text/javascript"></script>
   
</asp:Content>
