; keywords
[
  "def"
  "if" "then" "else" "elif" "end"
  "reduce" "foreach" "try" "catch"
  "label" "as"
] @keyword

; constants
[
  "true" "false"
  "null"
] @constant

; operators
[
  "|" "."
  "+" "-" "*" "/"
  "==" "!=" "<" ">" "<=" ">="
  "//" "%"
] @operator

; punctuations
[
  "(" ")"
  "[" "]"
  "{" "}"
] @punctuation.bracket

[
  ","
  ":"
  ";"
] @punctuation.delimiter

(comment) @comment
(number) @number
(string) @string
(string_interp "\\(" @string.escape ")" @string.escape) @embedded
(variable) @variable

(query term: (index "." (identifier) @property))
(query term_with_object_access: (index "." (identifier) @property))
(query object_param: (string) @property)
(objectkey (identifier) @property)

; function definitions
(funcdef (identifier) @function)
(funcdefargs (variable) @variable.parameter)

; function calls
(_ function: (funcname) @function "(")
(_ chained_query: (query function: (funcname) @function))
