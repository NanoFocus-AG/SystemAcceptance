<!--   EvalAlgoName=NF_NED_MScan_Abnahme_LIN_PS -->


||
|-:|
|![](logo.png)|

## Linearity Error  

 


|||||
|-|-|-|-|
|System: |  CP |Calibration instruction:|   |
|Type|   CP | Certificate number: |@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@  @PARAM{"Name":"Typ/Type","Precision":12}@ |||
| |  |||
|Standard: |@PARAM{"Name":"Ebenheitsnormal","Precision":12}@|||

 

 || 
|:-:|
|![](Linearity_PS.svg)|


### Evaluation

|||||
|:-:|:-:|:-:|:-:|:-:|
| |unit  |nominal   |  actual  | status|
| Lin. Error   | µm | @PARAM{"Name":"Linearity Table + Sensor","Precision":6}@ |  @PARAM{"Name":"Wt","Precision":3}@ | <span id="control">  </span>|
 

__Unit location:__ @PARAM{"Name":"Location"}@

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@


 

 

<script>

 

var value =   @PARAM{"Name":"Wt","Precision":3}@;
var nominal = @PARAM{"Name":"Linearity Table + Sensor","Precision":6}@;
var status = ""; 

if(value < nominal) 
{
status  = "Ok";
}
else
{
 status = "not Ok";
}

document.getElementById("control").innerHTML = status;


var Result = {"value":0,"nominal":0,"status":"","timestamp":0};

Result["value"] = value ;
Result["nominal"] = nominal ;
Result["status"] = status ;
Result["timestamp"] = Date.now();
sessionStorage.setItem(document.title+"Result", JSON.stringify(Result));


</script>


 