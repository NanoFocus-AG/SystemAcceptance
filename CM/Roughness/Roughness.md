<!--   EvalAlgoName=Abnahme_Rauheit -->

||
|-:|
|![](logo.png)|

## Roughness

 


|||||
|-|-|-|-|
|__System:__|  CM |__Calibration instruction:__| VDI/VDE 2655 Part 1.2|
|__Type__|   @PARAM{"Name":"Model"}@|__Certificate number:__|@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|__System number:__| @PARAM{"Name":"Serial"}@|__Standard:__|@PARAM{"Name":"Rauhnormal","Precision":12}@|
|__Customer:__| @PARAM{"Name":"Manufacturer"}@|__Unit location:__ | @PARAM{"Name":"Location"}@|
|__Lens:__|@PARAM{"Name":"LensSerialNumber"}@|__Date:__ | @YEAR@-@MONTH@-@DAY@ |
|||||
|||||
|||||


 

||
|:-:|
|@IMAGE{"Name":"Profile","Topo":3,"Width":650}@|
<span id="Pic"></span>

 
 
### Evaluation
|||||||||
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
||CutOff |unit |nominal value   | measured  | tolerance   +/- | status|
| Ra |@PARAM{"Name":"lambda_c","Precision":12}@  | µm | @PARAM{"Name":"Ra Soll","Precision":3}@ |  <span id="Ra"></span> |    <span id="Ratol"></span> | <span id="controlRa"></span>|
| Rz |@PARAM{"Name":"lambda_c","Precision":12}@  | µm| @PARAM{"Name":"Rz Soll","Precision":3}@  |   <span id="Rz"></span> |  <span id="Rztol"></span>  | <span id="controlRz"> </span>|
 
---


 

<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var META = @MJSON{"Set":0}@;

var cutoff 	= @PARAM{"Name":"lambda_c","Precision":12}@
var Ra08 	= @PARAM{"Name":"Ra08","Precision":6}@;
var Ra025	= @PARAM{"Name":"Ra025","Precision":6}@;
var Rz08 	= @PARAM{"Name":"Rz08","Precision":6}@;
var Rz025 	= @PARAM{"Name":"Rz025","Precision":6}@;
var  dRa 	= @PARAM{"Name":"delta_Ra"}@;
var  dRz 	= @PARAM{"Name":"delta_Rz"}@;
var Ra_tol 	= @PARAM{"Name":"Ra Soll"}@ * dRa ;
var Rz_tol 	= @PARAM{"Name":"Rz Soll"}@ * dRz ;

document.getElementById("Ratol").innerHTML = Ra_tol.toPrecision(3);
document.getElementById("Rztol").innerHTML = Rz_tol.toPrecision(3);

var status = "";
 
if(cutoff = 250)
{
document.getElementById("Ra").innerHTML = Ra025.toPrecision(3);
document.getElementById("Rz").innerHTML = Rz025.toPrecision(3);
document.getElementById("Pic").innerHTML = @IMAGE{"Name":"Profile","Topo":3,"Width":650}@;"<img src='images/icons/tick.png' class='mark'>"
document.getElementById("Pic").innerHTML = "<img src='Roughness_650_2_0_prf.svg' style='display: block; margin: 0 auto'>";
}
else
{
document.getElementById("Ra").innerHTML = Ra08.toPrecision(3);
document.getElementById("Rz").innerHTML = Rz08.toPrecision(3);
document.getElementById("Pic").innerHTML = "<img src='Roughness_650_3_0_prf.svg' style='display: block; margin: 0 auto'>";
} 
 
var value = document.getElementById("Ra").innerHTML;
var nominal =  @PARAM{"Name":"Ra Soll"}@;
if(value < nominal-Ra_tol || value > nominal+Ra_tol) 
{
status = "not Ok";
} 
else
{
 status = "Ok";
}

document.getElementById("controlRa").innerHTML  = status;

var Result = {"value":0,"nominal":0,"status":"","timestamp":0};

Result["value"] = value ;
Result["nominal"] = nominal ;
Result["status"] = status ;
Result["timestamp"] = Date.now();
sessionStorage.setItem(document.title+"Roughness Ra", JSON.stringify(Result));
 
  
 
 
 
value= document.getElementById("Rz").innerHTML;
nominal =  @PARAM{"Name":"Rz Soll"}@;
if( value < nominal-Rz_tol || value > nominal+Rz_tol) 
{
   status = "not Ok";
} 
else
{
 status = "Ok";
}
 document.getElementById("controlRz").innerHTML  = status;
Result["value"] = value ;
Result["nominal"] = nominal ;
Result["status"] = status ;
Result["timestamp"] = Date.now();
sessionStorage.setItem(document.title+"Roughness Rz", JSON.stringify(Result));

</script>

 