<%@ Page Title="" Language="C#" MasterPageFile="~/EducationalGuides.Master" AutoEventWireup="true" CodeBehind="AddProductPage.aspx.cs" Inherits="Default.AdminPage.AddProductPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <div class="design">
   <h3> <a href="~/AdminPage/EditProduct.aspx" runat="server">Go to edit page</a></h3>
   </div>

    <asp:FormView ID="FormView1" runat="server" CellSpacing="-1" DataKeyNames="Id" DataSourceID="AddingProduct" DefaultMode="Insert">
        <EditItemTemplate>
             <div class="design">
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <div/>

<div class="design">
            ProductCode:
            <asp:TextBox ID="ProductCodeTextBox" runat="server" Text='<%# Bind("ProductCode") %>' /> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Product code is required" ForeColor="#ff0000" ControlToValidate="ProductCodeTextBox"></asp:RequiredFieldValidator>
            <div/>

    <div class="design">
            ProductsName:
            <asp:TextBox ID="ProductsNameTextBox" runat="server" Text='<%# Bind("ProductsName") %>' /> <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Product's name is required" ForeColor="#ff0000" ControlToValidate="ProductsNameTextBox"></asp:RequiredFieldValidator>
             <div/>

        <div class="design">
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' /> <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Price is required" ForeColor="#ff0000" ControlToValidate="PriceTextBox"></asp:RequiredFieldValidator>
          <div/>

             <div class="design">
            Descriptions:
            <asp:TextBox ID="DescriptionsTextBox" runat="server" Text='<%# Bind("Descriptions") %>' /> <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Description is required" ForeColor="#ff0000" ControlToValidate="DescriptionsTextBox"></asp:RequiredFieldValidator>
            <div/>


            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>


        <InsertItemTemplate>
            <div class="design">
            ProductCode:
            <asp:TextBox ID="ProductCodeTextBox" runat="server" Text='<%# Bind("ProductCode") %>' />
            <div/>

                <div class="design">
            ProductsName:
            <asp:TextBox ID="ProductsNameTextBox" runat="server" Text='<%# Bind("ProductsName") %>' />
            <div/>

        <div class="design">
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <div/>

        <div class="design">
            Descriptions:
            <asp:TextBox ID="DescriptionsTextBox" runat="server" Text='<%# Bind("Descriptions") %>' />
            <div/>


            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
          <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>

            <div class="design">
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
           <div/>

                  <div class="design">
            ProductCode:
            <asp:Label ID="ProductCodeLabel" runat="server" Text='<%# Bind("ProductCode") %>' />
         <div/>

                        <div class="design">
            ProductsName:
            <asp:Label ID="ProductsNameLabel" runat="server" Text='<%# Bind("ProductsName") %>' />
           <div/>

        <div class="design">
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
           <div/>

             <div class="design">
            Descriptions:
            <asp:Label ID="DescriptionsLabel" runat="server" Text='<%# Bind("Descriptions") %>' />
            <div/>

            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
           
            <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
           
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource ID="AddingProduct" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1526935_1526935_educationalguides_co5027ConnectionString %>" DeleteCommand="DELETE FROM [tblTeachingProducts] WHERE [Id] = @original_Id AND [ProductCode] = @original_ProductCode AND [ProductsName] = @original_ProductsName AND [Price] = @original_Price AND (([Descriptions] = @original_Descriptions) OR ([Descriptions] IS NULL AND @original_Descriptions IS NULL))" InsertCommand="INSERT INTO [tblTeachingProducts] ([ProductCode], [ProductsName], [Price], [Descriptions]) VALUES (@ProductCode, @ProductsName, @Price, @Descriptions)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblTeachingProducts]" UpdateCommand="UPDATE [tblTeachingProducts] SET [ProductCode] = @ProductCode, [ProductsName] = @ProductsName, [Price] = @Price, [Descriptions] = @Descriptions WHERE [Id] = @original_Id AND [ProductCode] = @original_ProductCode AND [ProductsName] = @original_ProductsName AND [Price] = @original_Price AND (([Descriptions] = @original_Descriptions) OR ([Descriptions] IS NULL AND @original_Descriptions IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_ProductCode" Type="Int32" />
            <asp:Parameter Name="original_ProductsName" Type="String" />
            <asp:Parameter Name="original_Price" Type="Double" />
            <asp:Parameter Name="original_Descriptions" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductCode" Type="Int32" />
            <asp:Parameter Name="ProductsName" Type="String" />
            <asp:Parameter Name="Price" Type="Double" />
            <asp:Parameter Name="Descriptions" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="ProductCode" Type="Int32" />
            <asp:Parameter Name="ProductsName" Type="String" />
            <asp:Parameter Name="Price" Type="Double" />
            <asp:Parameter Name="Descriptions" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
            <asp:Parameter Name="original_ProductCode" Type="Int32" />
            <asp:Parameter Name="original_ProductsName" Type="String" />
            <asp:Parameter Name="original_Price" Type="Double" />
            <asp:Parameter Name="original_Descriptions" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
