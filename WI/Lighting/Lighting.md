<!--   EvalAlgoName=Ausleuchtung -->

||
|-:|
|![](logo.png)|

## Lighting

 


|||||
|-|-|-|-|
|System: |  WI |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type|   WI explorer| Certificate number: |@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Customer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@|||
|Obj.Number:| @PARAM{"Name":"LensSerial"}@|||
|Standard: |@PARAM{"Name":"Lateralnormal","Precision":12}@|||

 

 ||
|:-:|
|@IMAGE{"Name":"Intensity","Topo":1,"Width":400}@|
||
 
 
 
### Evaluation

|||||||
|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit|nominal value < | tolerance +/- | actual value| status|
| Homogenity   | % | @PARAM{"Name":"min_Ausleuchtung","Precision":6}@  |     |  @PARAM{"Name":"Homogenity","Precision":3}@ | <span id="control"> Ok</span>|
 

__Unit location:__ @PARAM{"Name":"Location"}@

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@

 

 
<script>

var PARAM = @PJSON{"Set":0}@;
var META = @MJSON{"Set":0}@;

 var Result = {"value":0,"nominal":0,"status":"","timestamp":0};

var value =   @PARAM{"Name":"Homogenity","Precision":3}@;
var nominal = @PARAM{"Name":"min_Ausleuchtung","Precision":6}@;
var tolerance = 0;
var status = ""; 



if(    value < nominal+tolerance) 
{
  status = "not Ok";
} 
else
{
  status = "Ok";
}
document.getElementById("control").innerHTML = status;



Result["value"] = value ;
Result["nominal"] = nominal ;
Result["status"] = status ;
Result["timestamp"] = Date.now();
sessionStorage.setItem(document.title+"Result", JSON.stringify(Result));


</script>

 