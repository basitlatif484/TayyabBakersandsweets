
 <%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.Master" AutoEventWireup="true" CodeBehind="Additem.aspx.cs" Inherits="TayyabBakersandsweets.Additem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	
   
</asp:Content>
			<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
               <main id="main" class="main">
    <div class="pagetitle">
      <h1>Add item</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="AdminHomepage.aspx">Home</a></li>
          <li class="breadcrumb-item"><a href="Additem.aspx">Add item</a></li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <section class="section">
      <div class="row">
        <div class="col-lg-6 offset-md-3">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title text-center" style="font-weight:bold;font-size:25px;font-family:Calibri;">Add item</h5>
              <!-- General Form Elements -->
             <form>
        <div class="row mb-3">
            <div class="col-sm-12">
                <label>Select Category</label>
                <asp:DropDownList runat="server" ID="ddl_category" CssClass="form-select"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCategory" runat="server" ControlToValidate="ddl_category" InitialValue="" ErrorMessage="Please select a category" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-sm-6">
                <label for="inputText">Item Name</label>
                <asp:TextBox runat="server" ID="txtItemName" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvItemName" runat="server" ControlToValidate="txtItemName" ErrorMessage="Please enter item name" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div class="col-sm-6">
                <label for="inputText">Item Price</label>
                <asp:TextBox runat="server" ID="txtItemPrice" CssClass="form-control" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvItemPrice" runat="server" ControlToValidate="txtItemPrice" ErrorMessage="Please enter item price" ForeColor="Red" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revItemPrice" runat="server" ControlToValidate="txtItemPrice" ErrorMessage="Invalid item price format" ValidationExpression="^\d+(\.\d{1,2})?$" ForeColor="Red" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-sm-12">
                <label for="inputNumber">Item Picture(150x150)</label>
                <asp:FileUpload runat="server" ID="fileItemPicture" CssClass="form-control"></asp:FileUpload>
            </div>
        </div>
        <div class="row mb-3">
            <div class="col-md-6 col-12 offset-md-3 text-center">
                <asp:Button runat="server" OnClick="btnAdd_Click" CssClass="form-control btn btn-primary" Text="Add" />
            </div>
        </div>
    </form>

            </div>
          </div>

        </div>

      
      </div>
    </section>
                   
  </main>
				
			</asp:Content>



  