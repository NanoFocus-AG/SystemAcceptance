<!--   EvalAlgoName=Abnahme_Rauheit -->

||
|-:|
|![](logo.png)|

## Roughness

 


|||||
|-|-|-|-|
|System: |MarSurf WI |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type| MarSurf WI explorer| Certificate number: |600410-44854376|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@|||
|Obj.Number:| 20X-M1064|||
|Standard: |@PARAM{"Name":"Rauhnormal","Precision":12}@|||

 

||
|:-:|
|@IMAGE{"Name":"Profile","Topo":1,"Width":650}@|

 
 
### Evaluation
||||||||
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit / Einheit |nominal / Soll | tolerance / Toleranz +/- | actual / Ist| Status|
| Ra   | µm | @PARAM{"Name":"Ra Soll","Precision":6}@ |    <span id="Ra_tol"></span> |  @PARAM{"Name":"Ra","Precision":3}@ | <span id="controlRa"></span>|
| Rz   | µm| @PARAM{"Name":"Rz Soll","Precision":6}@  |   <span id="Rz_tol"></span>  |  @PARAM{"Name":"Rz","Precision":3}@ | <span id="controlRz"> </span>|
 
 

__Unit location:__ Oberhausen

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Creator"}@

 

<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var META = @MJSON{"Set":0}@;
 
var  dRa =  @PARAM{"Name":"delta_Ra"}@;
var  dRz =  @PARAM{"Name":"delta_Rz"}@;
var Ra_tol = @PARAM{"Name":"Ra Soll"}@ * dRa ;
var Rz_tol = @PARAM{"Name":"Rz Soll"}@ * dRz ;

document.getElementById("Ra_tol").innerHTML = Ra_tol ;
document.getElementById("Rz_tol").innerHTML = Rz_tol;


 
var v = PARAM["Ra"].value;
var soll =  @PARAM{"Name":"Ra Soll"}@;
if(v < soll-Ra_tol || v > soll+Ra_tol) 
{
 document.getElementById("controlRa").innerHTML = "not Ok";
} 
else
{
document.getElementById("controlRa").innerHTML = "Ok";
}

 
v = PARAM["Rz"].value;
soll =  @PARAM{"Name":"Rz Soll"}@;
if(  v < soll-Rz_tol || v > soll+Rz_tol) 
{
 document.getElementById("controlRz").innerHTML = "not Ok";
} 
else
{
document.getElementById("controlRz").innerHTML = "Ok";
}



</script>

 