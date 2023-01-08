<!--   EvalAlgoName=Ausleuchtung -->

||
|-:|
|![](logo.png)|

## Lighting

 


|||||
|-|-|-|-|
|System: |  CM |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type|   CM explorer| Certificate number: |600410-44854376|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@|||
|Obj.Number:| 20X-M1064|||
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
 

__Unit location:__ Oberhausen

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

 