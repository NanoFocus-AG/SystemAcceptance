<!--   EvalAlgoName=NF_NED_LineSensorNoiseStatistics -->


||
|-:|
|![](logo.png)|

## Noise 


|||||
|-|-|-|-|
|System: |  CL |Calibration instruction:| VDI/VDE 2655 Part 1.2|
|Type|   CL| Certificate number: |@PARAM{"Name":"Serial"}@-@YEAR@@MONTH@@DAY@|
|System number:| @PARAM{"Name":"Serial"}@|||
|Customer:| @PARAM{"Name":"Manufacturer"}@|||
|Objective Lens: |@PARAM{"Name":"Lens"}@  @PARAM{"Name":"Typ/Type","Precision":12}@ |||
| |  |||
|Standard: |@PARAM{"Name":"Rauhnormal","Precision":12}@|||

 
### Terms of measurement 

||||
|-|-|-|
|Distance|@PARAM{"Name":"LengthX","Precision":8}@|  µm|
|Resolution|@PARAM{"Name":"DeltaX"}@ |µm|
|Frequency| @PARAM{"Name":"Frequency"}@ |Hz|
 

 

### Noise


__noise mean value per channel__

|| 
|:-:|
||
|@PARAM{"Name":"Means","Display":"graph","Width":750,"Xlabel":"Sensor channel","Ylabel":"Mean values  [µm]"}@|



__noise standard deviation per channel__

||
|:-:|
||
|@PARAM{"Name":"Stddevs","Display":"graph","Width":750,"Xlabel":"Sensor channel","Ylabel":"Stddevs   [µm]"}@|

 


### Spectrum

|| 
|:-:|
||
|![](LineSensorNoiseSpectrum.svg)|
 
 
 
 
<script>

var PARAM = @PJSON{"Set":0}@;

 
</script>