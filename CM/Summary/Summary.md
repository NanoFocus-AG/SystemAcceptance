<!--   EvalAlgoName=NFTopoInfo -->
 ||
|-:|
|![](logo.png)|

## Measure Protocol

---
## Summary


||||
|-|-|-|
|System| Mahrscan CP | @PARAM{"Name":"SerialNumber"}@ |
|Sensor| CM 08/15  | K0000000| 
|Customer|||

<span id="output">
</span>




<div id="resultsArea">
</div>


<script>

let table = document.createElement("table");
table.id = "tableResults";

var row = null;
var head = table.insertRow();
head.insertCell().textContent = "Content";
head.insertCell().textContent = "nominal value";
head.insertCell().textContent = "actual value";
head.insertCell().textContent = "status";

 
 
for (i = 0; i < sessionStorage.length; i++) {
  
  x = sessionStorage.key(i);
  
  if(x.includes("Result"))
  {
   var data = JSON.parse(sessionStorage.getItem(x));
   
   
     row = table.insertRow();  // DOM method for creating table rows
    
	 row.insertCell().textContent = (x.split("_"))[0];
     row.insertCell().textContent =  data["nominal"];      
     row.insertCell().textContent =  data["value"];
	 row.insertCell().textContent =  data["status"];
	 
	 console.log(data["timestamp"]);
   
  }
}

// Adding the entire table to the   tag
document.getElementById("resultsArea").appendChild(table);



</script>