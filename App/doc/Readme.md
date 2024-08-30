
![](SW.png) M. Leitz, Softwareentwicklung

---

# Software Applikation für die Systemabnahme


 

Bei Softwarestart werden die Reiterkarten aus einer  vorhandenen Ordnerstruktur dynamisch erzeugt. 
Dies geschieht sofern sich in einem Ordner eine Vorlagedatei mit der Endung *.md befindet. 
Die Reiterkarte trägt die Beschriftung des  zugehörigen  Ordners. So ist es mögliche Abnahmen dynamisch hinzuzufügen.


||
|:-:|
|![](Unbenannt9.PNG)|
|Abb.1 Ordnerstruktur Abnahme CP Systeme|

Der Order für die entsprechende Abnahme behinhaltet folgende Dateien.

|Art|Endung|Bemerkung|
|-|-|-|
|Template|*.md|zentrale Steuerdatei, legt den Inhalt und das Layout fest|
|Stylesheet|*.css| Schriftgrößen , Farben etc.|
|Auswertealgo|*.ned| |
|Eingabeparameter|*.npsx||
|Bilddateien| *.png , *.jpg| Logos, sonstige Bilder|
|weitere Plugins| *.dll| optional| 
|weitere Plugins| *.ned| optional|
 

||
|-|
|![](Unbenannt10.PNG)|
|Abb.2 Ordner Abnahme CP Rauheit|



###  Kalibriernormale 

Für jede Systemabnahmen  CM , CP , CL  werden die Normale in csv Dateien verwaltet.    
Die enthaltenen Daten enstprechen denen aus Excel bekannte Tabellen.

||
|-|
|![](Unbenannt11.PNG)|
| Abb.3 Ordner Standards CP |

### Sensoren 

Für jede Systemabnahmen  CM , CP , CL  werden die Sensoren in csv Dateien verwaltet.    
Die enthaltenen Daten enstprechen denen aus Excel bekannte Tabellen.


||
|-|
|![](Unbenannt12.PNG)|
| Abb.4 Ordner Sensors CP |




## Interaktionsmodell System Abnahme


### Tab für die entsprechende Auswertung auswählen 

![](Unbenannt2.PNG)


### Load Schaltfläche 

#### 1.Messdaten laden
![](Unbenannt4.PNG)

####  2. Art des Kalibrierniormals wählen
||
|:-:|
|![](Unbenannt5.PNG)| 
|Kalibiernormale werden in csv Dateien verwaltet.  Für jede Art gibt es eine  csv Datei. Die Zeilen innerhalb der csv Datei repräsentieren ein spezielles Normal.|



#### 3. Typ des Normals wählen
||
|:-:|
|![](Unbenannt6.PNG)|
|Alle Typen  aus der csv Datei (siehe 1.) werden hier in einer Auswahlliste angezeigt.|

#### 4. Typ des Sensors wählen
||
|:-:|
|![](Unbenannt7.PNG)|
|Die sensorspezifischen Daten, z.B. Toleranzwerte werden ebenfalls in einer csv Datei verwaltet. Die eingetragenen Sensoren werden hier in einer Auswahlliste angezeigt.|

#### Ergebnisse werden berechnet

Nach dem die Schritte 1 - 4 durchlaufen wurden, werden die Ergebnisse berechnet und als Dokument angezeigt.

![](Unbenannt8.PNG)




