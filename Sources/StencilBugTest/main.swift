import Stencil

let aNilString: String? = nil

var testContext: [String: Any] = [
    "notNil": "I'm Not Nil" as Any,
    "nil": aNilString as Any
]

testContext["subDictionary"] = testContext

let templateString = """
{{ notNil|default:"It's Nil" }}
{{ nil|default:"It's Nil" }}
{{ subDictionary.notNil|default:"It's Nil" }}
{{ subDictionary.nil|default:"It's Nil" }}
"""

let template = Template(templateString: templateString)
let result = try template.render(testContext)
print(result)
