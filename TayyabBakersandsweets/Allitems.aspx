
 <%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.Master" AutoEventWireup="true" CodeBehind="Allitems.aspx.cs" Inherits="TayyabBakersandsweets.Allitems" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
   
</asp:Content>
			<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
               <main id="main" class="main">
    <div class="pagetitle">
      <h1>All items</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="AdminHomepage.aspx">Home</a></li>
          <li class="breadcrumb-item"><a href="Allitems.aspx">All items</a></li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <section class="section">
        <div class="row mb-3">
                  
                  <div class="col-md-4 col-12">
                      <label for="inputText">Search By Category</label>
                     <asp:DropDownList runat="server" ID="ddl_category" CssClass="form-select" OnSelectedIndexChanged="ddlcategoryselectchange" AutoPostBack="true"></asp:DropDownList>
        
                  </div>
                     <div class="col-md-4 col-12">
                      <label for="inputText">Search by Item Name</label>
                         <asp:TextBox runat="server" CssClass="form-control" ID="txt_itemname"></asp:TextBox>
                   
                  </div>
            <div class="col-md-4 col-12  text-center">
                <label></label>
                <asp:Button runat="server" CssClass="btn btn-primary form-control" OnClick="btn_Searchitem_click" Text="Search" />
                   
                  </div>
                </div>
          <asp:Repeater ID="itemsRepeater" runat="server">
                <HeaderTemplate>
                    <table class="table table-bordered border-primary" style="font-size:12px;">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Item Name</th>
                                <th scope="col">Category</th>
                                <th scope="col">Price</th>
                                <th scope="col">Image</th>
                                <th scope="col">Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>

                <ItemTemplate>
                    <tr>
                        <th scope="row"><%# Container.ItemIndex + 1 %></th>
                        <td><%# Eval("itemname") %></td>
                        <td><%# Eval("categoryname") %></td>
                        <td><%# Eval("itemprice") %></td>
                        <td><img src='<%# ResolveUrl(Eval("itemimage").ToString()) %>' width="60" height="30" /></td>
                        <td>
                            <asp:Button runat="server" OnClick="btn_Edititem" CssClass="btn btn-success" Text="Edit" style="font-size:12px;" CommandArgument='<%# Eval("itemid") %>' AutoPostBack="true"  />
                           <asp:Button runat="server" OnClick="btn_deleteitem" CssClass="btn btn-danger" Text="Delete"  style="font-size:12px;"  CommandArgument='<%# Eval("itemid") %>' AutoPostBack="true" />
                           
                        </td>
                    </tr>
                </ItemTemplate>

                <FooterTemplate>
                    </tbody>
                    </table>
                </FooterTemplate>
            </asp:Repeater>
      
    </section>
              
                  
  </main>
			 
			</asp:Content>



  