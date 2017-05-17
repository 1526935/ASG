<%@ Page Title="" Language="C#" MasterPageFile="~/EducationalGuides.Master" AutoEventWireup="true" CodeBehind="ViewProduct.aspx.cs" Inherits="Default.ViewProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="ProductDescription">
    <EditItemTemplate>
        <div class="design">
        Id:
        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
      </div>

         <div class="design">
        ProductCode:
        <asp:TextBox ID="ProductCodeTextBox" runat="server" Text='<%# Bind("ProductCode") %>' />
        </div>

        <div class="design">
        ProductsName:
        <asp:TextBox ID="ProductsNameTextBox" runat="server" Text='<%# Bind("ProductsName") %>' />
           </div>

         <div class="design">
        Price:
        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
       </div>

         <div class="design">
        Descriptions:
        <asp:TextBox ID="DescriptionsTextBox" runat="server" Text='<%# Bind("Descriptions") %>' />
      </div>


        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        <asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>

        <div class="design">
        ProductCode:
        <asp:TextBox ID="ProductCodeTextBox" runat="server" Text='<%# Bind("ProductCode") %>' />
        </div>

        <div class="design">
        ProductsName:
        <asp:TextBox ID="ProductsNameTextBox" runat="server" Text='<%# Bind("ProductsName") %>' />
          </div>

         <div class="design">
        BND$:
        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
        </div>

         <div class="design">
        Descriptions:
        <asp:TextBox ID="DescriptionsTextBox" runat="server" Text='<%# Bind("Descriptions") %>' />
        </div>
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>

        <div class="design">
        Id:
        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
        </div>

         <div class="design">
        ProductCode:
        <asp:Label ID="ProductCodeLabel" runat="server" Text='<%# Bind("ProductCode") %>' />
        </div>

         <div class="design">
        ProductsName:
        <asp:Label ID="ProductsNameLabel" runat="server" Text='<%# Bind("ProductsName") %>' />
       </div>

         <div class="design">
        Price:
        <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
        </div>

        <div class="design">
        Descriptions:
        <asp:Label ID="DescriptionsLabel" runat="server" Text='<%# Bind("Descriptions") %>' />
        </div>

    </ItemTemplate>
</asp:FormView>
<asp:SqlDataSource ID="ProductDescription" runat="server" ConnectionString="<%$ ConnectionStrings:db_1526935_1526935_educationalguides_co5027ConnectionString %>" SelectCommand="SELECT * FROM [tblTeachingProducts] WHERE ([Id] = @Id)">
    <SelectParameters>
        <asp:QueryStringParameter Name="Id" QueryStringField="Id" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
