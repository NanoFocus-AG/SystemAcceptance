<!--   EvalAlgoName=grooveA2 -->



||
|-:|
|![](logo.png)|

### Depth



|||||
|-|-|-|-|
|System: |  CM |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type|   CM explorer| Certificate number: |@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@|||
|Obj.Number:| @PARAM{"Name":"LensSerial"}@|||
|Standard: |@PARAM{"Name":"Tiefeneinstellnormal"}@|||

 


|||
|:-:|:-:|
|@IMAGE{"Name":"Profile","Topo":1,"Width":450}@|@IMAGE{"Name":"Height","Topo":1,"Width":250}@

 


### Evaluation

||unit|nominal value|target value| tolerance +/-| status |
|-|-|-|-|-|-|
|Depth | µm| @PARAM{"Name":"Soll","Precision":4}@|  @PARAM{"Name":"d","Precision":3}@|  @PARAM{"Name":"delta_Tiefe","Precision":3}@| <span id="control"> Ok</span>|
 

 



__Unit location:__ @PARAM{"Name":"Location"}@

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@


|||||||
|-|-|-|-|-|-|
||unit|nominal value|average value| standard deviation| status |
|Depth | µm| @PARAM{"Name":"Soll","Precision":4}@|  <span id="average"> </span>|  <span id="sigma"> </span>| <span id="control_repeat"> Ok</span>|
 



<div id="sumresults">  </div>

 
<script src="../../SystemAcceptance.js"> </script>

<script>

var PARAM = @PJSON{"Set":0}@;
 


var value =   @PARAM{"Name":"d","Precision":3}@;
var nominal = @PARAM{"Name":"Soll","Precision":6}@;
var tolerance = @PARAM{"Name":"delta_Tiefe","Precision":5}@; 

var status = checkResult(value, nominal, tolerance);

document.getElementById("control").innerHTML = status;


var key = document.title;


var length = addDataToStorage(PARAM);

  
let table = document.createElement("table");
var row = null;
var head = table.insertRow();
head.insertCell().textContent = "";
head.insertCell().textContent = "";

 
var ak_prev =0.0;
var ak =0.0;
var average =0.0;

var sigma =0.0;
var sigma_prev =0.0;


for(let i = 0; i<length;++i)
{
    
	var data = JSON.parse(sessionStorage.getItem(key+i.toString()));
	
	row = table.insertRow();   
  row.insertCell().textContent =  i.toString();      
  row.insertCell().textContent =  data["d"].value.toPrecision(5);
	
	average += data["d"].value;
    
   if(i >0)
   {
    ak = ak_prev + (data["d"].value - ak_prev)/i;
    
      sigma = sigma_prev +  (data["d"].value - ak_prev)*(data["d"].value - ak);
      sigma_prev = sigma;
      ak_prev = ak;
   }	 
   else
   {
    ak_prev = data["d"].value;
	ak = data["d"].value;
   }
}

// insert row for average into table
 row = table.insertRow();   
 row.insertCell().textContent =  "average";      
 if(length >0 ) 
 {
  row.insertCell().textContent =  ak.toPrecision(5);
 }
 
 
 // insert row for sigma  into table
 row = table.insertRow();   
 row.insertCell().textContent =  "standard deviation";      
 var sig =0.0;
 if(length >0 ) 
 {
  sig = Math.sqrt(sigma/length);
  row.insertCell().textContent =   (Math.sqrt(sigma/length)).toPrecision(5);
 }


document.getElementById("average").innerHTML = ak.toPrecision(5);;
document.getElementById("sigma").innerHTML =sig.toPrecision(5);;


	
// Adding the entire table to the   tag
document.getElementById("sumresults").appendChild(table);


let btn = document.createElement("button");
btn.id ="b1";
btn.innerHTML = "Reset Table";
btn.onclick = function () {
	 
	 
  sessionStorage.setItem(key,-1);
  window.location.reload(true);
};

document.getElementById("sumresults").appendChild(btn);




storeResults(value,nominal,status, "")

 
</script>

 