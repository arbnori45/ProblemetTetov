<%@ Page Language="C#" MasterPageFile="Site1.Master" Title="Content Page" %>

<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        form {
            margin-top: 100px;
        }
    </style>
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <form role="form" method="post">
                        <div class="form-group">
                            <label for="FirstName">First Name:</label>
                            <asp:TextBox ID="FirstName" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="LastName">Last Name:</label>
                            <asp:TextBox ID="Lastname" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="Email">Email:</label>
                            <asp:TextBox ID="Email" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="Address">Address:</label>
                            <asp:TextBox ID="Address" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="Username">Username:</label>
                            <asp:TextBox ID="Username" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="Password">Password:</label>
                            <asp:TextBox ID="Password" TextMode="password" class="form-control" runat="server"></asp:TextBox>
                        </div>
                         <div class="form-group">
                            <label for="Confirm-Password">Confirm-Password:</label>
                            <asp:TextBox TextMode="password" class="form-control" runat="server"></asp:TextBox>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
