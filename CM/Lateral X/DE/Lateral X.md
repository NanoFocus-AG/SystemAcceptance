<!--   EvalAlgoName=LateralnormalX -->

||
|-:|
|![](logo.png)|

## Lateral X

 


|||||
|-|-|-|-|
|__System:__|  CM |__Kalibrierungsanleitung:__| VDI/VDE 2655 Part 1.2|
|__Typ__|   @PARAM{"Name":"Model"}@|__Zertifikatsnummer:__|@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|__Systemnummer:__| @PARAM{"Name":"Serial"}@|__Standard:__|@PARAM{"Name":"Lateralnormal","Precision":12}@|
|__Kunde:__| @PARAM{"Name":"Manufacturer"}@|__Standort:__ | @PARAM{"Name":"Location"}@|
|__Linse:__|@PARAM{"Name":"LensSerialNumber"}@|__Datum:__ | @YEAR@-@MONTH@-@DAY@ |
|||||
|||||
|||||



 

|||
|:-:|:-:|
|@IMAGE{"Name":"Height","Topo":1,"Width":220}@|@IMAGE{"Name":"Profile","Topo":2,"Width":500}@|

 
 
### Evaluation

 
||||||||
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|                  |unit|nominal value | measured | tolerance +/- | result|
|Lateral distance| µm|   @PARAM{"Name":"Soll","Set":1}@   |    @PARAM{"Name":"Rsm","Precision":4}@  |@PARAM{"Name":"delta_AbbMaßstab","Precision":3}@ | <span id="control"> Ok</span>|
 
---



<div id="sumresults">  </div>

<script>
function runEvaluation(){
var PARAM = @PJSON{"Set":0}@;
var SENSOR = @PJSON{"Set":2}@;
var STANDARD =@PJSON{"Set":1}@;
var META = @MJSON{"Set":0}@;

 var Result = {"value":0,"nominal":0,"status":"","timestamp":0};

var value =   @PARAM{"Name":"Rsm","Precision":3}@;
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
sessionStorage.setItem(document.title+"Lateral X ", JSON.stringify(Result));
}

</script>

 