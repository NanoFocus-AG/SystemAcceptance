<!--   EvalAlgoName=NF_NED_MScan_Abnahme_Rauheit_PS -->


||
|-:|
|![](logo.png)|


## Roughness 

 


|||||
|-|-|-|-|
|System: |  CP |Calibration instruction:|   |
|Type|   CP| Certificate number: |@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
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
| |unit   |nominal   | tolerance  +/- | actual | status|
| Ra   | µm | @PARAM{"Name":"Soll Ra","Precision":6}@ |    @PARAM{"Name":"Tolerance Ra","Precision":12}@|  @PARAM{"Name":"Ra","Precision":3}@ | <span id="controlRa"></span>|
| Rz   | µm| @PARAM{"Name":"Soll Rz","Precision":6}@  |    @PARAM{"Name":"Tolerance Rz","Precision":12}@ |  @PARAM{"Name":"Rz","Precision":3}@ | <span id="controlRz"> </span>|
 
 

__Unit location:__ @PARAM{"Name":"Location"}@

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@


 

<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var TOLERANCE = @PJSON{"Set":2}@;
var META = @MJSON{"Set":0}@;
 

var tolerance = TOLERANCE["Tolerance Ra"].value;
var value = PARAM["Ra"].value;
var nominal =  @PARAM{"Name":"Soll Ra"}@;
var status ="";

if(value < nominal-tolerance || value > nominal+tolerance) 
{
 status = "not Ok";
} 
else
{
status = "Ok";
}

document.getElementById("controlRa").innerHTML = status;


var Result = {"value":0,"nominal":0,"status":"","timestamp":0};

Result["value"] = value ;
Result["nominal"] = nominal ;
Result["status"] = status ;
Result["timestamp"] = Date.now();
sessionStorage.setItem(document.title+"Result_Ra", JSON.stringify(Result));


tolerance = TOLERANCE["Tolerance Rz"].value;
value = PARAM["Rz"].value;
nominal =  @PARAM{"Name":"Soll Rz"}@;
if(value < nominal-tolerance || value > nominal+tolerance) 
{
 status =  "not Ok";
} 
else
{
 status = "Ok";
}

document.getElementById("controlRz").innerHTML = status;


Result["value"] = value ;
Result["nominal"] = nominal ;
Result["status"] = status ;
Result["timestamp"] = Date.now();
sessionStorage.setItem(document.title+"Result_Rz", JSON.stringify(Result));


</script>

 