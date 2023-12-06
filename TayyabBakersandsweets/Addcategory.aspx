
 <%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.Master" AutoEventWireup="true" CodeBehind="Addcategory.aspx.cs" Inherits="TayyabBakersandsweets.Addcategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
   
</asp:Content>
			<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
               <main id="main" class="main">

    <div class="pagetitle">
      <h1>Add Category</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="AdminHomePage.aspx">Home</a></li>
          <li class="breadcrumb-item"><a href="Addcategory.aspx">Add Category</a></li>
         
        </ol>
      </nav>
    </div><!-- End Page Title -->
 
     
    <section class="section">
     
        <div class="container">
           
                    <div class="row">
                        
                        <div class="col-md-6">
                            <div class="card">
                                <div class="card-body">
                                    <h1 class="card-title text-center" style="font-weight:bold;">Add Category</h1>
                                    <!-- General Form Elements -->
                                    <div class="row mb-3">
                                        <div class="col-sm-12">
                                            <asp:Label runat="server" AssociatedControlID="txtCategoryName">Category Name</asp:Label>
                                            <asp:TextBox runat="server" ID="txtCategoryName" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="rfvCategoryName" ControlToValidate="txtCategoryName" 
                                                ErrorMessage="Category Name is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <div class="col-sm-12">
                                            <asp:Label runat="server" AssociatedControlID="fileUpload">File Upload(500x350)</asp:Label>
                                            <asp:FileUpload runat="server" ID="fileUpload" CssClass="form-control" />
                                            <asp:RequiredFieldValidator runat="server" ID="rfvFileUpload" ControlToValidate="fileUpload" 
                                                ErrorMessage="File Upload is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <div class="col-md-6 col-12 offset-md-3 text-center">
                                            <asp:Button runat="server" Text="Add" CssClass="btn btn-primary form-control" OnClick="btnAdd_Click"  />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <asp:Repeater runat="server" ID="ctg_repeater">
    <HeaderTemplate>
        <table class="table table-bordered border-primary">
            <thead>
                <tr>
                    <th scope="col">#</th>
                   
                    <th scope="col">Category</th>
                   
                    <th scope="col">Image</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <th scope="row"><%# Container.ItemIndex + 1 %></th>
          
            <td><%# Eval("ct_name") %></td>
            <td><img src='<%# ResolveUrl(Eval("image").ToString()) %>' width="60" height="30" /></td>
             <td>
                            <asp:Button runat="server" OnClick="btn_editClick" CssClass="btn btn-success" Text="Edit" style="font-size:12px;" CommandArgument='<%# Eval("ct_id") %>' AutoPostBack="true"  />
                           <asp:Button runat="server" OnClick="btn_deleteitem" CssClass="btn btn-danger" Text="Delete"  style="font-size:12px;"  CommandArgument='<%# Eval("ct_id") %>' AutoPostBack="true" />
                           
                        </td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </tbody>
        </table>
    </FooterTemplate>
</asp:Repeater>

                        </div>
                    </div>
              
        </div>
    </section>

  </main>
				<!-- Edit Category Modal -->
<div class="modal" id="editCategoryModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Edit Category</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                 <div class="row">
                        
                        <div class="col-md-12">
                            <div class="card">
                                <div class="card-body">
                                    <h1 class="card-title text-center" style="font-weight:bold;">Edit Category</h1>
                                    <!-- General Form Elements -->
                                    <div class="row mb-3">
                                        <div class="col-sm-12">
                                            <asp:HiddenField ID="hidden_catg" runat="server" />
                                            <asp:Label runat="server" AssociatedControlID="txtCategoryName">Category Name</asp:Label>
                                            <asp:TextBox runat="server" ID="txt_updatecatgory" CssClass="form-control"></asp:TextBox>
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txt_updatecatgory" 
                                                ErrorMessage="Category Name is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>
                                     <div class="row mb-3">
    <div class="col-sm-12">
        <label for="inputNumber">Existing Item Picture</label>
        <asp:Image runat="server" ID="imgExistingItemPicture" CssClass="img-fluid" Visible="false" />
        <asp:HiddenField ID="hiddenimgurl" runat="server"  />
    </div>
</div>
                                    <div class="row mb-3">
                                        <div class="col-sm-12">
                                            <asp:Label runat="server" AssociatedControlID="fileUpload">File Upload(500x350)</asp:Label>
                                            <asp:FileUpload runat="server" ID="fileUpload1" CssClass="form-control" />
                                            <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="fileUpload1" 
                                                ErrorMessage="File Upload is required." Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <div class="col-md-6 col-12 offset-md-3 text-center">
                                            <asp:Button runat="server" Text="Update" CssClass="btn btn-primary form-control"  />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                      
                    </div>
            </div>
           
        </div>
    </div>
</div>

    <script>
        function openEditModal() {
            // Add JavaScript code to open the modal here
            // For example, you can use jQuery to trigger a click on the button that opens the modal
            $("#editCategoryModal").modal("show");
    }
</script>



			</asp:Content>



  