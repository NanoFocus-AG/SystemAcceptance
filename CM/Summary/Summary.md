<!--   EvalAlgoName=NFTopoInfo -->
||
|-:|
|![](logo.png)|

## Measure Protocol

|||||
|-|-|-|-|
|__System:__|  @PARAM{"Name":"SystemTypeName"}@ |__Calibration instruction:__| VDI/VDE 2655 Part 1.2|
|__Type__|   @PARAM{"Name":"Model"}@|__Certificate number:__|@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|__System number:__| @PARAM{"Name":"Serial"}@|__Unit location:__ | @PARAM{"Name":"Location"}@|
|__Customer:__| @PARAM{"Name":"Manufacturer"}@|__Date:__ | @YEAR@-@MONTH@-@DAY@ |
|__Lens:__|@PARAM{"Name":"LensSerialNumber"}@|||
|||||
|||||
|||||

---
## Summary



<span id="output">
</span>




<div id="resultsArea">
</div>


<script>

let table = document.createElement("table");
table.id = "tableResults";

var row = null;
var head = table.insertRow();
head.insertCell().textContent = "Result Type";
head.insertCell().textContent = "nominal value";
head.insertCell().textContent = "measured";
head.insertCell().textContent = "status";

 
 
for (i = 0; i < sessionStorage.length; i++) {
  
  x = sessionStorage.key(i);
  
  if(x.length > 3)
  {
   var data = JSON.parse(sessionStorage.getItem(x));
   
   
     row = table.insertRow();  // DOM method for creating table rows
    
	 var desc = (x.split("_"));
	 if(desc.length == 3) 
	 {
		row.insertCell().textContent =  desc[0] + " "  +  desc[2] ;
     }
	 else
	 {
	 row.insertCell().textContent =  desc[0] + " " ;
	 }
	 row.insertCell().textContent =  data["nominal"];      
     row.insertCell().textContent =  data["value"];
	 row.insertCell().textContent =  data["status"];
	 
	 
   
  }
}

// Adding the entire table to the   tag
document.getElementById("resultsArea").appendChild(table);



</script>