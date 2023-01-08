<!--   EvalAlgoName=Lateralnormal -->

||
|-:|
|![](logo.png)|

## Lateral X

 


|||||
|-|-|-|-|
|System: |MarSurf WI |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type| MarSurf WI explorer| Certificate number: |600410-44854376|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@|||
|Obj.Number:| 20X-M1064|||
|Standard: |@PARAM{"Name":"Lateralnormal","Precision":12}@|||

 

||
|:-:|
|@IMAGE{"Name":"Height","Topo":2,"Width":300}@|
|@IMAGE{"Name":"Profile","Topo":1,"Width":600}@|

 
 
### Evaluation

 
||||||||
|:-:|:-:|:-:|:-:|:-:|:-:|:-:|
|                  |unit|nominal value | tolerance +/- | actual value | result|
|lateral distance| __µm__|   @PARAM{"Name":"Soll","Set":1}@   |    __@PARAM{"Name":"delta_AbbMaßstab","Precision":12}@__ | __@PARAM{"Name":"Sum Gap Lateral Width","Precision":5}@__  | <span id="control"> Ok</span>|
 

__Unit location:__ Oberhausen

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Checker:__ Tobi

 

<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var SENSOR = @PJSON{"Set":2}@;
var STANDARD =@PJSON{"Set":1}@;
var META = @MJSON{"Set":0}@;


var lateralStructure = PARAM["Sum Gap Lateral Width"].value;

var r =  (lateralStructure.toFixed(4)).toLocaleString('de-DE');

document.getElementById("result").innerHTML = r    ;

if(lateralStructure <     (STANDARD["Soll"].value + SENSOR["delta_AbbMaßstab"].value) && lateralStructure >     (STANDARD["Soll"].value - SENSOR["delta_AbbMaßstab"].value) )
{
	document.getElementById("control").innerHTML = "OK"  ;
}
else
{
	document.getElementById("control").innerHTML = "not OK"  ;
}


</script>

 