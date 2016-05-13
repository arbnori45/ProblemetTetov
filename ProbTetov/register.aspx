<%@ Page Language="C#" MasterPageFile="Site1.Master" Title="Content Page" %>

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
</script>


<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">

        function ClientValidate(source, clientside_arguments) {

            //Test whether the length of the value is more than 6 characters

            if (clientside_arguments.Value.length >= 6) {

                clientside_arguments.IsValid = true;

            }

            else { clientside_arguments.IsValid = false };

        }

    </script>
    <style>
        form {
            margin-top: 100px;
        }
        .form-group {
            margin-bottom:0px !important;
        }
    </style>
    <div class="container-fluid">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <form role="form" method="post">

                        <div class="form-group">
                            <label for="lblFname">*First Name:</label>
                            <asp:TextBox ID="FirstName" class="form-control" runat="server" placeholder="Enter your First name"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4"
                                runat="server"
                                ErrorMessage="This field is required"
                                ControlToValidate="FirstName"
                                ForeColor="Red">
                            </asp:RequiredFieldValidator>

                        </div>

                        <div class="form-group">
                            <label for="last_name">*Last Name:</label>
                            <asp:TextBox ID="Lastname" class="form-control" runat="server" placeholder="Enter your Last name"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                runat="server"
                                ErrorMessage="This field is required"
                                ControlToValidate="Lastname"
                                ForeColor="Red">
                            </asp:RequiredFieldValidator>

                        </div>

                        <div class="form-group">
                            <label for="email">*Email:</label>
                            <asp:TextBox ID="Email" class="form-control" runat="server" placeholder="Enter your E-mail"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2"
                                runat="server"
                                ErrorMessage="This field is required"
                                ControlToValidate="Email"
                                ForeColor="Red">
                            </asp:RequiredFieldValidator>

                            <asp:RegularExpressionValidator ID="remail" runat="server"
                                ControlToValidate="Email" ErrorMessage="example@example.com"
                                ForeColor="Red"
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">
                            </asp:RegularExpressionValidator>

                        </div>
                        <div class="form-group">
                            <label for="Address">*Address:</label>
                            <asp:TextBox ID="Address" class="form-control" runat="server" placeholder="Enter your Address"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3"
                                runat="server"
                                ErrorMessage="This field is required"
                                ControlToValidate="Address"
                                ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="Username">*Username:</label>
                            <asp:TextBox ID="Username" class="form-control" runat="server" placeholder="Enter your Username"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5"
                                runat="server"
                                ErrorMessage="This field is required"
                                ControlToValidate="Username"
                                ForeColor="Red">
                            </asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                            <label for="Password">*Password:</label>
                            <asp:TextBox ID="Password" TextMode="password" class="form-control" runat="server" placeholder="Enter your Password"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6"
                                runat="server"
                                ErrorMessage="This field is required"
                                ControlToValidate="Password"
                                ForeColor="Red">
                            </asp:RequiredFieldValidator><br />
                            <asp:CustomValidator ID="CustomValidator1" ClientValidationFunction="ClientValidate"
                                ControlToValidate="Password" runat="server" ErrorMessage="The Password must be more than 6 characters">
                               
                            </asp:CustomValidator>
                        </div>
                        <div class="form-group">
                            <label for="Confirm-Password">*Confirm-Password:</label>
                            <asp:TextBox ID="cPassword" TextMode="password" class="form-control" runat="server" placeholder="Confirm your Password"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7"
                                runat="server"
                                ErrorMessage="This field is required"
                                ControlToValidate="cPassword"
                                ForeColor="Red">
                            </asp:RequiredFieldValidator><br />
                             <asp:CompareValidator ID="compare" runat="server" ErrorMessage="Password do not match" ControlToCompare="Password" ControlToValidate="cPassword">

                            </asp:CompareValidator>

                        </div>
                        <div class="form-group">
                            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
