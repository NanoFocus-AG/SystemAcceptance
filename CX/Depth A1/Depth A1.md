<!--   EvalAlgoName=NF_NED_Abnahme_Tiefennormal_C3X_A1 -->


||
|-:|
|![](logo.png)|


## Depth Measurement 

 


|||||
|-|-|-|-|
|System: |  CX |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type|   CX | Certificate number: |@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@  /  @PARAM{"Name":"Typ/Type","Precision":12}@ |||
|| |||
|Standard: |@PARAM{"Name":"Tiefennormal","Precision":12}@|||

### Terms of measurement 

|||
|-|-|
|Distance|@PARAM{"Name":"LengthX","Precision":8}@  µm|
|Resolution|@PARAM{"Name":"DeltaX"}@ µm|
|Frequency| @PARAM{"Name":"Frequency"}@ Hz|
 
 
 
 
 

|||
|-|-| 
|![](Tiefennormal_Profil_01.svg)|![](Tiefennormal_Profil_02.svg)|
|![](Tiefennormal_Profil_03.svg)||
 
//![](Tiefennormal_Profil_04.svg)
 
### Evaluation

 

|||||||
|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit  |nominal   | tolerance  +/- | actual  | status|
| Wt1   | µm | @PARAM{"Name":"T1","Precision":6}@ |    @PARAM{"Name":"Groove Tolerance","Precision":12}@ |  <span id="T1">  </span> | <span id="Wt1control"> Ok</span>|
| Wt2   | µm| @PARAM{"Name":"T2","Precision":6}@  |    @PARAM{"Name":"Groove Tolerance","Precision":12}@ |  <span id="T2">  </span> | <span id="Wt2control"> Ok</span>|
| Wt3   | µm| @PARAM{"Name":"T3","Precision":6}@  |    @PARAM{"Name":"Groove Tolerance","Precision":12}@ |  <span id="T3">  </span> | <span id="Wt3control"> Ok</span>|
 
 

__Unit location:__ @PARAM{"Name":"Location"}@

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@

 

<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;

var TValues= PARAM["Depth"].value;


 
var tolerance =  @PARAM{"Name":"Groove Tolerance"}@;
var value =  TValues[0];
document.getElementById("T1").innerHTML = value.toFixed(4);
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

 
value =  TValues[1];
document.getElementById("T2").innerHTML = value.toFixed(4);
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


 
value =  TValues[2];
document.getElementById("T3").innerHTML = value.toFixed(4);
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

 