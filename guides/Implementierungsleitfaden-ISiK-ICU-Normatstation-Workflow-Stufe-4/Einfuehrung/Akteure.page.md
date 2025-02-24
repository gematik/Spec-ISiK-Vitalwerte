---
topic: Akteure
---

# Akteure

Zur Umsetzung des vorliegenden Workflows MÜSSEN Systeme folgende Akteure implementieren (schematische Darstellung - eine technische Detaillierung mit normativer Geltung wird im CapabilityStatement getroffen):

## Minimal Administrative Data Source (bisher: “Server” bzw "Basis-Server")
Profile: ISIKPatient, ISiK Encounter, 

Interaktionen: READ, SEARCH


## Administrative Data Consumer (bisher: “Client” bzw "Basis-Client") 
Transaction (M): Find Administrative Data

Transaction (O): Patient Merge

## VitalSign Standard Source 
Transaction(M): Find Basic VitalSigns

Profile: ISiK Profile Vitalparameter (Blutdruck, Temp, Puls, O2 etc.)

Interaction: READ, SEARCH

## VitalSign Standard Consumer 
Transaction(M): Find Basic VitalSigns

## VitalSign ICU Source
Transaction(M): Find Advanced VitalSigns

Profile: Profile MI-I

Interaction: READ, SEARCH

## VitalSign ICU Consumer 
Transaction(M): Find Advanced VitalSigns

# Festlegung zur Implementierung der Akteure

Basis-Server entsprechend der Definition zu den [bestätigungsrelevanten Systeme](https://simplifier.net/guide/isik-basis-v4/UebergreifendeFestlegungen_BestaetigungsrelevanteSysteme?version=current) MÜSSEN folgende Akteure / Operationen implementieren:

- Minimal Administrative Data Source (bisher: “Server” bzw "Basis-Server")
- Administrative Data Consumer (bisher: “Client” bzw "Basis-Client") 
- VitalSign Standard Source 
- VitalSign-ICU Consumer 

Vitalparameter-Server entsprechend der Definition zu den [bestätigungsrelevanten Systeme](https://simplifier.net/guide/isik-basis-v4/UebergreifendeFestlegungen_BestaetigungsrelevanteSysteme?version=current) MÜSSEN folgende Akteure / Operationen implementieren:

- Minimal Administrative Data Source (bisher: “Server” bzw "Basis-Server")
- Administrative Data Consumer (bisher: “Client” bzw "Basis-Client") 
- VitalSign Standard Source 
- VitalSign Standard Consumer 
- VitalSign ICU Source
- VitalSign-ICU Consumer 

Primär hervorzuheben sind entsprechend der Definition der DKG dabei.

* KIS mit Funktion elektronische Kurve bzw. entsprechendes KIS-Modul
* Patientendaten-Managementsystem (PDMS) [z.B. für Intensivbereiche]
* Elektronische Kurve [z.B. für die Verwendung auf Normal-Stationen]

