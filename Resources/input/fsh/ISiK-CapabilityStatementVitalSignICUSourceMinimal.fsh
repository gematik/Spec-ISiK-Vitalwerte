Instance: ISiKCapabilityStatementVitalSignICUSourceMinimal
InstanceOf: CapabilityStatement
Usage: #definition
* insert Meta-CapabilityStatement
* name = "ISiKCapabilityStatementVitalSignICUSourceMinimal"
* title = "ISiK CapabilityStatement VitalSign ICU Source Minimal"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.gematik.de"
* description = "Das vorliegende CapabilityStatement beschreibt verpflichtende Interaktionen die ein ISiK-konformes System zur Unterstützung des ICu-Normalstation-Workflows implementieren muss.
  
**HISTORIE:**    

**Version 4.0.1**

* `change` Die Verbindlichkeit des Suchparameters `subject` wurde von SHALL auf MAY reduziert, da der Suchparameter `patient` für ISiK-Zwecke ausreichend ist.   
* `change` Die Verbindlichkeit von Include und RevInclude wurde von SHALL auf MAY reduziert, außer bei den Parameter `patient` und `encounter`, da diese für ISiK-Zwecke ausreichend sind.  

"
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* instantiates = Canonical(ISiKCapabilityStatementVitalSignStandardSource)
* rest.mode = #server
* rest.resource[+]
* rest.resource[=].extension.url = $capabilitystatement-expectation
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].type = #Observation

// MII-ICU backport profiles for kis
* insert supporteProfile-SHALL(SD_MII_ICU_Intrakranieller_Druck_Icp, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpergewicht_Percentil_Altersabhaengig, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpergroesse_Percentil_Altersabhaengig, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Ideales_Koerpergewicht, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Sauerstoffsaettigung_Im_Arteriellen_Blut_Durch_Pulsoxymetrie, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Puls, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Kern, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Gelenk, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Stirn, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Nasal, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Leiste, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Achsel, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Oral, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Vaginal, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Harnblase, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Rektal, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Trommelfell, SHALL)


//Support fuer Laborprofile
* insert supportedLaborProfile

* rest.resource[=].interaction[0].extension.url = $capabilitystatement-expectation
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #read
* rest.resource[=].interaction[+].extension.url = $capabilitystatement-expectation
* rest.resource[=].interaction[=].extension.valueCode = #SHALL
* rest.resource[=].interaction[=].code = #search-type
* rest.resource[=].searchParam[0].extension.url = $capabilitystatement-expectation
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "_id"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/resource[=]-id"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = $capabilitystatement-expectation
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "category"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-category"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = $capabilitystatement-expectation
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "status"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-status"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = $capabilitystatement-expectation
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "date"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-date"
* rest.resource[=].searchParam[=].type = #date
* rest.resource[=].searchParam[+].extension.url = $capabilitystatement-expectation
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = $capabilitystatement-expectation
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "patient"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = $capabilitystatement-expectation
* rest.resource[=].searchParam[=].extension.valueCode = #MAY
* rest.resource[=].searchParam[=].name = "subject"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-subject"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = $capabilitystatement-expectation
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "encounter"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/clinical-encounter"
* rest.resource[=].searchParam[=].type = #reference
* rest.resource[=].searchParam[+].extension.url = $capabilitystatement-expectation
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "combo-code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-combo-code"
* rest.resource[=].searchParam[=].type = #token
* rest.resource[=].searchParam[+].extension.url = $capabilitystatement-expectation
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "combo-code-value-quantity"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-combo-code-value-quantity"
* rest.resource[=].searchParam[=].type = #composite
* rest.resource[=].searchParam[+].extension.url = $capabilitystatement-expectation
* rest.resource[=].searchParam[=].extension.valueCode = #SHALL
* rest.resource[=].searchParam[=].name = "component-code"
* rest.resource[=].searchParam[=].definition = "http://hl7.org/fhir/SearchParameter/Observation-component-code"
* rest.resource[=].searchParam[=].type = #token
