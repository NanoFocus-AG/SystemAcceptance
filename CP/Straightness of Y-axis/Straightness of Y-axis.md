<!--   EvalAlgoName=NF_NED_MScan_Abnahme_GY_PS -->


||
|-:|
|![](logo.png)|

## Straightness of Y-axis / Geradheit der Y-Achse

 


|||||
|-|-|-|-|
|System: |MarSurf CP |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type| MarSurf CP | Certificate number: |600410-44854376|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@  @PARAM{"Name":"Typ/Type","Precision":12}@ |||
|| |||
|Standard: |@PARAM{"Name":"Ebenheitsnormal","Precision":12}@|||

 

 || 
|:-:|
|![](StraightnessY_PS.svg)|


### Evaluation

||||||||
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit   |nominal  |   actual | status|
| Lin. Error / L-fehler   | µm | @PARAM{"Name":"Linearity Table + Sensor","Precision":6}@ |   @PARAM{"Name":"Wt","Precision":3}@ | <span id="control"> Ok</span>|
 

__Unit location:__ Oberhausen

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@


 

<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var META = @MJSON{"Set":0}@;

 
var value =   @PARAM{"Name":"Wt","Precision":3}@;
var nominal = @PARAM{"Name":"Linearity Table + Sensor","Precision":6}@;
 
if(  value < nominal)
{
 document.getElementById("control").innerHTML = "Ok";
}
else
{
 document.getElementById("control").innerHTML = "not Ok";
}

</script>

 