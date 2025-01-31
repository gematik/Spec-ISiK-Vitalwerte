RuleSet: EKGDE
* category 1..
* category.coding = $observation-category#procedure
* code = $loinc#11524-6	// EKG study
* subject 1..
* effective[x] 1..
* value[x] ..0
* device 1..
* component 1..
* component.code from EkgAbleitungenVS (extensible)
* component.code ^binding.description = "Codes identifying the EKG lead"
* component.code.coding 1..
* component.value[x] 1..
* component.value[x] only SampledData
* component.value[x].data 1..

Profile: ISiKEkg
Parent: Observation
Id: ISiKEkg
* insert EKGDE
* insert Meta
* status MS
* category MS
* code MS
* subject MS
* encounter MS
* effective[x] MS
* device MS
* component MS
* component.code MS
* component.value[x] MS
* component.valueSampledData MS
* component.valueSampledData.origin MS
* component.valueSampledData.period MS
* component.valueSampledData.dimensions MS
* component.valueSampledData.data MS

Instance: ISiKEkgExample
InstanceOf: ISiKEkg
Usage: #example
* subject = Reference(PatientinMusterfrau)
* status = #final
* category = $observation-category#procedure
* device = Reference(ExampleDevice)
* effectiveDateTime = "2019-07-02"
* code.coding[0] = $loinc#LP6244-0 "EKG study"
* component[0].code.coding[0] = $sct#272729005 "Lead I"
* component[=].valueSampledData.origin.value = 2048
* component[=].valueSampledData.period = 10
* component[=].valueSampledData.dimensions = 1
* component[=].valueSampledData.data = "2041 2043 2037 2047 2060 2062 2051 2023 2014 2027 2034 2033 2040 2047 2047 2053 2058 2064 2059 2063 2061 2052 2053 2038 1966 1885 1884 2009 2129 2166 2137 2102 2086 2077 2067 2067 2060 2059 2062 2062 2060 2057 2045 2047 2057 2054 2042 2029 2027 2018 2007 1995 2001 2012 2024 2039 2068 2092 2111 2125 2131 2148 2137 2138 2128 2128 2115 2099 2097 2096 2101 2101 2091 2073 2076 2077 2084 2081 2088 2092 2070 2069 2074 2077 2075 2068 2064 2060 2062 2074 2075 2074 2075 2063 2058 2058 2064 2064 2070 2074 2067 2060 2062 2063 2061 2059 2048 2052 2049 2048 2051 2059 2059 2066 2077 2073"
* component[+].code.coding[0] = $sct#272730000 "Lead II"
* component[=].valueSampledData.origin.value = 2048
* component[=].valueSampledData.period = 10
* component[=].valueSampledData.dimensions = 1
* component[=].valueSampledData.data = "2041 2043 2037 2047 2060 2062 2051 2023 2014 2027 2034 2033 2040 2047 2047 2053 2058 2064 2059 2063 2061 2052 2053 2038 1966 1885 1884 2009 2129 2166 2137 2102 2086 2077 2067 2067 2060 2059 2062 2062 2060 2057 2045 2047 2057 2054 2042 2029 2027 2018 2007 1995 2001 2012 2024 2039 2068 2092 2111 2125 2131 2148 2137 2138 2128 2128 2115 2099 2097 2096 2101 2101 2091 2073 2076 2077 2084 2081 2088 2092 2070 2069 2074 2077 2075 2068 2064 2060 2062 2074 2075 2074 2075 2063 2058 2058 2064 2064 2070 2074 2067 2060 2062 2063 2061 2059 2048 2052 2049 2048 2051 2059 2059 2066 2077 2073"
* component[+].code.coding[0] = $sct#272731001 "Lead III"
* component[=].valueSampledData.origin.value = 2048
* component[=].valueSampledData.period = 10
* component[=].valueSampledData.dimensions = 1
* component[=].valueSampledData.data = "2041 2043 2037 2047 2060 2062 2051 2023 2014 2027 2034 2033 2040 2047 2047 2053 2058 2064 2059 2063 2061 2052 2053 2038 1966 1885 1884 2009 2129 2166 2137 2102 2086 2077 2067 2067 2060 2059 2062 2062 2060 2057 2045 2047 2057 2054 2042 2029 2027 2018 2007 1995 2001 2012 2024 2039 2068 2092 2111 2125 2131 2148 2137 2138 2128 2128 2115 2099 2097 2096 2101 2101 2091 2073 2076 2077 2084 2081 2088 2092 2070 2069 2074 2077 2075 2068 2064 2060 2062 2074 2075 2074 2075 2063 2058 2058 2064 2064 2070 2074 2067 2060 2062 2063 2061 2059 2048 2052 2049 2048 2051 2059 2059 2066 2077 2073"

ValueSet: EkgAbleitungenVS
Id: EkgAbleitungenVS
Title: "SNOMED CT codes der EKG Ableitungen"
Description: "ValueSet mit den SNOMED CT codes der EKG Ableitungen"
* insert Meta
* $sct#257472005 "aVF"
* $sct#257473000 "aVL"
* $sct#257474006 "aVR"
* $sct#285658004 "CM5"
* $sct#272728002 "ECG lead site"
* $sct#272729005 "Lead I"
* $sct#272730000 "Lead II"
* $sct#272731001 "Lead III"
* $sct#257475007 "Lead site V1"
* $sct#257476008 "Lead site V2"
* $sct#257477004 "Lead site V3"
* $sct#257478009 "Lead site V4"
* $sct#257479001 "Lead site V5"
* $sct#257480003 "Lead site V6"