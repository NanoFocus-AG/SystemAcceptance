<!--   EvalAlgoName=Abnahme_Rauheit -->

||
|-:|
|![](logo.png)|

## Roughness

 


|||||
|-|-|-|-|
|System: |  CM |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type|   CM explorer| Certificate number: |@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@|||
|Obj.Number:| @PARAM{"Name":"LensSerial"}@|||
|Standard: |@PARAM{"Name":"Rauhnormal","Precision":12}@|||

 

||
|:-:|
|@IMAGE{"Name":"Profile","Topo":1,"Width":650}@|

 
 
### Evaluation
||||||||
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit   |nominal   | tolerance   +/- | actual  | status|
| Ra   | µm | @PARAM{"Name":"Ra Soll","Precision":6}@ |    <span id="Ratol"></span> |  @PARAM{"Name":"Ra","Precision":3}@ | <span id="controlRa"></span>|
| Rz   | µm| @PARAM{"Name":"Rz Soll","Precision":6}@  |   <span id="Rztol"></span>  |  @PARAM{"Name":"Rz","Precision":3}@ | <span id="controlRz"> </span>|
 
 

__Unit location:__ Oberhausen

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@

 

<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var META = @MJSON{"Set":0}@;
 
var  dRa =  @PARAM{"Name":"delta_Ra"}@;
var  dRz =  @PARAM{"Name":"delta_Rz"}@;
var Ra_tol = @PARAM{"Name":"Ra Soll"}@ * dRa ;
var Rz_tol = @PARAM{"Name":"Rz Soll"}@ * dRz ;

document.getElementById("Ratol").innerHTML = Ra_tol.toPrecision(3);
document.getElementById("Rztol").innerHTML = Rz_tol.toPrecision(3);

var status = "";
 
 
 
 
var value = PARAM["Ra"].value;
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
sessionStorage.setItem(document.title+"Result_Ra", JSON.stringify(Result));
 
  
 
 
 
value= PARAM["Rz"].value;
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
sessionStorage.setItem(document.title+"Result_Rz", JSON.stringify(Result));

</script>

 