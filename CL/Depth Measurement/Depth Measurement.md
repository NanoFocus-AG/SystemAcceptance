<!--   EvalAlgoName=NF_NED_MScan_Abnahme_Tiefe_LS -->


||
|-:|
|![](logo.png)|


## Depth Measurement 

 


|||||
|-|-|-|-|
|System: |  CL |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type|   CL | Certificate number: |@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@  @PARAM{"Name":"Typ/Type","Precision":12}@ |||
|| |||
|Standard: |@PARAM{"Name":"Tiefennormal","Precision":12}@|||

 

||
|:-:| 
|![](Depth01_LS.svg)|
|![](Depth02_LS.svg)|
|![](Depth03_LS.svg)|
 
 
### Evaluation

 

|||||||
|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit  |nominal   | tolerance  +/- | actual  | status|
| Wt1   | µm | @PARAM{"Name":"T1","Precision":6}@ |    @PARAM{"Name":"Groove Tolerance","Precision":12}@|   @PARAM{"Name":"Wt1","Precision":3}@ | <span id="Wt1control"> Ok</span>|
| Wt2   | µm| @PARAM{"Name":"T2","Precision":6}@  |    @PARAM{"Name":"Groove Tolerance","Precision":12}@ |  @PARAM{"Name":"Wt2","Precision":3}@ | <span id="Wt2control"> Ok</span>|
| Wt3   | µm| @PARAM{"Name":"T3","Precision":6}@  |    @PARAM{"Name":"Groove Tolerance","Precision":12}@ |  @PARAM{"Name":"Wt3","Precision":3}@ | <span id="Wt3control"> Ok</span>|
 
 

__Unit location:__ Oberhausen

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@

 

<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var META = @MJSON{"Set":0}@;
 
var tolerance =  @PARAM{"Name":"Groove Tolerance"}@;
var value =  @PARAM{"Name":"Wt1"}@;
var nominal = @PARAM{"Name":"T1"}@;
var Result = {"value":0,"nominal":0,"status":"","timestamp":0};
var status = "";

if(  value < nominal-tolerance || value > nominal+tolerance) 
{
 status = "not Ok";
} 
else
{
 status = "Ok";
}
document.getElementById("Wt1control").innerHTML = status;


Result["value"] = value;
Result["nominal"] = nominal;
Result["status"] = status;
Result["timestamp"] = Date.now();
sessionStorage.setItem(document.title+"Result_T1", JSON.stringify(Result));

 
value =  @PARAM{"Name":"Wt2"}@;
nominal = @PARAM{"Name":"T2"}@;

if(  value < nominal-tolerance || value > nominal+tolerance) 
{
 status = "not Ok";
} 
else
{
 status = "Ok";
}
document.getElementById("Wt2control").innerHTML = status;

Result["value"] = value;
Result["nominal"] = nominal;
Result["status"] = status;
Result["timestamp"] = Date.now();
sessionStorage.setItem(document.title+"Result_T2", JSON.stringify(Result));


 
value =  @PARAM{"Name":"Wt3"}@;
nominal = @PARAM{"Name":"T3"}@;

if(  value < nominal-tolerance || value > nominal+tolerance) 
{
 status = "not Ok";
} 
else
{
 status = "Ok";
}

document.getElementById("Wt3control").innerHTML = status;

Result["value"] = value;
Result["nominal"] = nominal;
Result["status"] = status;
Result["timestamp"] = Date.now();
sessionStorage.setItem(document.title+"Result_T3", JSON.stringify(Result));

</script>

 