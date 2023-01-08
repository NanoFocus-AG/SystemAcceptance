<!--   EvalAlgoName=Ebenheit -->


||
|-:|
|![](logo.png)|

## Flatness

 


|||||
|-|-|-|-|
|System: |  CM |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type|  CM explorer| Certificate number: |600410-44854376|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@|||
|Obj.Number:| 20X-M1064|||
|Standard: |@PARAM{"Name":"Ebenheitsnormal","Precision":12}@|||

 

 |||
|-|-|
|@IMAGE{"Name":"Height","Topo":1,"Width":300}@|@IMAGE{"Name":"Profile","Topo":1,"Width":700}@|
|| |
 
 
 
### Evaluation

||||||||
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit|nominal value <| tolerance +/- | actual value| result|
| Flatness   | µm| @PARAM{"Name":"max_Ebenheit","Precision":6}@ |     |  @PARAM{"Name":"Sz","Precision":6}@ | <spban id="fcontrol"> Ok</span>|
|  RMS| µm| - |    @PARAM{"Name":"Toleranz","Precision":6}@ |  @PARAM{"Name":"Sq","Precision":6}@ | <spban id="control"> Ok</span>|
 


__Unit location:__ Oberhausen

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Creator"}@

 

<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var META = @MJSON{"Set":0}@;
 


</script>

 