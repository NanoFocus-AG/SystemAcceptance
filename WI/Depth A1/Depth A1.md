<!--   EvalAlgoName=grooveA1 -->



||
|-:|
|![](logo.png)|

## Depth



|||||
|-|-|-|-|
|System: |MarSurf WI |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type| MarSurf WI explorer| Certificate number: |600410-44854376|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@|||
|Obj.Number:| 20X-M1064|||
|Standard: |@PARAM{"Name":"Tiefeneinstellnormal","Precision":12}@|||

 
 


||
|:-:|
|@IMAGE{"Name":"Height","Topo":1,"Width":300}@|
|@IMAGE{"Name":"Profile","Topo":1,"Width":700}@|

 

### Evaluation

|||||||
|-|-|-|-|-|-|
|unit|nominal value|target value| | tolerance +/-| result|
| µm| @PARAM{"Name":"Soll","Precision":12}@|  @PARAM{"Name":"d","Precision":8}@||| <spban id="control"> Ok</span>|
 

__Unit location:__ Oberhausen

__Date:__ @YEAR@-@MONTH@-@DAY@ 

__Tester:__ @PARAM{"Name":"Creator"}@

--- 


<div id="sumresults">  </div>

<script>

var PARAM = @PJSON{"Set":0}@;
var META = @MJSON{"Set":0}@;

var key = document.title;
var length = 0;
 
if(sessionStorage.getItem(key)) 
{
   length =  parseInt(sessionStorage.getItem(key));
 
} 

sessionStorage.setItem(key+length, JSON.stringify(PARAM));

length = length+1;
sessionStorage.setItem(key,length);



let table = document.createElement("table");
var row = null;
var head = table.insertRow();
head.insertCell().textContent = "";
head.insertCell().textContent = "";

var average =0.0;
for(let i = 0; i<length;++i)
{
    
	var data = JSON.parse(sessionStorage.getItem(key+i.toString()));
	
	row = table.insertRow();  // DOM method for creating table rows
    row.insertCell().textContent =  i.toString();      
    row.insertCell().textContent =  data["d"].value;
	
	average += data["d"].value;
   
	 
}
 
 row = table.insertRow();  // DOM method for creating table rows
 row.insertCell().textContent =  "Mittelwert";      
 if(length >0 ) row.insertCell().textContent =  (average/length).toFixed(6);
	
// Adding the entire table to the   tag
document.getElementById("sumresults").appendChild(table);


let btn = document.createElement("button");
btn.id ="b1";
btn.innerHTML = "Reset Table";
btn.onclick = function () {
	 
  sessionStorage.setItem(key,0);
  window.location.reload(true);
};

document.getElementById("sumresults").appendChild(btn);


let btn2 = document.createElement("button");
btn2.id ="b1";
btn2.innerHTML = "Clear Storage";
btn2.onclick = function () {
	 
  sessionStorage.clear();
};
document.getElementById("sumresults").appendChild(btn2);


</script>




 