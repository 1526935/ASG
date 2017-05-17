<%@ Page Title="" Language="C#" MasterPageFile="~/EducationalGuides.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Default.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    

    <div>
        <h2>Not Register Yet? Register Now</h2>
        <hr />
        <p>
            <asp:Literal runat="server" ID="StatusMessage" />
        </p>                
        <div class="FormDesign">
            <asp:Label runat="server" AssociatedControlID="UserName">User name</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="UserName" />   <asp:RequiredFieldValidator ID="Validator1" runat="server" ErrorMessage="Name is required" ForeColor="#ff0000" ControlToValidate="UserName"></asp:RequiredFieldValidator>             
            </div>
        </div>
        <div class="FormDesign">
            <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
            <div>
                <asp:TextBox runat="server" ID="Password" TextMode="Password" /> <asp:RequiredFieldValidator ID="Validator2" runat="server" ErrorMessage="Password is required" ForeColor="#ff0000" ControlToValidate="Password"></asp:RequiredFieldValidator>                
            </div>
        </div>
        <div class="FormDesign">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword">Confirm password</asp:Label> 
            <div>
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" /> <asp:RequiredFieldValidator ID="Validator3" runat="server" ErrorMessage="Confirm Password is required" ForeColor="#ff0000" ControlToValidate="ConfirmPassword"></asp:RequiredFieldValidator>                       
            </div>
        </div>
        <div>
            <div>
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" />
            </div>
        </div>
    </div>

       
         <div>
         <hr />
            <h2>Sign In</h2>
            </div>
         <asp:PlaceHolder runat="server" ID="LoginStatus" Visible="false">
            <p>
               <asp:Literal runat="server" ID="StatusText" />
            </p>
         </asp:PlaceHolder>
        <asp:PlaceHolder runat="server" ID="LoginForm" Visible="false">
            <div class="FormDesign">
               <asp:Label runat="server" AssociatedControlID="UserName">User name</asp:Label>
               <div>
                  <asp:TextBox runat="server" ID="nameBox" />
               </div>
            </div>
            <div class="FormDesign">
               <asp:Label runat="server" AssociatedControlID="Password">Password</asp:Label>
               <div>
                  <asp:TextBox runat="server" ID="passBox" TextMode="Password" />
               </div>
            </div>
           <div class="FormDesign">
               <div>
                  <asp:Button runat="server" OnClick="SignIn" Text="Log in" />
               </div>
            </div>
         </asp:PlaceHolder>
        <asp:PlaceHolder runat="server" ID="LogoutButton" Visible="false">
            <div>
               <div>
                  <asp:Button runat="server" OnClick="SignOut" Text="Log out" />
               </div>
            </div>
         </asp:PlaceHolder>
      
</asp:Content>
