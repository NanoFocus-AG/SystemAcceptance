<!--   EvalAlgoName=grooveA2 -->



||
|-:|
|![](logo.png)|

## Depth



|||||
|-|-|-|-|
|System: |  WI |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type|   WI explorer| Certificate number: |@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@|||
|Obj.Number:| @PARAM{"Name":"LensSerial"}@|||
|Standard: |@PARAM{"Name":"Tiefeneinstellnormal","Precision":12}@|||

 


||
|:-:|
|@IMAGE{"Name":"Height","Topo":1,"Width":300}@|
|@IMAGE{"Name":"Profile","Topo":1,"Width":700}@|

 


### Evaluation

|||||||
|-|-|-|-|-|-|
|unit|nominal value|target value| tolerance +/-| status |
| µm| @PARAM{"Name":"Soll","Precision":12}@|  @PARAM{"Name":"d","Precision":5}@|  @PARAM{"Name":"delta_Tiefe","Precision":5}@| <span id="control"> Ok</span>|
 

__Unit location:__ @PARAM{"Name":"Location"}@

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@

--- 


<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var META = @MJSON{"Set":0}@;


var value =   @PARAM{"Name":"d","Precision":3}@;
var nominal = @PARAM{"Name":"Soll","Precision":6}@;
var tolerance = @PARAM{"Name":"delta_Tiefe","Precision":5}@; 
var status = ""; 



if(  value < nominal-tolerance || value > nominal+tolerance) 
{
  status = "not Ok";
} 
else
{
  status = "Ok";
}
document.getElementById("control").innerHTML = status;



var key = document.title;
var length = 0;
 
if(sessionStorage.getItem(key)) 
{
   length =  parseInt(sessionStorage.getItem(key));
 
} 

sessionStorage.setItem(key+length, JSON.stringify(PARAM));

length = length+1;
sessionStorage.setItem(key,length);



let table = document.createElement("table");
var row = null;
var head = table.insertRow();
head.insertCell().textContent = "";
head.insertCell().textContent = "";

var average =0.0;
for(let i = 0; i<length;++i)
{
    
	var data = JSON.parse(sessionStorage.getItem(key+i.toString()));
	
	row = table.insertRow();  // DOM method for creating table rows
    row.insertCell().textContent =  i.toString();      
    row.insertCell().textContent =  data["d"].value;
	
	average += data["d"].value;
   
	 
}
 
 row = table.insertRow();  // DOM method for creating table rows
 row.insertCell().textContent =  "Mittelwert";      
 if(length >0 ) row.insertCell().textContent =  (average/length).toFixed(6);
	
// Adding the entire table to the   tag
document.getElementById("sumresults").appendChild(table);


let btn = document.createElement("button");
btn.id ="b1";
btn.innerHTML = "Reset Table";
btn.onclick = function () {
	 
  sessionStorage.setItem(key,0);
  window.location.reload(true);
};

document.getElementById("sumresults").appendChild(btn);


 var Result = {"value":0,"nominal":0,"status":"","timestamp":0};

Result["value"] = value ;
Result["nominal"] = nominal ;
Result["status"] = status ;
Result["timestamp"] = Date.now();
sessionStorage.setItem(document.title+"Result", JSON.stringify(Result));


</script>

 