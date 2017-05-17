<%@ Page Title="" Language="C#" MasterPageFile="~/EducationalGuides.Master" AutoEventWireup="true" CodeBehind="EditProduct.aspx.cs" Inherits="Default.AdminPage.EditProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="EditProducts" DefaultMode="Edit" OnItemUpdated="FormView1_ItemUpdated">
    <EditItemTemplate>
        Id:
        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
        <br />
        ProductCode:
        <asp:TextBox ID="ProductCodeTextBox" runat="server" Text='<%# Bind("ProductCode") %>' />
        <br />
        ProductsName:
        <asp:TextBox ID="ProductsNameTextBox" runat="server" Text='<%# Bind("ProductsName") %>' />
        <br />
        Price:
        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
        <br />
        Descriptions:
        <asp:TextBox ID="DescriptionsTextBox" runat="server" Text='<%# Bind("Descriptions") %>' />
        <br />
        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </EditItemTemplate>
    <InsertItemTemplate>
        ProductCode:
        <asp:TextBox ID="ProductCodeTextBox" runat="server" Text='<%# Bind("ProductCode") %>' />
        <br />
        ProductsName:
        <asp:TextBox ID="ProductsNameTextBox" runat="server" Text='<%# Bind("ProductsName") %>' />
        <br />
        Price:
        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
        <br />
        Descriptions:
        <asp:TextBox ID="DescriptionsTextBox" runat="server" Text='<%# Bind("Descriptions") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
    </InsertItemTemplate>
    <ItemTemplate>
        Id:
        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
        <br />
        ProductCode:
        <asp:Label ID="ProductCodeLabel" runat="server" Text='<%# Bind("ProductCode") %>' />
        <br />
        ProductsName:
        <asp:Label ID="ProductsNameLabel" runat="server" Text='<%# Bind("ProductsName") %>' />
        <br />
        Price:
        <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
        <br />
        Descriptions:
        <asp:Label ID="DescriptionsLabel" runat="server" Text='<%# Bind("Descriptions") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>
</asp:FormView>
    <asp:SqlDataSource ID="EditProducts" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1526935_1526935_educationalguides_co5027ConnectionString %>" DeleteCommand="DELETE FROM [tblTeachingProducts] WHERE [Id] = @original_Id AND [ProductCode] = @original_ProductCode AND [ProductsName] = @original_ProductsName AND [Price] = @original_Price AND (([Descriptions] = @original_Descriptions) OR ([Descriptions] IS NULL AND @original_Descriptions IS NULL))" InsertCommand="INSERT INTO [tblTeachingProducts] ([ProductCode], [ProductsName], [Price], [Descriptions]) VALUES (@ProductCode, @ProductsName, @Price, @Descriptions)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblTeachingProducts]" UpdateCommand="UPDATE [tblTeachingProducts] SET [ProductCode] = @ProductCode, [ProductsName] = @ProductsName, [Price] = @Price, [Descriptions] = @Descriptions WHERE [Id] = @original_Id AND [ProductCode] = @original_ProductCode AND [ProductsName] = @original_ProductsName AND [Price] = @original_Price AND (([Descriptions] = @original_Descriptions) OR ([Descriptions] IS NULL AND @original_Descriptions IS NULL))">
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
    <div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="DeleteProducts" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="298px" Width="916px">
        <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="ProductCode" HeaderText="Products Code" SortExpression="ProductCode" />
            <asp:BoundField DataField="ProductsName" HeaderText="Products Name" SortExpression="ProductsName" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Descriptions" HeaderText="Descriptions" SortExpression="Descriptions" />
        </Columns>
        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        <SortedAscendingCellStyle BackColor="#F4F4FD" />
        <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
        <SortedDescendingCellStyle BackColor="#D8D8F0" />
        <SortedDescendingHeaderStyle BackColor="#3E3277" />
</asp:GridView>
        </div>
<asp:SqlDataSource ID="DeleteProducts" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1526935_1526935_educationalguides_co5027ConnectionString %>" DeleteCommand="DELETE FROM [tblTeachingProducts] WHERE [Id] = @original_Id AND [ProductCode] = @original_ProductCode AND [ProductsName] = @original_ProductsName AND [Price] = @original_Price AND (([Descriptions] = @original_Descriptions) OR ([Descriptions] IS NULL AND @original_Descriptions IS NULL))" InsertCommand="INSERT INTO [tblTeachingProducts] ([ProductCode], [ProductsName], [Price], [Descriptions]) VALUES (@ProductCode, @ProductsName, @Price, @Descriptions)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblTeachingProducts]" UpdateCommand="UPDATE [tblTeachingProducts] SET [ProductCode] = @ProductCode, [ProductsName] = @ProductsName, [Price] = @Price, [Descriptions] = @Descriptions WHERE [Id] = @original_Id AND [ProductCode] = @original_ProductCode AND [ProductsName] = @original_ProductsName AND [Price] = @original_Price AND (([Descriptions] = @original_Descriptions) OR ([Descriptions] IS NULL AND @original_Descriptions IS NULL))">
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
