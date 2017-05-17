<%@ Page Title="Contact" Language="C#" MasterPageFile="~/EducationalGuides.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Default.Contact111" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <!--Codes are adapted from https://www.codeproject.com & http://tutorials.tinyappco.com -->
    <asp:Panel ID="Panel1" runat="server" DefaultButton="btnSubmit">
  
       <h2 >Fill in the following to keep in touch with us! </h2> 

        <br />
       
        Your name:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Name is required"

            ControlToValidate="YourName" ValidationGroup="save" ForeColor="Red" /><br />
        <asp:TextBox ID="YourName" runat="server" Width="256px" BorderColor="#0099FF" Height="33px" />
        <br />
        <br />
        Your email address:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter your valid email"

            ControlToValidate="YourEmail" ValidationGroup="save" ForeColor="Red" />
        <br />
        <asp:TextBox ID="YourEmail" runat="server" Width="253px" BorderColor="#0099FF" Height="32px" />
        <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23"

            SetFocusOnError="true" Text="Example: username@gmail.com" ControlToValidate="YourEmail"

            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"

            ValidationGroup="save" ForeColor="Red" />
        <br />
        <br />
        Subject:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Subject is required"

            ControlToValidate="YourSubject" ValidationGroup="save" ForeColor="Red" /><br />
        <asp:TextBox ID="YourSubject" runat="server" Width="400px" BorderColor="#0099FF" Height="30px" />
        <br />
        <br />
        Your Message:
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter your message"

            ControlToValidate="Comments" ValidationGroup="save" ForeColor="Red" /><br />
        <asp:TextBox ID="Comments" runat="server" 

                TextMode="MultiLine" Rows="10" Width="400px" BorderColor="#0099FF" />
   
    <p>
        <asp:Button ID="btnSubmit" runat="server" Text="Send" 

                    OnClick="Button1_Click" ValidationGroup="save" Height="29px" Width="123px" BackColor="#99CCFF" />
        <asp:Literal ID="ResultLit" runat="server"></asp:Literal>
    </p>
</asp:Panel>
<p>
    &nbsp;</p>  

    <div class="scroll-left" > <p > FIND US </p > </div >
    <br />
    <h3>Our Location</h3>
   
    <p> Teaching Guides Sdn Bhd,
    </p>
    <p> Kampong Batu Bersurat, </p>
    <p> Simpang 123, Jln Laksamana Abdul Razak,
        </p>
    <p> Negara Brunei Darussalam. </p>

    <div id="map"></div>
    <script src="JavaScript1/Map.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key= AIzaSyBTcwZQDTCO4rI4zAILl_9hM9ugckDhXek&callback=initMap"></script>
   
</asp:Content>
