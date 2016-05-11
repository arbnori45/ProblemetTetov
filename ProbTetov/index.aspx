<%@ Page Language="C#" MasterPageFile="Site1.Master" Title="Content Page" %>

<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #map {
            height: 100%;
        }
        .navbar {
            margin-bottom:0px !important;
        }
    </style>
    
    <div id="myModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add Event</h4>
                </div>
                <div class="modal-body">
                    <form role="form">
                        <div class="form-group">
                            <label for="choose_problem">*Kategoria:</label>
                            <select class="form-control">
                                <option>1</option>
                                <option>2</option>
                                <option>3</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="Titulli">Titulli:</label>
                            <asp:TextBox ID="Titulli" class="form-control" runat="server"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label for="FileUpload1">Ngarko Fotografi:</label>
                            <asp:FileUpload ID="FileUpload1" runat="server" />
                        </div>

                        <div class="form-group">
                            <label for="permbajta">Permbajtja:</label>
                            <textarea class="form-control"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Adresa:</label>
                            <input type="Adresa" class="form-control" id="Adresa" placeholder="Adresa">
                        </div>

                    </form>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-success">Submit</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>

    <div id="map"></div>

</asp:Content>




