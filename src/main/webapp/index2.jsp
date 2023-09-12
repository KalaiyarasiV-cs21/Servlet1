<html>
    <body>
        <h2>Adding Two Numbers via JavaScript AJAX</h2>
        
            <input type="nuber" id="n1">
            <input type="nuber" id="n2">
            <button onclick="addNumbers()"> Add </button>

        <div id="result">The result will be displayed here without page reload</div>
    </body>
</html>

<script>

    function addNumbers() {
        vardata="n1"=+document.getElementById("n1").value + "&n2="+document.getElmentById("n2").value;
        const xhttp = new XMLHttpRequest();
        xhttp.onload = function() {
            document.getElementById("result").innerHTML = this.responseText;
        }
        xhttp.open("POST",add.do");
        xhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        xhttp.send(data);
    }

</script>
