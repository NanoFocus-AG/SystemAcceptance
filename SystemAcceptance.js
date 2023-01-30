/*
NanoFocus AG  (c) 2023
M. Leitz

small utility function  for repeating task
avoid duplication of boilerplate code

*/


const IO = "ok s";
const nIO = "not ok s";

function  checkResult(value, nominal, tolerance)
{
    let result ="";

    if(value < nominal-tolerance || value > nominal+tolerance)
    {
        result = nIO;
    }
    else 
    {
        result = IO;
    }
    return result;
}

function addDataToStorage(JSONData)
{

    var key = document.title;
    var length = 0;
     
    if(sessionStorage.getItem(key)) 
    {
       length =  parseInt(sessionStorage.getItem(key));
     
    } 
    
    sessionStorage.setItem(key+length.toString(), JSON.stringify(JSONData));
    
    length = length+1;
    sessionStorage.setItem(key,length);

     
    return length;
}


function createStatistics(key,length)
{
    let a0 =0.0;
    let average =0.0;
    let sigma =0.0;
    let sigma0 =0.0;

    for(let i = 0; i<length;++i)
    {
    
        let storageKey =   document.title+i.toString();
        let data = JSON.parse(sessionStorage.getItem(storageKey));
        if(i > 0)
        {
            average = a0 + (data[key].value - a0)/i;
            
            sigma = sigma0 +  (data[key].value - a0)*(data[key].value - average);
            
            sigma0 = sigma;
            
            a0 = average;
        }	 
        else
        {
            a0 = data[key].value;
          
            average = a0;
        }
	 
    }

   
    return [average, Math.sqrt(sigma/length)];
}

function createStatisticsTable(key,length,average,sigma,precision=5)
{
    

let table = document.createElement("table");
table.id = "statistics";
var row = null;
var head = table.insertRow();
head.insertCell().textContent = "number of  measurement";
head.insertCell().textContent = "value";
head.style = "font-weight: bold;";
 

for(let i = 0; i<length;++i)
{
    let storageKey =   document.title+i.toString();
	var data = JSON.parse(sessionStorage.getItem(storageKey));
	
	row = table.insertRow();   
    row.insertCell().textContent =  i.toString();      
    row.insertCell().textContent =  data[key].value.toPrecision(precision);
	
	 
}

 row = table.insertRow();
 let lineCell = row.insertCell();
 lineCell.textContent ="  ";
 lineCell.style ="border-bottom: 1px solid #000;";
 lineCell.colSpan = 2;

 

 row = table.insertRow();   
 row.insertCell().textContent =  "average";      
 row.insertCell().textContent =  average.toPrecision(precision);
  
  

 row = table.insertRow();   
 row.insertCell().textContent =  "standard deviation";      
 
 row.insertCell().textContent =    sigma.toPrecision(precision);

 return table ;
}


 


function storeResults(value,nominal,status, id)
{
    var Result = {"value":0,"nominal":0,"status":"","timestamp":0};

    Result["value"] = value ;
    Result["nominal"] = nominal ;
    Result["status"] = status ;
    Result["timestamp"] = Date.now();

    sessionStorage.setItem(document.title+"Result_"+id, JSON.stringify(Result));

}