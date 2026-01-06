<!--   EvalAlgoName=NFCalculateGrooveA2 -->



||
|-:|
|![](logo.png)|

### Depth



|||||
|-|-|-|-|
|__System:__|  @PARAM{"Name":"SystemTypeName"}@ |__Calibration instruction:__| VDI/VDE 2655 Part 1.2|
|__Type__|   @PARAM{"Name":"Model"}@|__Certificate number:__|@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|__System number:__| @PARAM{"Name":"Serial"}@|__Standard:__|@PARAM{"Name":"Tiefeneinstellnormal","Precision":12}@|
|__Customer:__| @PARAM{"Name":"Manufacturer"}@|__Unit location:__ | @PARAM{"Name":"Location"}@|
|__Lens:__|@PARAM{"Name":"LensSerialNumber"}@|__Date:__ | @YEAR@-@MONTH@-@DAY@ |
|||||
|||||
|||||

 


|||
|:-:|:-:|
|@IMAGE{"Name":"Height","Topo":1,"Width":220}@|@IMAGE{"Name":"Profile","Topo":1,"Width":500}@|

 


### Evaluation

//|||||||
//|-|-|-|-|-|-|
//|unit|nominal value|target value| | tolerance +/-| result|
//| µm| @PARAM{"Name":"Soll","Precision":3}@|  @PARAM{"Name":"d:","Precision":3}@||| <spban id="control"> Ok</span>|
  



<div id="sumresults">  </div>
<script src="../../SystemAcceptance.js"> </script>
<script>
function runEvaluation(){
var PARAM = @PJSON{"Set":0}@;
var META = @MJSON{"Set":0}@;

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
const values = [];
var variance = 0.0;
var stddev = 0.0;
var mean = 0.0;
var range = 0.0;
var tolerance = @PARAM{"Name":"delta_Tiefe","Precision":5}@;
var nominal = @PARAM{"Name":"Soll","Precision":3}@;

head.insertCell().textContent = "";
head.insertCell().textContent = "";

var average =0.0;
for(let i = 0; i<length;++i)
{
    
	var data = JSON.parse(sessionStorage.getItem(key+i.toString()));
	
	//row = table.insertRow();  // DOM method for creating table rows
    //row.insertCell().textContent =  i.toString();      
    //row.insertCell().textContent =  data["d:"].value.toFixed(3);
	
	average += data["d:"].value;
	values[i]= data["d:"].value;
	 
}
mean = average / length;
 //row = table.insertRow();  // DOM method for creating table rows
 //row.insertCell().textContent =  "Mittelwert";      
 //if(length >0 ) row.insertCell().textContent =  (mean).toFixed(3);

for (i = 0; i<length;++i)

{
	variance += (values[i]-mean)*(values[i]-mean);
}

stddev = Math.sqrt(variance);
range = Math.max(...values) - Math.min(...values);
var result = checkResult(mean, nominal, tolerance);
//var result = checkResult((mean*-1), nominal, tolerance);

row = table.insertRow();  // DOM method for creating table rows
row.insertCell().textContent =  "Unit";
row.insertCell().textContent =  "Nominal";
row.insertCell().textContent =  "Measured";
row.insertCell().textContent =  "Tolerance";
row.insertCell().textContent =  "StdDev";
row.insertCell().textContent =  "Range";
row.insertCell().textContent =  "# of Measurements";
row.insertCell().textContent =  "Result";


row = table.insertRow();  // DOM method for creating table rows
row.insertCell().textContent =  "µm";
row.insertCell().textContent =  nominal.toFixed(3);
row.insertCell().textContent =  mean.toFixed(3);
row.insertCell().textContent =  tolerance.toFixed(3);
row.insertCell().textContent =  stddev.toFixed(6);
row.insertCell().textContent =  range.toFixed(6);
row.insertCell().textContent =  i;
row.insertCell().textContent =  result;


      

//row = table.insertRow();  // DOM method for creating table rows
//row.insertCell().textContent =  "Variance";      
//if(length >0 ) row.insertCell().textContent =  variance.toFixed(6);

//row = table.insertRow();  // DOM method for creating table rows
//row.insertCell().textContent =  "Stddev";      
//if(length >0 ) row.insertCell().textContent =  stddev.toFixed(6);

//row = table.insertRow();  // DOM method for creating table rows
//row.insertCell().textContent =  "Stddev";      
//if(length >0 ) row.insertCell().textContent =  range.toFixed(6);
 

// Adding the entire table to the   tag
document.getElementById("sumresults").appendChild(table);


//let btn = document.createElement("button");
//btn.id ="b1";
//btn.innerHTML = "Reset Table";
//btn.onclick = function () {


  //sessionStorage.setItem(key,0);
  //window.location.reload(true);
//};

//document.getElementById("sumresults").appendChild(btn);


let btn2 = document.createElement("button");
btn2.id ="b1";
btn2.innerHTML = "Clear Values";
btn2.onclick = function () {
	values.length = 0;
	mean = 0.0;
	stddev = 0.0;
	range = 0.0;
	table.deleteRow(2);
  sessionStorage.clear();
};
var Result = {"value":0,"nominal":0,"status":"","timestamp":0};
Result["value"] = mean.toFixed(3) ;
Result["nominal"] = nominal.toFixed(3) ;
Result["status"] = result ;
Result["timestamp"] = Date.now();
document.getElementById("sumresults").appendChild(btn2);
sessionStorage.setItem(document.title+"Depth A2 ", JSON.stringify(Result));
}
</script>



--- 