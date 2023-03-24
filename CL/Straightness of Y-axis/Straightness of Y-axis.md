<!--   EvalAlgoName=NF_NED_MScan_Abnahme_GX_LS -->

||
|-:|
|![](logo.png)|

## Straightness of Y-axis 


 


|||||
|-|-|-|-|
|System: |  CL |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type|   CL | Certificate number: |@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@  @PARAM{"Name":"Typ/Type","Precision":12}@ |||
| |  |||
|Stage: |  @PARAM{"Name":"Typ der Achse"}@ |||
|Standard: |@PARAM{"Name":"Ebenheitsnormal","Precision":12}@|||

### Terms of measurement 

||||
|-|-|-|
|Distance|@PARAM{"Name":"LengthX","Precision":8}@|  µm|
|Resolution|@PARAM{"Name":"DeltaX"}@ |µm|
|Frequency| @PARAM{"Name":"Frequency"}@ |Hz|
 
 

|| 
|:-:|
|![](StraightnessX_LS.svg)|


### Evaluation

|||||||
|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit   |nominal   |   actual  | status|
| Straightness    | µm | @PARAM{"Name":"Straightness","Precision":6}@  |   @PARAM{"Name":"Wt","Precision":3}@ | <span id="control"> Ok</span>|
 

__Unit location:__ @PARAM{"Name":"Location"}@

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@


 

<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var META = @MJSON{"Set":0}@;

 
var value =   @PARAM{"Name":"Wt","Precision":3}@;
var nominal = @PARAM{"Name":"Straightness","Precision":6}@;
var status ="";

if(  value < nominal)
{
 
 status ="OK";
}
else
{
  
 
 status = "not OK";
}
 document.getElementById("control").innerHTML = status;



var Result = {"value":0,"nominal":0,"status":"","timestamp":0};

Result["value"] = value;
Result["nominal"] = nominal;
Result["status"] = status;
Result["timestamp"] = Date.now();
sessionStorage.setItem(document.title+"Result", JSON.stringify(Result));

 

</script>

 