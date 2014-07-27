<html>

<body>


	<h1>${question}</h1>
    <h1>${answers}</h1>

    <h1>Generate MCQ's</h1>

 <h2>Enter your question</h2>
    <form action="/test">
        <input type="text" name="question" id="question">
        <input type="submit">


        <h2>Enter your answers</h2>

        <ol><li>answer 1 : <input type="radio" name="answers"></li>
            <li>answer 2 : <input type="radio" name="answers"> </li>
            <li>answer 3 : <input type="radio" name="answers"> </li>
            <li>answer 4 : <input type="radio" name="answers"> </li></ol>
    </form>

<script>

 displayReturned= function(data){
   alert(data);
 }

</script>

</body>
</html>