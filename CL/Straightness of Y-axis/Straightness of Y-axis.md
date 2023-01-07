<!--   EvalAlgoName=NF_NED_MScan_Abnahme_GY_LS -->


||
|-:|
|![](logo.png)|

## Straightness of Y-axis

 


|||||
|-|-|-|-|
|System: |MarSurf CL |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type| MarSurf CL | Certificate number: |600410-44854376|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@  @PARAM{"Name":"Typ/Type","Precision":12}@ |||
|| |||
|Standard: |@PARAM{"Name":"Ebenheitsnormal","Precision":12}@|||

 

 || 
|:-:|
|![](StraightnessY_PS.svg)|


### Evaluation

||||||||
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit   |nominal  |   actual  | status|
| Lin. Error   | µm | @PARAM{"Name":"Linearity Table + Sensor","Precision":6}@ |   @PARAM{"Name":"Wt","Precision":3}@ | <span id="control"> Ok</span>|
 

__Unit location:__ Oberhausen

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@


 

<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var META = @MJSON{"Set":0}@;

 
var value =   @PARAM{"Name":"Wt","Precision":3}@;
var nominal = @PARAM{"Name":"Linearity Table + Sensor","Precision":6}@;
var status;

if(  value < nominal)
{
 document.getElementById("control").innerHTML = "Ok";
 status ="OK";
}
else
{
 document.getElementById("control").innerHTML = "not Ok";
 
 status = "not OK";
}




var Result = {"value":0,"nominal":0,"status":""};

Result["value"] = value;
Result["nominal"] = nominal;
Result["status"] = status;
sessionStorage.setItem(document.title+"Result", JSON.stringify(Result));

console.log(Result["nominal"]);

</script>

 