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

(comment) @comment
(number) @number
(string) @string
(variable) @variable

; function definitions
(funcdef (identifier) @function)
(funcdefargs (identifier) @variable.parameter)

; function calls
((funcname) @function "(")
("|" (query (funcname)) @function)

; operators
[
  "|" "." ";"
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
] @punctuation.delimiter
