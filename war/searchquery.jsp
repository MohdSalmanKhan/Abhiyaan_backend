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

	
	</style>
    <body background="S.jpg">
        <center>
		<div>
			<fieldset>
			<legend><h3><b>Search Images</b></h3></legend>
			
        <form action="/search" method="post" >
            <input type="text" name="SearchBox" placeholder="Enter location to search images">
			<input type="submit" value="Submit">
        </form>
    </fieldset>
		</div>
        </center>
    </body>
</html>