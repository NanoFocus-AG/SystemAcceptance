<!--   EvalAlgoName=Lateralnormal -->

||
|-:|
|![](logo.png)|

## Lateral X

 


|||||
|-|-|-|-|
|System: |  WI |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type|   WI explorer| Certificate number: |600410-44854376|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@|||
|Obj.Number:| 20X-M1064|||
|Standard: |@PARAM{"Name":"Lateralnormal","Precision":12}@|||

 

||
|:-:|
|@IMAGE{"Name":"Height","Topo":2,"Width":300}@|
|@IMAGE{"Name":"Profile","Topo":1,"Width":600}@|

 
 
### Evaluation

 
||||||||
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|     |unit|nominal value | tolerance +/- | actual value | result|
|lateral distance| µm|   @PARAM{"Name":"Soll","Set":1}@   |   @PARAM{"Name":"delta_AbbMaßstab","Precision":12}@ | @PARAM{"Name":"Sum Gap Lateral Width","Precision":5}@  | <span id="control"> Ok</span>|
 

__Unit location:__ Oberhausen

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@



<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var SENSOR = @PJSON{"Set":2}@;
var STANDARD =@PJSON{"Set":1}@;
var META = @MJSON{"Set":0}@;

 var Result = {"value":0,"nominal":0,"status":"","timestamp":0};

var value =   @PARAM{"Name":"Sum Gap Lateral Width","Precision":3}@;
var nominal = @PARAM{"Name":"Soll","Precision":6}@;
var tolerance = @PARAM{"Name":"delta_AbbMaßstab","Precision":12}@;
var status = ""; 

 
if(  value < nominal-tolerance || value > nominal+tolerance) 
{
  status = "not Ok";
} 
else
{
  status = "Ok ";
}
document.getElementById("control").innerHTML = status;

Result["value"] = value ;
Result["nominal"] = nominal ;
Result["status"] = status ;
Result["timestamp"] = Date.now();
sessionStorage.setItem(document.title+"Result", JSON.stringify(Result));


</script>

 