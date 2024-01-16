<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.shashi.beans.ProductBean" %>
<%@ page import="com.shashi.beans.UserBean" %>
<%@ page import="com.shashi.service.impl.ProductServiceImpl" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page
	import="com.shashi.service.impl.*, com.shashi.service.*,com.shashi.beans.*,java.util.*,javax.servlet.ServletOutputStream,java.io.*"%>

    <!DOCTYPE html>
<html>
<head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/changes.css">
<script
    src="https://ajax.googleapis.com/libs/jquery/3.4.1/jquery.min.js"></script>
<script
    src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<body style="background-color: #ffffff;">
    <div class="container">
        <form>
            <fieldset>
                <legend>Comentários</legend>
                <div class="row">
                    <p>
                        <textarea class="form-control" id="comment" name="comment" rows="5"
                        placeholder="Comment"
                        ></textarea>

                    </p>
                    <p>
                        <input type="file" alt="Submit" id="fileinsertion">
                    </p>
                    <p>
                        <input type="button" class="btn btn-success" value="Submit" onclick="saveComment('<%= userName %>')">
                    </p>
                </div>
            </fieldset>
            <div class="row">
                <div id="answer">
                </div>
            </div>
        </form>
        
    </div>
    
    <script>
        function saveComment(userName) {
            var comment = document.getElementById("comment").value;
            var fileInput = document.getElementById('fileinsertion');
            var prodID = '<%= productId %>';
            var key = prodID + "_comments";
            
            if (comment) {
                
                if (fileInput.files.length === 0) {
                    // Não há arquivo de imagem, apenas salvar o comentário
                    var existingComments = JSON.parse(localStorage.getItem(key)) || [];
                    existingComments.push({ userName: userName, comment: comment });
                    localStorage.setItem(key, JSON.stringify(existingComments));
                    displayComments(prodID);
                } else {
                    // Há um arquivo de imagem
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        var imageBase64 = e.target.result; // A imagem em formato base64
                        var existingComments = JSON.parse(localStorage.getItem(key)) || [];
                        existingComments.push({ userName: userName, comment: comment, image: imageBase64 });
                        localStorage.setItem(key, JSON.stringify(existingComments));
                        displayComments(prodID);
                    };
                    
                    reader.readAsDataURL(fileInput.files[0]);
                }
            }
            else{
                if(fileInput.files.length>0){
                    var reader = new FileReader();
                    reader.onload = function (e) {
                        var imageBase64 = e.target.result; // A imagem em formato base64
                        var existingComments = JSON.parse(localStorage.getItem(key)) || [];
                        existingComments.push({ userName: userName, comment: comment, image: imageBase64 });
                        localStorage.setItem(key, JSON.stringify(existingComments));
                        displayComments(prodID);
                    };
                    
                    reader.readAsDataURL(fileInput.files[0]); 
                }
            }
        }

        function displayComments(prodID) {
            var answerDiv = $("#answer");
            answerDiv.css("marginTop", "20px");

            var key = prodID + "_comments";
            var existingComments = JSON.parse(localStorage.getItem(key)) || [];

            answerDiv.html('');

            existingComments.forEach(function (entry) {
                var usernameDiv = $("<div>").css({
                    fontWeight: "bold",
                    marginTop: "20px"
                }).text(entry.userName);
                usernameDiv.css("margin-bottom", "10px");
                answerDiv.append(usernameDiv);

            if (entry.image !== null && !entry.comment) {
                var image = $("<img>").attr("src", entry.image);
                answerDiv.append(image);
                return;
            }

                var commentDiv = $("<div>").css({
                    padding: "10px",
                    marginTop: "5px",
                    border: "0.1px solid #ccc",
                    borderRadius: "5px",
                    height: "auto",
                    overflow: "auto",
                    marginBottom: "20px"
                });


                commentDiv.html(entry.comment);

                answerDiv.append(commentDiv);

                if (entry.image !== null) {
                    var image = $("<img>").attr("src", entry.image);
                    answerDiv.append(image);
                    return;
                }
            });
        }

        // se for preciso limpar localStorage

        // function limparDadosAntigos() {
        //     localStorage.clear();
        // }

        // limparDadosAntigos();



        displayComments('<%= userName %>', '<%= productId %>');
    </script>
    <script>

        document.addEventListener("DOMContentLoaded", function() {
            var prodID = '<%= productId %>'; 
            displayComments(prodID);
        });
    </script>

</body>
</html>
