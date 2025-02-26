Instance: ISiKCapabilityStatementVitalSignICUSourceExtended
InstanceOf: CapabilityStatement
Usage: #definition
* insert Meta-CapabilityStatement
* name = "ISiKCapabilityStatementVitalSignICUSourceExtended"
* title = "ISiK CapabilityStatement Vitalparameter Server Extended"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.gematik.de"
* description = "Das vorliegende CapabilityStatement beschreibt alle verpflichtenden Interaktionen die ein ISiK-konformes PDMS-System unterstützen muss um das Bestätigungsverfahren für das Modul Vitalparameter zu bestehen."
* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* instantiates = Canonical(ISiKCapabilityStatementVitalSignICUSource)
* rest.mode = #server
* rest.resource[+]
* rest.resource[=].extension.url = $capabilitystatement-expectation
* rest.resource[=].extension.valueCode = #SHALL
* rest.resource[=].type = #Observation

// MII-ICU backport profiles extended (e.g for PDMS)
* insert supporteProfile-SHALL(SD_MII_ICU_Pulmonalarterieller_Wedge_Druck, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Sauerstoffsaettigung_Im_Blut_Preduktal_Durch_Pulsoxymetrie, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Sauerstoffsaettigung_Im_Blut_Postduktal_Durch_Pulsoxymetrie, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Linksventrikulaeres_Schlagvolumenindex, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Linksventrikulaerer_Schlagvolumenindex_Durch_Indikatorverduennung, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Linksventrikulaeres_Schlagvolumen, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Linksventrikulaeres_Schlagvolumen_Durch_Indikatorverduennung, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Pulmonalvaskulaerer_Widerstandsindex, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Systemischer_Vaskulaerer_Widerstandsindex, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Linksventrikulaerer_Herzindex, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Herzzeitvolumen, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Linksventrikulaerer_Herzindex_Durch_Indikatorverduennung, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Linksventrikulaeres_Herzzeitvolumen_Durch_Indikatorverduennung, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Zentralvenoeser_Blutdruck, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Systemischer_Vaskulaerer_Widerstandsindex, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Linksatrialer_Druck, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Rechtsatrialer_Druck, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Rechtsventrikulaerer_Druck, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Linksventrikulaerer_Druck, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Pulmonalarterieller_Blutdruck, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Brustwirbelsaeule, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Lendenwirbelsaeule, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Halswirbelsaeule, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Brust, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Myokard, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Atemwege, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Blut, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Nasen_Rachen_Raum, SHALL)
* insert supporteProfile-SHALL(SD_MII_ICU_Koerpertemperatur_Speiseroehre, SHALL)

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
