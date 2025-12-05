<!--   EvalAlgoName=Ausleuchtung -->

||
|-:|
|![](logo.png)|

## Lighting

 


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


 

||
|:-:|
|@IMAGE{"Name":"Intensity","Topo":1,"Width":220}@|
||
 
 
 
### Evaluation

|||||||
|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit|nominal value < | actual value| tolerance +/- | status|
| Homogenity   | % | @PARAM{"Name":"min_Ausleuchtung","Precision":6}@  |   @PARAM{"Name":"Homogenity","Precision":3}@  |  - | <span id="control"> Ok</span>|
 
---

 

 
<script>
function runEvaluation(){
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
sessionStorage.setItem(document.title+"Lighting", JSON.stringify(Result));

}
</script>

 