<!--   EvalAlgoName=NF_NED_MScan_Abnahme_Rauheit_LS -->


||
|-:|
|![](logo.png)|


## Roughness 

 


|||||
|-|-|-|-|
|System: |MarSurf CL |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type| MarSurf CL| Certificate number: |600410-44854376|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@  @PARAM{"Name":"Typ/Type","Precision":12}@ |||
| |  |||
|Standard: |@PARAM{"Name":"Rauhnormal","Precision":12}@|||

 

 

|| 
|:-:|
|![](Roughness_PS.svg)|
 


|||
|:-|:-|
|Filter|Gauss DIN 477|
|LC (CutOff) | @PARAM{"Name":"Gauss CutOff High Pass"}@ µm|
|Needle Filter |@PARAM{"Name":"Gauss CutOff Low Pass"}@ µm| 

--- 

### Evaluation
||||||||
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit / Einheit |nominal / Soll | tolerance / Toleranz +/- | actual / Ist| Status|
| Ra   | µm | @PARAM{"Name":"Soll Ra","Precision":6}@ |    @PARAM{"Name":"Tolerance Ra","Precision":12}@|  @PARAM{"Name":"Ra","Precision":3}@ | <span id="controlRa"></span>|
| Rz   | µm| @PARAM{"Name":"Soll Rz","Precision":6}@  |    @PARAM{"Name":"Tolerance Rz","Precision":12}@ |  @PARAM{"Name":"Rz","Precision":3}@ | <span id="controlRz"> </span>|
 
 

__Unit location:__ Oberhausen

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@


 

<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var TOLERANCE = @PJSON{"Set":2}@;
var META = @MJSON{"Set":0}@;
 

var tolerance = TOLERANCE["Tolerance Ra"].value;
var v = PARAM["Ra"].value;
var soll =  @PARAM{"Name":"Soll Ra"}@;
if(v < soll-tolerance || v > soll+tolerance) 
{
 document.getElementById("controlRa").innerHTML = "not Ok";
} 
else
{
document.getElementById("controlRa").innerHTML = "Ok";
}

tolerance = TOLERANCE["Tolerance Rz"].value;
v = PARAM["Rz"].value;
soll =  @PARAM{"Name":"Soll Rz"}@;
if(  v < soll-tolerance || v > soll+tolerance) 
{
 document.getElementById("controlRz").innerHTML = "not Ok";
} 
else
{
document.getElementById("controlRz").innerHTML = "Ok";
}

</script>

 