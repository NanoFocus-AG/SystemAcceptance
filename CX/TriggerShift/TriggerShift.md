<!--   EvalAlgoName=NFTriggerShiftEdgeDetection -->



||
|-:|
|![](logo.png)|

## Trigger Shift 


|||||
|-|-|-|-|
|System: |  CX |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type|   CX| Certificate number: |@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@  @PARAM{"Name":"Typ/Type","Precision":12}@ |||
| |  |||
|Standard: |@PARAM{"Name":"Rauhnormal","Precision":12}@|||

 
### Terms of measurement 

||||
|-|-|-|
|Distance|@PARAM{"Name":"LengthX","Precision":8}@|  µm|
|Resolution|@PARAM{"Name":"DeltaX"}@ |µm|
|Frequency| @PARAM{"Name":"Frequency"}@ |Hz|
 
---

|| 
|:-:|
|@IMAGE{"Name":"Height","Topo":0,"Width":850}@|
 

 

 
| Resolution [µm] | Speed  [mm/s] |Trigger shift [µm]|  Trigger delay [s]|
|-|-|-|-|
| @PARAM{"Name":"DeltaX"}@  |<span id="v"> </span>  |@PARAM{"Name":"shift"}@ | <span id="t"> </span>|



---

<div id="sumresults">  </div>




<script src="../../SystemAcceptance.js"> </script>
<script>

var PARAM = @PJSON{"Set":0}@;
var MPARAM = @PJSON{"Set":5}@;
var v = @PARAM{"Name":"DeltaX"}@*0.001  * @PARAM{"Name":"Frequency"}@;
document.getElementById("v").innerHTML = v;

var t = @PARAM{"Name":"shift"}@*0.001 / (@PARAM{"Name":"DeltaX"}@*0.001 *@PARAM{"Name":"Frequency"}@); 
document.getElementById("t").innerHTML = t;


var key = document.title;


var length = addDataToStorage(PARAM,key);

var l2 =  addDataToStorage(MPARAM,key+"M");
  
let table = document.createElement("table");
var row = null;
var head = table.insertRow();
head.insertCell().textContent = "";
head.insertCell().textContent = "";



for(let i = 0; i<length;++i)
{
    
 var data = JSON.parse(sessionStorage.getItem(key+i.toString()));
	
 var mdata = JSON.parse(sessionStorage.getItem((key +"M")+i.toString()));
 row = table.insertRow();   
 row.insertCell().textContent =  i.toString();      
 row.insertCell().textContent =  data["shift"].value.toPrecision(5);
	
}
	
	
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



 
</script>