<!--   EvalAlgoName=NF_NED_MScan_Abnahme_Steps_PS -->


||
|-:|
|![](logo.png)|


## Step measurement / Stufenmessung


 

||||| 
|-|-|-|-|
|System: |MarSurf CP |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type| MarSurf CP | Certificate number: |600410-44854376|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@  @PARAM{"Name":"Typ/Type","Precision":12}@ |||
| |  |||
|Standard: |@PARAM{"Name":"Stufennormal","Precision":12}@|||

 

||
|:-:|
| ![](Steps_PS.svg)| 

### Evaluation

||||||||
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit  |nominal   | tolerance  +/- | actual | status|
| Wt1   | µm | @PARAM{"Name":"T1","Precision":6}@ |    @PARAM{"Name":"Groove Tolerance","Precision":12}@|  @PARAM{"Name":"StepHeight1","Precision":3}@ | <spban id="fcontrol"> Ok</span>|
| Wt2   | µm| @PARAM{"Name":"T2","Precision":6}@  |    @PARAM{"Name":"Groove Tolerance","Precision":12}@ |  @PARAM{"Name":"StepHeight2","Precision":3}@ | <spban id="fcontrol"> Ok</span>|
| Wt3   | µm| @PARAM{"Name":"T3","Precision":6}@  |    @PARAM{"Name":"Groove Tolerance","Precision":12}@ |  @PARAM{"Name":"StepHeight3","Precision":3}@ | <spban id="fcontrol"> Ok</span>|
 
 

__Unit location:__ Oberhausen

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@


 

<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var META = @MJSON{"Set":0}@;
 


</script>

 