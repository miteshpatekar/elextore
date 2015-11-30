<%@include file="Header.jsp" %>
<body>
 <div id="body">		
	<section id="content">
<div class="well">
	<h3>Product Details</h3>
   <div class="row">
           <div class="col-lg-3">
		   <img src = "images/dellxps15.jpg" width = "250" height = "200" alt = "Microsoft - Xbox - Black">
		</div>
		   
            <div class="col-lg-5" style="border-left:2px solid grey">


           <div class="panel panel-primary">
   					<div class="panel-heading">
    			<h3 class="panel-title">Dell XPS 15</h3>
  				</div>
  				<div class="panel-body">
    				<ul class="list-group">
  <li class="list-group-item">Model : XZ</li>
  <li class="list-group-item">Size : OX</li>
  <li class="list-group-item">Color : Red</li>
</ul>
  				</div>
  
			</div>
            </div>

            <div class="col-lg-4">
            	<button type="button" class="btn btn-success"><a href="cart.jsp">Add to Cart</a></button><br></br>
            	<h3> $900</h3>
				
				<button type="button" class="btn btn-primary">Wish List</button><br></br>
            </div>
           
   </div>
   <div class="row"></div></br>
   <div class="row">
   		<div class="col-lg-6">
   				<div class="panel panel-primary">
   					<div class="panel-heading">
    			<h3 class="panel-title">Technical Specifications</h3>
  				</div>
  				<div class="panel-body">
    				<ul class="list-group">
  <li class="list-group-item">Size : 15'</li>
  <li class="list-group-item">Processor : i7</li>
  <li class="list-group-item">Ram : 8GB</li>
</ul>
  				</div>
  
			</div>
   		</div>

<div class="col-lg-6">
   				<div class="panel panel-primary">
   					<div class="panel-heading">
    			<h3 class="panel-title">Review</h3>
  				</div>
  				<div class="panel-body">
    				<form class="navbar-form navbar-left" role="search">
  					<div class="form-group">
  						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    Rating <span class="caret"></span>
  </button>
  						<ul class="dropdown-menu">
    <li><a href="#">1</a></li>
    <li><a href="#">2</a></li>
    <li><a href="#">3</a></li>
    
  </ul></br>
  Review text
    					<textarea type="text" class="form-control" placeholder="Search"></textarea>
  						</div></br>
  						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
  				</div>
  
			</div>
   		</div>

   </div>



</div>
	   
	
	    </section>
        
   		</div>

</body>
<%@include file="footer.jsp" %>