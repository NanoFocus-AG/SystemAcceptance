<!--   EvalAlgoName=NF_NED_MScan_Abnahme_Steps_LS -->


||
|-:|
|![](logo.png)|


## Step measurement 

|||||
|-|-|-|-|
|System: |  CL |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type|   CL | Certificate number: |600410-44854376|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: | @PARAM{"Name":"Typ/Type","Precision":12}@ |||
| |  |||
|Standard: |@PARAM{"Name":"Stufennormal","Precision":12}@|||

||
|:-:|
| ![](Steps_LS.svg)| 

 
### Evaluation

|||||||
|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit   |nominal  | tolerance  +/- | actual | status|
| Wt1   | µm | @PARAM{"Name":"T1","Precision":5}@ |    @PARAM{"Name":"Groove Tolerance","Precision":12}@|  @PARAM{"Name":"StepHeight1","Precision":5}@ | <span id="StepHeight1control"> </span>|
| Wt2   | µm| @PARAM{"Name":"T2","Precision":5}@  |    @PARAM{"Name":"Groove Tolerance","Precision":12}@ |  @PARAM{"Name":"StepHeight2","Precision":5}@ | <span id="StepHeight2control"> </span>|
| Wt3   | µm| @PARAM{"Name":"T3","Precision":5}@  |    @PARAM{"Name":"Groove Tolerance","Precision":12}@ |  @PARAM{"Name":"StepHeight3","Precision":5}@ | <span id="StepHeight3control"> </span>|
 
 

__Unit location:__ Oberhausen

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@
 

<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var META = @MJSON{"Set":0}@;
 
 var tolerance =  @PARAM{"Name":"Groove Tolerance"}@;
var status1 ="";


var value1 =  @PARAM{"Name":"StepHeight1"}@;
var nominal1 = @PARAM{"Name":"T1"}@;
var status1 ="";
 
if(  value1 < nominal1-tolerance || value1 > nominal1+tolerance) 
{
  status1 = "not Ok";
} 
else
{
  status1 = "Ok";
}
document.getElementById("StepHeight1control").innerHTML = status1;

 
var value2 =  @PARAM{"Name":"StepHeight2"}@;
var nominal2 = @PARAM{"Name":"T2"}@;
var status2 ="";
if(  value2 < nominal2-tolerance || value2 > nominal2+tolerance) 
{
  status2 = "not Ok";
} 
else
{
  status2 = "Ok";
}

document.getElementById("StepHeight2control").innerHTML = status2;



 
var value3 =  @PARAM{"Name":"StepHeight3"}@;
var nominal3 = @PARAM{"Name":"T3"}@;
var status3 ="";
if(  value3 < nominal3-tolerance || value3 > nominal3+tolerance) 
{
  status3 = "not Ok";
} 
else
{
  status3 = "Ok";
}
document.getElementById("StepHeight3control").innerHTML = status3;
 
 
 
 
 
 
 

var Result = {"value":0,"nominal":0,"status":"","timestamp":0};

Result["value"] = value1;
Result["nominal"] = nominal1;
Result["status"] = status1;
Result["timestamp"] = Date.now();
sessionStorage.setItem(document.title+"Result1_T1", JSON.stringify(Result));

Result["value"] = value2;
Result["nominal"] = nominal2;
Result["status"] = status2;
Result["timestamp"] = Date.now();
sessionStorage.setItem(document.title+"Result2_T2", JSON.stringify(Result));

Result["value"] = value3;
Result["nominal"] = nominal3;
Result["status"] = status3;
Result["timestamp"] = Date.now();
sessionStorage.setItem(document.title+"Result3_T3", JSON.stringify(Result));
</script>

 