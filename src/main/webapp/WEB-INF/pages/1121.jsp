<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
   <body>
      <form  action ="/user/profile-image/upload" method="post" enctype="multipart/form-data" id="fileUploadForm">
         <input type="file" name="files"/><br/><br/>
         <input type="submit" value="Submit" id="btnSubmit"/>
      </form>
      <span id="result"><</span>
   </body>
</html>