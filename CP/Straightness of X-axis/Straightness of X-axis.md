<!--   EvalAlgoName=NF_NED_MScan_Abnahme_GX_PS -->

||
|-:|
|![](logo.png)|

## Straightness of X-axis  


 


|||||
|-|-|-|-|
|System: |  CP |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type|   CP | Certificate number: |@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@  @PARAM{"Name":"Typ/Type","Precision":12}@ |||
| |  |||
|Stage: |  @PARAM{"Name":"Typ der Achse"}@ |||
|Standard: |@PARAM{"Name":"Ebenheitsnormal","Precision":12}@|||

 

 || 
|:-:|
|![](StraightnessX_PS.svg)|


### Evaluation

||||||
|:-:|:-:|:-:|:-:|:-:|
| |unit  |nominal   |   actual | status|
| Straightness    | µm | @PARAM{"Name":"Straightness","Precision":6}@  |   @PARAM{"Name":"Wt","Precision":3}@ | <span id="controlWt"> Ok</span>|
 

__Unit location:__ Oberhausen

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@


 

<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var META = @MJSON{"Set":0}@;
 


var value =   @PARAM{"Name":"Wt","Precision":3}@;
var nominal = @PARAM{"Name":"Straightness","Precision":6}@;
var status = ""; 
 
if(  value < nominal)
{
  status = "Ok";
}
else
{
  status = "not Ok";
}

document.getElementById("controlWt").innerHTML = status;

var Result = {"value":0,"nominal":0,"status":"","timestamp":0};

Result["value"] = value;
Result["nominal"] = nominal;
Result["status"] = status;
Result["timestamp"] = Date.now();
sessionStorage.setItem(document.title+"Result", JSON.stringify(Result));

</script>

 