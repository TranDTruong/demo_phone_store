<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Shoping Center</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/changes.css">
</head>
<body style="background-color: #E6F9E6;">
	<!-- Start the footer Contacts -->
	<!-- <a name="contact"></a> -->
	<style>
		h3 {
		font-size: 30px;
		}
		
		p {
		font-size: 22px;
		}
		
		.col-md-4 {
		
		}
		
		.btn-wide {
        	width: 100%;
    	}
	</style>
	<div class="container-fluid"
		style="background-color: #454545; color: white; margin-top: 200px;">
		<div class="container">
			<h3 class="text-center">Contact</h3>
			<p class="text-center">
				<em>We are cellphoneS and would appreciate it if you left us a review.</em>
			</p>
			<div class="row test">
				<div class="col-md-4" >
					<p>
					<span class="glyphicon glyphicon-home"></span> Telephone, CellPhoneS
					</p>
					<p>
						<span class="glyphicon glyphicon-map-marker"></span> Nguyen Xa, Nam Tu Liem, Ha Noi
					</p>
					<p>
						<span class="glyphicon glyphicon-phone"></span> Phone: +84 936271222
					</p>
					<p>
						<span class="glyphicon glyphicon-envelope"></span> Email: NTruong@gmail.com
					</p>
				</div>
				<div class="col-md-8">
					<form action="fansMessage" method="post">
						<div class="row">
							<div class="col-sm-6 form-group">
								<input class="form-control" id="name" name="name"
									placeholder="Name" type="text" required>
							</div>
							<div class="col-sm-6 form-group">
								<input class="form-control" id="email" name="email"
									placeholder="Email" type="email" required>
							</div>
						</div>
						<textarea class="form-control" id="comments" name="comments"
							placeholder="Comment" rows="5" required></textarea>
						<div class="row">
							<div class="col-md-12 form-group">
								<button class="btn pull-right btn-wide" type="submit">Send</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
		<div class="copy">
	        <div class="row">
	            <div class="col-sm-12 text-center">
	                <p>
	                    <span class="text-white">
	                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
	                        Copyright &copy;
	                        <script>
	                            document.write(new Date().getFullYear());
	                        </script> All rights reserved | Design by CELLPHONES
	                    </span>
	                </p>
	            </div>
	        </div>
	    </div>
	</div>

</body>
</html>