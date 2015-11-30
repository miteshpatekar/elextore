<%@include file="Header.jsp" %>

<body>
<div class="well">
    <div class="row">
            
            <h3 >Cart Items</p>

            <div class="row">
                <div class="col-lg-12">
                     <table class="table table-striped">
                        <tr>
                        <th>Name</th>
                    <th>Image</th>
                    <th>Quantity</th>
                    <th>Price</th>
                    <th>Action</th>

                        </tr>

                        <tr>
                            <td>Dell XPS 15</td>
                            <td><img src="images/dellxps15.jpg" alt="No Image found for this product" width="250" height="238"></td>
                            <td><input type="text" value="1"></input></td>
                            <td>$900</td>
                            <td><button type="button" class="btn btn-danger">Remove</button><br></br></td>
                        </tr>
                         <tr>
                            <td>Dell Alienware</td>
                            <td><img src="images/dellalienware15.jpg" alt="No Image found for this product" width="250" height="238"></td>
                            <td><input type="text" value="1"></input></td>
                            <td>$1200</td>
                            <td><button type="button" class="btn btn-danger">Remove</button><br></br></td>
                        </tr>
                    </table>

                </div>
               
            </div>

            <div class="row">
                <div class="col-lg-8"> </div>
                <div class="col-lg-4"> 
                    <h2>Total : $ 2100</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8"> </div>
                <div class="col-lg-4"> 
                <button type="button" class="btn btn-success"><a href="OrderPage.jsp"></a>Checkout</button>
                </div>
            </div>
    </div>
</div>
<body>
<%@include file="footer.jsp" %>