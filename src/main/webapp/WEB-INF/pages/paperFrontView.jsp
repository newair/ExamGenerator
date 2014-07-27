<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: newair
  Date: 7/26/14
  Time: 4:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Enter Paper</title>
    <script
            src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
    <script>
        $(document).ready(function() {
            //add more file components if Add is clicked
            $('#addFile').click(function() {
                var fileIndex = $('#fileTable tr').children().length - 1;
                $('#fileTable').append(
                        '<tr><td>'+
                                '   <input type="file" name="files['+ fileIndex +']" />'+
                                '</td></tr>');
            });

        });
    </script>
</head>
<body>

<h1>Create Question</h1>
<%--<form:form method="post" action="addContact.html">

    <table>
        <tr>
            <td><form:label path="papername">Paper Name</form:label></td>
            <td><form:input path="paperName" /></td>
        </tr>
        <tr>
            <td><form:label path="noofquestions">Number of Questions</form:label></td>
            <td><form:input path="noOfQuestions" /></td>

        </tr>

    </table>

</form:form>--%>

<input id="addFile" type="button" value="Add File" />
<form:form method="post" action="save.html"
           modelAttribute="uploadForm" enctype="multipart/form-data">

    <p>Select files to upload. Press Add button to add more file inputs.</p>


    <table id="fileTable">

        <tr>
            <td><input name="files[0]" type="file" /></td>
        </tr>

        <tr>
            <td><input name="files[0]" type="file" /></td>
        </tr>
        <tr>
            <td><input name="files[1]" type="file" /></td>
        </tr>
    </table>
    <br/><input type="submit" value="Upload" />
</form:form>

</body>
</html>