<!--   EvalAlgoName=FlatBumpNormalV02 -->
||||
|:-|:-:|-:|
|![](logo.png)| | Nanofocus AG <br> Max-Planck-Ring 48  <br>  D-46049 Oberhausen|
||| 


## Flat Bump Measurement 

 |||||
|-|-|-|-|
|System: |  CX3 |Calibration instruction:|  |
|Type|   CX3 | Certificate number: |@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: | @PARAM{"Name":"Typ/Type","Precision":12}@ |||
| |  |||
|Standard: |@PARAM{"Name":"Bumpnormal","Precision":12}@|||

### Terms of measurement 

||||
|-|-|-|
|Distance|@PARAM{"Name":"LengthX","Precision":8}@|  µm|
|Resolution|@PARAM{"Name":"DeltaX"}@ |µm|
|Frequency| @PARAM{"Name":"Frequency"}@ |Hz|
 
 
 
|full area| flat bumps gold|
|-|-|
|@IMAGE{"Name":"Height","Topo":0,"Width":320}@|@IMAGE{"Name":"Height","Topo":1,"Width":320}@|

### Heights


<div id="tableHeights">  </div>

 
 
### Evaluation

 

|||||||
|:-:|:-:|:-:|:-:|:-:|:-:|
| |unit  |nominal   | tolerance  +/- | actual  | status|
|average height scale factor | n | 1 | 0 | <span id="averageScaleFactor"></span> | <span id="status"> </span>|
 
 
<div id="btn1">  </div>

 
 __File__ @PARAM{"Name":"Filename"}@ 

__Unit location:__ @PARAM{"Name":"Location"}@

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Tester Name"}@

 
 
 


<script src="../../SystemAcceptance.js"> </script>
<script>

var PARAM0 = @PJSON{"Set":0}@;
var STANDARD = @PJSON{"Set":1}@;
var h = PARAM0["3) heights"].value;
var tol = @PARAM{"Name":"HeightScaleFactorTolerance"}@;


 
let tableHeights = document.createElement("table");
var row = null;
var head = tableHeights.insertRow();
head.insertCell().textContent = "";
head.insertCell().textContent = "";


row = tableHeights.insertRow(); 
row.insertCell().textContent = "";

var NX = 3;
var NY =5;
var  SKEY = "HX0";


var averageScaleFactor=0;
 
for(i =0;i<NX;i++)
{ 
     row.insertCell().textContent =  ("X0" +(i+1));
}

for(j=0;j<NY; j++)
{ 
  row = tableHeights.insertRow(); 
  row.insertCell().textContent = ("Y"+(j!=NY-1?"0":"")  +(j+1+NY));
 
 for(i =0;i<NX;i++)
 { 
 
   SKEY= "HX0"+ (i+1)+"Y0" +(j+1+NY);
   if(j==NY-1) SKEY= "HX0"+ (i+1)+"Y" +(j+1+NY);
   
   var scaleFactor = (   STANDARD[SKEY].value /  h[i+j*NX] );
   
   row.insertCell().textContent =  h[i+j*NX].toFixed( 3 ) + "   (" + scaleFactor.toFixed(3) + ")";

  averageScaleFactor +=scaleFactor;
 }

}
 
 averageScaleFactor /= NX*NY;
 
document.getElementById("averageScaleFactor").innerText = averageScaleFactor.toFixed(5);
document.getElementById("status").innerText =   averageScaleFactor != 1 ? "not OK":"OK";

 
 
 // Adding the entire table to the   tag
document.getElementById("tableHeights").appendChild(tableHeights);


 


if(averageScaleFactor <(1+tol) && averageScaleFactor > (1-tol)) 
{
   var h =   cxBound.setHeightScaleFactor(document.title,averageScaleFactor);
}
//document.getElementById("btn1").appendChild(btn);


 </script>
 