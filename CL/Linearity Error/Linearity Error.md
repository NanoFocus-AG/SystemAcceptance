<!--   EvalAlgoName=NF_NED_MScan_Abnahme_LIN_LS -->


||
|-:|
|![](logo.png)|

 
 

## Linearity Error 

 


|||||
|-|-|-|-|
|System: |  CL |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type|   CL | Certificate number: |@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@  /  @PARAM{"Name":"Typ/Type","Precision":12}@ |||
| |  |||
|Standard: |@PARAM{"Name":"Ebenheitsnormal","Precision":12}@|||

### Terms of measurement 

|||
|-|-|
|Distance| <span id="distance"> </span>  mm|
|Resolution|@PARAM{"Name":"DeltaX"}@ µm|
|Frequency| @PARAM{"Name":"Frequency"}@ Hz|
 

 || 
|:-:|
|![](Linearity_LS.svg)|


### Evaluation

* Z-Measuring range :   <span id="zrange"> </span> mm

||||||||
|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit   |nominal   |  actual  | status|
| Lin. Error     | µm | @PARAM{"Name":"Linearity Table + Sensor","Precision":6}@ |  @PARAM{"Name":"Wt","Precision":3}@ | <span id="control">  </span>|
 

__Unit location:__ Oberhausen

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@


 

<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var META = @MJSON{"Set":0}@;
 
 

var value =   @PARAM{"Name":"Wt","Precision":3}@;
var nominal = @PARAM{"Name":"Linearity Table + Sensor","Precision":6}@;
var status =""; 

if(value < nominal) 
{
document.getElementById("control").innerHTML = "Ok";
status ="Ok";
}
else
{
document.getElementById("control").innerHTML = "not Ok";
status ="not OK";
}



document.getElementById("zrange").innerHTML = (@PARAM{"Name":"Maximum Height"}@ - @PARAM{"Name":"Minimum Height"}@) /1000;

document.getElementById("distance").innerHTML = @PARAM{"Name":"LengthX","Precision":5}@ / 1000;






var Result = {"value":0,"nominal":0,"status":"","timestamp":0};

Result["value"] = value;
Result["nominal"] = nominal;
Result["status"] = status;
Result["timestamp"] = Date.now();
sessionStorage.setItem(document.title+"Result", JSON.stringify(Result));




</script>


 