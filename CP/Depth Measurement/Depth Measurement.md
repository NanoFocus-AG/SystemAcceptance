<!--   EvalAlgoName=NF_NED_MScan_Abnahme_Tiefe_PS -->


||
|-:|
|![](logo.png)|


## Depth Measurement /  Tiefenmessung

 


|||||
|-|-|-|-|
|System: |MarSurf CP |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type| MarSurf CP | Certificate number: |600410-44854376|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@  @PARAM{"Name":"Typ/Type","Precision":12}@ |||
|| |||
|Standard: |@PARAM{"Name":"Tiefennormal","Precision":12}@|||

 

||
|:-:| 
|![](Depth01_PS.svg)|
|![](Depth02_PS.svg)|
|![](Depth03_PS.svg)|
 
 
### Evaluation

||||||||
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit   |nominal  | tolerance  +/- | actual  | status|
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
 
var t =  @PARAM{"Name":"Groove Tolerance"}@;
var v =  @PARAM{"Name":"Wt1"}@;
var s = @PARAM{"Name":"T1"}@;

if(  v < s-t || v > s+t) 
{
 document.getElementById("Wt1control").innerHTML = "not Ok";
} 
else
{
document.getElementById("Wt1control").innerHTML = "Ok";
}

 
 v =  @PARAM{"Name":"Wt2"}@;
 s = @PARAM{"Name":"T2"}@;

if(  v < s-t || v > s+t) 
{
 document.getElementById("Wt2control").innerHTML = "not Ok";
} 
else
{
document.getElementById("Wt2control").innerHTML = "Ok";
}




 
v =  @PARAM{"Name":"Wt3"}@;
s = @PARAM{"Name":"T3"}@;

if(  v < s-t || v > s+t) 
{
 document.getElementById("Wt3control").innerHTML = "not Ok";
} 
else
{
document.getElementById("Wt3control").innerHTML = "Ok";
}


</script>

 