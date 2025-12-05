<!--   EvalAlgoName=Ebenheit -->


||
|-:|
|![](logo.png)|

## Flatness

 


|||||
|-|-|-|-|
|__System:__|  CM |__Kalibrierungsanleitung:__| VDI/VDE 2655 Part 1.2|
|__Typ__|   @PARAM{"Name":"Model"}@|__Zertifikatsnummer:__|@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|__Systemnummer:__| @PARAM{"Name":"Serial"}@|__Standard:__|@PARAM{"Name":"Ebenheitsnormal","Precision":12}@|
|__Kunde:__| @PARAM{"Name":"Manufacturer"}@|__Standort:__ | @PARAM{"Name":"Location"}@|
|__Linse:__|@PARAM{"Name":"LensSerialNumber"}@|__Datum:__ | @YEAR@-@MONTH@-@DAY@ |
|||||
|||||
|||||

 

|||
|:-:|:-:|
|@IMAGE{"Name":"Height","Topo":1,"Width":220}@|@IMAGE{"Name":"Profile","Topo":1,"Width":500}@|

 
 
 
### Evaluation

|||||||
|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit|nominal value <| measured | tolerance +/-| status|
| Flatness   | µm|   @PARAM{"Name":"max_Ebenheit","Precision":6}@   |  @PARAM{"Name":"Sz","Precision":6}@| - | <span id="control"> Ok</span>|
| RMS| µm| - |      @PARAM{"Name":"Sq","Precision":6}@ |- | <span id="controlRMS"> Ok</span>|
 


||
||
||
||
||
||
||
||
||
||
||
||
||


 ---

 

<script>
function runEvaluation(){
var PARAM = @PJSON{"Set":0}@;
var META = @MJSON{"Set":0}@;

 var Result = {"value":0,"nominal":0,"status":"","timestamp":0};

var value =   @PARAM{"Name":"Sz","Precision":3}@;
var nominal = @PARAM{"Name":"max_Ebenheit","Precision":6}@;
var tolerance = 0;
var status = ""; 



if(    value > nominal+tolerance) 
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
sessionStorage.setItem(document.title+"Flatness", JSON.stringify(Result));
}
</script>

 