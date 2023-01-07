<!--   EvalAlgoName=NF_NED_MScan_Abnahme_Steps_LS -->


||
|-:|
|![](logo.png)|


## Step measurement 

|||||
|-|-|-|-|
|System: |MarSurf CL |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type| MarSurf CL | Certificate number: |600410-44854376|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: | @PARAM{"Name":"Typ/Type","Precision":12}@ |||
| |  |||
|Standard: |@PARAM{"Name":"Stufennormal","Precision":12}@|||

||
|:-:|
| ![](Steps_LS.svg)| 

 
### Evaluation

||||||||
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit   |nominal  | tolerance  +/- | actual | status|
| Wt1   | µm | @PARAM{"Name":"T1","Precision":5}@ |    @PARAM{"Name":"Groove Tolerance","Precision":12}@|  @PARAM{"Name":"StepHeight1","Precision":5}@ | <span id="StepHeight1control"> </span>|
| Wt2   | µm| @PARAM{"Name":"T2","Precision":5}@  |    @PARAM{"Name":"Groove Tolerance","Precision":12}@ |  @PARAM{"Name":"StepHeight2","Precision":5}@ | <span id="StepHeight2control"> </span>|
| Wt3   | µm| @PARAM{"Name":"T3","Precision":5}@  |    @PARAM{"Name":"Groove Tolerance","Precision":12}@ |  @PARAM{"Name":"StepHeight3","Precision":5}@ | <span id="StepHeight3control"> </span>|
 
 

__Unit location:__ Oberhausen

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@
 

<div id="sumresults">  </div>

<script>

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
head.insertCell().textContent = "";
head.insertCell().textContent = "";

var average =0.0;
for(let i = 0; i<length;++i)
{
    
	var data = JSON.parse(sessionStorage.getItem(key+i.toString()));
	
	row = table.insertRow();  // DOM method for creating table rows
    row.insertCell().textContent =  i.toString();      
    row.insertCell().textContent =  data["StepHeight2"].value;
	
	average += data["StepHeight2"].value;
   
	 

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

</script>

 