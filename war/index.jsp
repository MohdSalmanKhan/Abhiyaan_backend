<%@ page import="com.google.appengine.api.blobstore.BlobstoreServiceFactory" %>
<%@ page import="com.google.appengine.api.blobstore.BlobstoreService" %>

<%
    BlobstoreService blobstoreService = BlobstoreServiceFactory.getBlobstoreService();
%>


<html>
    <head>
        <title>Upload Test</title>
    </head>
    
    <style>
	body {
   		background-color: linen;
	}
	div {
    height: 200px;
    width: 400px;
    

    position: fixed;
    top: 50%;
    left: 50%;
    margin-top: -100px;
    margin-left: -200px;
}

	input[type=text] {
  border: 1px dotted #999;
  border-radius: 0;

  -webkit-appearance: none;
}

	</style>
    

    <body background="S.jpg">
        <div>
        	<fieldset>
			<legend><h3><b>Upload Your Photo Here</b></h3></legend>
        <form action="<%= blobstoreService.createUploadUrl("/UploadImage") %>" method="post" enctype="multipart/form-data">
			    <br>Location<br>        <input type="text" name="Location" placeholder="Hint: gachibowli,hyderabad"><br>
			    Rating of dirt<br>      <input type="text" name="rating" placeholder="Rate dirt out of 10 points"><br>
			    Type of dirt<br>        <input type="text" name="dirttype" placeholder="Type of dirt"><br>
			    <input type="file" name="image"><br>
			    <input type="submit" value="Submit">
			  
        </form>
    </body>
</html>