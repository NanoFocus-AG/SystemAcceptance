
![](SW.png) M. Leitz, Softwareentwicklung

---

# Software Applikation f�r die Systemabnahme


 

Bei Softwarestart werden die Reiterkarten aus einer  vorhandenen Ordnerstruktur dynamisch erzeugt. 
Dies geschieht sofern sich in einem Ordner eine Vorlagedatei mit der Endung *.md befindet. 
Die Reiterkarte tr�gt die Beschriftung des  zugeh�rigen  Ordners. So ist es m�gliche Abnahmen dynamisch hinzuzuf�gen.


||
|:-:|
|![](Unbenannt9.PNG)|
|Abb.1 Ordnerstruktur Abnahme CP Systeme|

Der Order f�r die entsprechende Abnahme behinhaltet folgende Dateien.

|Art|Endung|Bemerkung|
|-|-|-|
|Template|*.md|zentrale Steuerdatei, legt den Inhalt und das Layout fest|
|Stylesheet|*.css| Schriftgr��en , Farben etc.|
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

F�r jede Systemabnahmen  CM , CP , CL  werden die Normale in csv Dateien verwaltet.    
Die enthaltenen Daten enstprechen denen aus Excel bekannte Tabellen.

||
|-|
|![](Unbenannt11.PNG)|
| Abb.3 Ordner Standards CP |

### Sensoren 

F�r jede Systemabnahmen  CM , CP , CL  werden die Sensoren in csv Dateien verwaltet.    
Die enthaltenen Daten enstprechen denen aus Excel bekannte Tabellen.


||
|-|
|![](Unbenannt12.PNG)|
| Abb.4 Ordner Sensors CP |




## Interaktionsmodell System Abnahme


### Tab f�r die entsprechende Auswertung ausw�hlen 

![](Unbenannt2.PNG)


### Load Schaltfl�che 

#### 1.Messdaten laden
![](Unbenannt4.PNG)

####  2. Art des Kalibrierniormals w�hlen
||
|:-:|
|![](Unbenannt5.PNG)| 
|Kalibiernormale werden in csv Dateien verwaltet.  F�r jede Art gibt es eine  csv Datei. Die Zeilen innerhalb der csv Datei repr�sentieren ein spezielles Normal.|



#### 3. Typ des Normals w�hlen
||
|:-:|
|![](Unbenannt6.PNG)|
|Alle Typen  aus der csv Datei (siehe 1.) werden hier in einer Auswahlliste angezeigt.|

#### 4. Typ des Sensors w�hlen
||
|:-:|
|![](Unbenannt7.PNG)|
|Die sensorspezifischen Daten, z.B. Toleranzwerte werden ebenfalls in einer csv Datei verwaltet. Die eingetragenen Sensoren werden hier in einer Auswahlliste angezeigt.|

#### Ergebnisse werden berechnet

Nach dem die Schritte 1 - 4 durchlaufen wurden, werden die Ergebnisse berechnet und als Dokument angezeigt.

![](Unbenannt8.PNG)




