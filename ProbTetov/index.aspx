<%@ Page Language="C#" MasterPageFile="Site1.Master" Title="Content Page" CodeBehind="~/index.aspx.cs" Inherits="ProbTetov.index" %>



<asp:Content ID="content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <style>
        #map {
            height: 100%;
        }

        .navbar {
            margin-bottom: 0px !important;
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
                            <textarea id="Permb" cols="20" rows="2" runat="server"></textarea>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Adresa:</label>
                            <asp:TextBox ID="adresa" runat="server"></asp:TextBox>
                        </div>

                       
                            <input type="text" id="cityLatitude" name="cityLatitude" runat="server" />
                        
                        
                        <input type="hidden" id="cityLat" name="cityLat" runat="server" />
                        <input type="hidden" id="cityLng" name="cityLng" runat="server" />
                        
                    </form>
                </div>
                <div class="modal-footer">
         

               <input type="button" value="Shto Problem" onclick="insertProblem()" />

                   <div style="display: none;">

                       <asp:Button ID="ButtonRegisterProblem" runat="server" OnClick="BtnRegisterProb" Text="" />

                    </div>
                  
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>

        </div>
    </div>

    <div id="map"></div>

    <script>
        var map;
        var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        var labelIndex = 0;

        function initMap() {

      
            var tetovo = { lat: 42.0069120, lng: 20.9715270 };
            map = new google.maps.Map(document.getElementById('map'), {
                center: tetovo,
                zoom: 15
            });


            google.maps.event.addListener(map, 'click', function (event) {
          
                placeMarker(event.latLng);
                $("#myModal").modal('show')

 
            });


  

            function placeMarker(location) {
                var marker = new google.maps.Marker({
                    position: location,
                    map: map
                });
            }
            addMarker(tetovo, map);

            var input = document.getElementById('searchTextField');
            var autocomplete = new google.maps.places.Autocomplete(input);
            google.maps.event.addListener(autocomplete, 'place_changed', function () {
                var place = autocomplete.getPlace();
                document.getElementById('city2').value = place.name;
                document.getElementById('cityLat').value = place.geometry.location.lat();
                document.getElementById('cityLng').value = place.geometry.location.lng();
                //alert("This function is working!");
                //alert(place.name);
                // alert(place.address_components[0].long_name);

            });

        }



        function addMarker(location, map) {
            var marker = new google.maps.Marker({
                position: location,
                label: labels[labelIndex++ % labels.length],
                map: map
            });

        }



        function insertProblem() {
          
            document.getElementById('<%= ButtonRegisterProblem.ClientID %>').click();



            
            
   }


    </script>
</asp:Content>




