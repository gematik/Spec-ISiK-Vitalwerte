Instance: ISiKCapabilityStatementMinimalAdministrativeDataSource
InstanceOf: CapabilityStatement
Usage: #definition
* insert Meta-CapabilityStatement
* name = "ISiKCapabilityStatementISiKCapabilityStatementMinimalAdministrativeDataSource"
* title = "ISiK CapabilityStatementISiKCapabilityStatementMinimalAdministrativeDataSource"
* contact.telecom.system = #url
* contact.telecom.value = "https://www.gematik.de"
* description = "Das vorliegende CapabilityStatement beschreibt grundlegende Interaktionen die ein ISiK-konformes System unterstützen muss.

**HISTORIE:**    

*Historie*: mit der Version 4.0.1 des IG ICU-Normalstation-Workflow wurde das vorliegende CapabilityStatement überarbeitet.

*Version 4.0.0*  
* `change` Initialisierung des CapabilityStatements.   "

* jurisdiction = urn:iso:std:iso:3166#DE "Germany"
* kind = #requirements
* fhirVersion = #4.0.1
* format[0] = #application/fhir+xml
* format[+] = #application/fhir+json
* rest.mode = #server
* rest.resource[+]
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * type = #Patient
  * supportedProfile = "https://gematik.de/fhir/isik/v3/Basismodul/StructureDefinition/ISiKPatient"
  * interaction[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * code = #read
  * interaction[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * code = #search-type
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "_id"
    * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
    * type = #token
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "identifier"
    * definition = "http://hl7.org/fhir/SearchParameter/Patient-identifier"
    * type = #token
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "family"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-family"
    * type = #string
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "given"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-given"
    * type = #string
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "birthdate"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-birthdate"
    * type = #date
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHOULD
    * name = "gender"
    * definition = "http://hl7.org/fhir/SearchParameter/individual-gender"
    * type = #token
* rest.resource[+]
  * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
  * extension.valueCode = #SHALL
  * type = #Encounter
  * supportedProfile = "https://gematik.de/fhir/isik/v3/Basismodul/StructureDefinition/ISiKKontaktGesundheitseinrichtung"
  * interaction[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * code = #read
  * interaction[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * code = #search-type
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "_id"
    * definition = "http://hl7.org/fhir/SearchParameter/Resource-id"
    * type = #token
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "identifier"
    * definition = "http://hl7.org/fhir/SearchParameter/Encounter-identifier"
    * type = #token
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "status"
    * definition = "http://hl7.org/fhir/SearchParameter/Encounter-status"
    * type = #token  
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "class"
    * definition = "http://hl7.org/fhir/SearchParameter/Encounter-class"
    * type = #token
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "type"
    * definition = "http://hl7.org/fhir/SearchParameter/clinical-patient"
    * type = #reference
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "subject"
    * definition = "http://hl7.org/fhir/SearchParameter/Encounter-subject"
    * type = #reference
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "part-of"
    * definition = "http://hl7.org/fhir/SearchParameter/Encounter-part-of"
    * type = #reference
  * searchParam[+]
    * extension.url = "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation"
    * extension.valueCode = #SHALL
    * name = "date"
    * definition = "http://hl7.org/fhir/SearchParameter/Encounter-date"
    * type = #date