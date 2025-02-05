# README Validator Quality Checks

The [CI pipeline]((https://github.com/gematik/spec-ISiK-Terminplanung/blob/main-stufe-4/.github/workflows/main.yml)) ensures the quality of published ISiK conformance resources by utilizing the official Java FHIR validator. It performs comprehensive checks on most machine-readable FHIR artifacts in the repository. For detailed information about the validator, refer to [Using the FHIR Validator]((https://confluence.hl7.org/display/FHIR/Using+the+FHIR+Validator)).

## advisory.json

To facilitate easier identification of issues within profiles, ValueSets, CodeSystems, and examples, the validation pipeline aims to remain "clean." This means the validation output should be free of errors, warnings, and unnecessary informational messages, as cluttered outputs can obscure critical issues. The validator supports this goal through its ["advisor" framework]((https://confluence.hl7.org/display/FHIR/Validator+Advisor+Framework)), which allows specific messages to be suppressed. All suppressions are defined in the advisor.json file, located alongside this README. The following messages have been suppressed for the current ISiK module:

* http://hl7.org/fhir/StructureDefinition/Observation#dom-6 - ISiK resources do not contain a narrative. Ignore this best practice warning for now.
* http://hl7.org/fhir/StructureDefinition/StructureDefinition#dom-6 - ISiK resources do not contain a narrative. Ignore this best practice warning for now.
* http://hl7.org/fhir/StructureDefinition/ValueSet#dom-6 - ISiK resources do not contain a narrative. Ignore this best practice warning for now.
* http://hl7.org/fhir/StructureDefinition/Patient#dom-6 - ISiK resources do not contain a narrative. Ignore this best practice warning for now.
