
 <%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.Master" AutoEventWireup="true" CodeBehind="AllCategory.aspx.cs" Inherits="TayyabBakersandsweets.AllCategory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
</asp:Content>
			<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
               <main id="main" class="main">
    <div class="pagetitle">
      <h1>All Categories</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="AdminHomepage.aspx">Home</a></li>
          <li class="breadcrumb-item"><a href="AllCategory.aspx">All Categories</a></li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
    <section class="section">
      
       <table class="table table-bordered border-primary">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Item Name</th>
                    <th scope="col">Category</th>
                    <th scope="col">Item Price</th>
                    <th scope="col">Image</th>
                      <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <th scope="row">1</th>
                    <td>Brandon Jacob</td>
                    <td>Designer</td>
                    <td>28</td>
                    <td>2016-05-25</td>
                      <td><button type="submit" class="btn btn-success ">Edit</button>
                          <button type="submit" class="btn btn-danger ">Delete</button>
                      </td>
                  </tr>
                  <tr>
                    <th scope="row">2</th>
                    <td>Bridie Kessler</td>
                    <td>Developer</td>
                    <td>35</td>
                    <td>2014-12-05</td>
                      <td><button type="submit" class="btn btn-success ">Edit</button>
                          <button type="submit" class="btn btn-danger ">Delete</button>
                      </td>
                  </tr>
                  <tr>
                    <th scope="row">3</th>
                    <td>Ashleigh Langosh</td>
                    <td>Finance</td>
                    <td>45</td>
                    <td>2011-08-12</td>
                        <td><button type="submit" class="btn btn-success ">Edit</button>
                          <button type="submit" class="btn btn-danger ">Delete</button>
                      </td>
                  </tr>
                  <tr>
                    <th scope="row">4</th>
                    <td>Angus Grady</td>
                    <td>HR</td>
                    <td>34</td>
                    <td>2012-06-11</td>
                        <td><button type="submit" class="btn btn-success ">Edit</button>
                          <button type="submit" class="btn btn-danger ">Delete</button>
                      </td>
                  </tr>
                  <tr>
                    <th scope="row">5</th>
                    <td>Raheem Lehner</td>
                    <td>Dynamic Division Officer</td>
                    <td>47</td>
                    <td>2011-04-19</td>
                      <td><button type="submit" class="btn btn-success ">Edit</button>
                          <button type="submit" class="btn btn-danger ">Delete</button>
                      </td>
                  </tr>
                </tbody>
              </table>
    </section>
                   
  </main>
				
			</asp:Content>



  