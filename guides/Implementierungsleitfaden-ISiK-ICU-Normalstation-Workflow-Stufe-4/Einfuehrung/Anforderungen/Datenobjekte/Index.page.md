---
topic: Datenobjekte
---
# Datenobjekte - FHIR-Profile für den Use Case Überleitung Normal- und Intensivversorgung

Im Rahmen des Use Case Überleitung Normal- und Intensivversorgung sind neben den [Profilen des Moduls Vitalparameter - insbesondere MII Profile - ](https://simplifier.net/guide/isik-vitalparameter-v4/ImplementationGuide-markdown-Datenobjekte-MII_Intensiv_Normal?version=current) alle Profile des [ISIK Support Modul Labor](https://simplifier.net/guide/isik-vitalparameter-v4/ImplementationGuide-markdown-Datenobjekte-Laborprofile?version=current) relevant.
Eine Liste der Profile ist dem Abschnitt zu den {{pagelink:ISiKCapabilityStatementsICU, text:CapabilityStatements}} in den einzelnen CapabilityStatements zu entnehmen, die mit einzelnen {{pagelink:Akteure, text: Akteuren}} übereinstimmen (eine vollständige Abdeckung der Akteure ist derzeit noch nicht abgeschlossen bzw. noch in Arbeit).

Folgende Datenobjekte aus dem Modul [ISiK Basis Stufe 4](https://simplifier.net/guide/isik-basis-v4?version=current) werden in diesem Modul verwendet: 
* [Patient](https://simplifier.net/guide/isik-basis-401/Einfuehrung/Datenobjekte/Datenobjekte_Patient?version=current)
* [Kontakt/Fall (Encounter)](https://simplifier.net/guide/isik-basis-401/Einfuehrung/Datenobjekte/Datenobjekte_Kontakt?version=current)

Die Verwendung der genannten Ressourcen in diesem Modul bedeutet:
Wenn ein Profil aus diesem Modul auf die genannten Datenobjekte aus dem Basismodul referenziert, dann MÜSSEN die referenzierten FHIR-Ressourcen im ISiK-Kontext konform zu Vorgaben an diese Ressourcen aus dem Basismodul sein (Profilkonformität). 

Die konkreten Vorgaben zu Interaktionen und Abhängigkeiten zwischen Modulen werden noch präzisiert. Eine Festlegung zur Interaktionen, die die Patienten- und Encounter-Ressourcen betreffen, werden auf der Seite zu den {{pagelink: UebergreifendeAnforderungen, text: Übergreifende Anforderungen}} festgehalten.


# MII-Profile - Vitalparameter für die Intensiv- und Normalversorgung

An dieser Stelle werden weitere Festlegungen zu Profilen getroffen, die für die Intensiv- sowie Normalversorgung vorgesehen sind und dem Kontext des Moduls zur Intensivmedizinische Versorgung (ICU) der MII entstammen.

## Motivation zur Übernahme
Im Rahmen des [Moduls zur Intensivmedizinische Versorgung (ICU) der MII](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Intensivmedizin/MonitoringundVitaldaten.html) stellt die MII Profile bereit, die sich für die Verarbeitung von Vitalparametern im Rahmen der intensiv- sowie normalstationären Versorgung eignen.
Die Profile der MII sind medizinisch qualitätsgesichert und weisen eine feingranulare Kodierung vor.

Durch die Übernahme der Profile der MII und Abbildung auf das ISIK-Setting, können feingranular kodierte Profile zu Vitalparametern im Krankenhauskontext genutzt werden - für die Normal- wie für die intensivmedizinische Versorgung.

## Designentscheidung
- Maximale Kardinalitäten von Coding Slices wurden von der MII übernommen
- Die Profil-Eigenschaften der MII-Profile, die den bisherigen, existenten Profilen in ISiK entsprechen, wurden in die existenten Profile übernommen.

## Intensivversorgung - PDMS 

### Normativer Status Intensivversorgung
Für folgende Profile, die den Festlegungen der MII entstammen, gelten gesonderte Festlegungen in Bezug auf die Notwendigkeit der Implementierung durch SW-Hersteller.

**Hinweis:** Hier wird jeweils die Canonical URL geführt. Die Profile lassen sich derzeit über die entsprechende [Simplifier Ressourcen-Seite](https://simplifier.net/isik-vitalparameter-v4/~resources?category=Profile&fhirVersion=R4&sortBy=LastUpdateDate_desc) einsehen.

### Profile und Beispiele für die Intensivversorgung
Folgende Profile MÜSSEN durch PDMS implementiert werden und - was als gleichwertig betrachtet wird - durch KIS, die als Dokumentationssystem in der Akutversorgung dienen (aber nicht durch die weiteren bestätigungsrelevanten Systeme):

- Pulmonalarterieller wedge Blutdruck (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-pulmonalarterieller-blutdruck
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/pulmonalarterieller-wedge-blutdruck
- Sauerstoffsättigung im Blut preduktal durch Pulsoxymetrie (Obs) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-o2saettigung-im-blut-preduktal-durch-pulsoxymetrie
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/sauerstoffsaettigung-im-blut-preduktal-durch-pulsoxymetrie
- Sauerstoffsättigung im Blut postduktal durch Pulsoxymetrie (Obs) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-o2saettigung-im-blut-postduktal-durch-pulsoxymetrie
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/sauerstoffsaettigung-im-blut-postduktal-durch-pulsoxymetrie
- Linksventrikulaeres Schlagvolumenindex (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventrikulaeres-schlagvolumenindex
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/linksventrikulaeres-schlagvolumenindex
- Linksv. Schlagvolumenindex durch Indikatorverd. (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventri-schlagvolumenindex-durch-indikatorverd  
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/linksventrikulaeres-schlagvolumenindex
- Linksv. Schlagvolumen durch Indikatorverdünnung (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventri-schlagvolumen-durch-indikatorverduennung
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/linksventrikulaeres-schlagvolumen-durch-indikatorverduennung
- Pulmonalvaskulärer Widerstandsindex (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-pulmonalvaskulaerer-widerstandsindex
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/pulmonalvaskulaerer-widerstandsindex
- Systemischer vaskulärer Widerstandsindex (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-systemischer-vaskulaerer-widerstandsindex
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/systemischer-vaskulaerer-widerstandsindex
- Linksventrikulärer Herzindex (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-links-herzindex-indikatorverduennung
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/linksventrikulaerer-herzindex
- Herzzeitvolumen (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-herzzeitvolumen
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/herzzeitvolumen
- Linksv. Herzindex durch Indikatorverdünnung (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-links-herzindex-indikatorverduennung
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/linksventrikulaerer-herzindex-durch-indikatorverduennung
- Linksv. Herzzeitvolumen durch Indikatorverdünnung (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventri-herzzeitvolumen-durch-indikatorverd
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/linksventrikulaeres-herzzeitvolumen-durch-indikatorverduennung
- Zentralvenöser Druck (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-zentralvenoeser-blutdruck
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/zentralvenoeser-blutdruck
- Linksatrialer Druck (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksatrialer-druck
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/linksatrialer-druck
- Rechtsatrialer Druck (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-rechtsatrialer-druck
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/rechtsatrialer-druck
- Rechtsventrikulärer Druck (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-rechtsventrikulaerer-druck
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/rechtsventrikulaerer-druck
- Linksventrikulärer Druck (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-linksventrikulaerer-druck
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/linksventrikulaerer-druck
- Pulmonalarterieller Blutdruck (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-pulmonalarterieller-blutdruck
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/pulmonalarterieller-blutdruck
- Koerpertemperatur Brustwirbelsaeule (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-brustwirbelsaeule
    - Beispiel: https://simplifier.net/isik-vitalparameter-v4/koerpertemperatur-brustwirbelsaeule
- Koerpertemperatur Lendenwirbelsaeule (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-lendenwirbelsaeule
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/koerpertemperatur-lendenwirbelsaeule
- Koerpertemperatur Halswirbelsaeule (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-halswirbelsaeule
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/koerpertemperatur-halswirbelsaeule
- Koerpertemperatur Brust (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-brust
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/koerpertemperatur-brust
- Koerpertemperatur Myokard (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-myokard
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/koerpertemperatur-myokard
- Koerpertemperatur Atemwege (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-atemwege
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/koerpertemperatur-atemwege
- Koerpertemperatur Blut (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-blut
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/koerpertemperatur-blut
- Koerpertemperatur Nasen-Rachen-Raum (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-nasen-rachen-raum
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/koerpertemperatur-nasen-rachen-raum
- Koerpertemperatur Speiseroehre (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-speiseroehre
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/koerpertemperatur-speiseroehre

## Normalversorgung - alle bestätigungsrelevanten Systeme 

### Normativer Status Normalversorgung
Alle bestätigungsrelevanten Systeme für dieses Modul MÜSSEN Ressourcen verarbeiten können, die zu folgenden Profilen konform sind.


### Profile und Beispiele für die Normalversorgung

- Intrakranieller Druck ICP (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-intrakranieller-druck-icp
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Intrakranieller-Druck-ICP
- Koerpergewicht Percentil altersabhängig (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpergewicht-percentil-altersabhaengig
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpergewicht-Percentile-altersabhaengig 
- Körpergrösse Percentil (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpergroesse-percentil
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpergroesse-Percentil
- Ideales Körpergewicht (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-ideales-koerpergewicht
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Ideales-Koerpergewicht
- Sauerstoffsättigung im art. Blut durch Pulsoxymetrie (Obs) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-o2saettigung-im-arteriellen-blut-durch-pulsoxymetrie
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Sauerstoffsaettigung-im-Arteriellen-Blut-durch-Pulsoxymetrie
- Puls (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-puls
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Puls
- Koerpertemperatur Kern (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-kern
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Kern
- Koerpertemperatur Gelenk (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-gelenk
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Gelenk
- Koerpertemperatur Stirn (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-stirn
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Stirn
- Koerpertemperatur nasal (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-nasal
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-nasal
- Koerpertemperatur Leiste (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-leiste
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Leiste
- Koerpertemperatur Achsel (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-achsel
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Achsel 
- Koerpertemperatur unter der Zunge (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-unter-der-zunge
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/koerpertemperatur-oral
- Koerpertemperatur vaginal (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-vaginal
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-vaginal
- Koerpertemperatur Harnblase (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-harnblase
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-Harnblase 
- Koerpertemperatur rektal (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-rektal
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/Koerpertemperatur-rektal
- Koerpertemperatur Trommelfell (Observation) - https://gematik.de/fhir/isik/StructureDefinition/sd-mii-icu-koerpertemperatur-trommelfell
    -  Beispiel: https://simplifier.net/isik-vitalparameter-v4/koerpertemperatur-trommelfell

Weiterhin gelten alle Profile des ISiK Moduls als relevant für die Normalversorgung.

## Hintergrundinformation
Die als "Generisch" ausgewiesenen Profile des [Moduls zur Intensivmedizinische Versorgung (ICU) der MII](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Intensivmedizin/MonitoringundVitaldaten.html) eignen sich nicht zur unmittelbaren Implementierung, sind jedoch dafür geeignet die Implementierung zu Vereinfachen, da sie die geteilten strukturellen Eigenschaften der von ihnen abgeleiteten, spezifischen Profile festlegen.

Die Liste deckt alle Profile ab aus der Subseite [Monitoring und Vitaldaten des MII IGs](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Intensivmedizin/MonitoringundVitaldaten.html) (Stand 8.2.2024).