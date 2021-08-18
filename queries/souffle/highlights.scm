(COMMENT) @comment

(atom (identifier) @function)
(relation_decl (relation_list) @function)
(io_directive_list (io_relation_list) @function)

(non_empty_attributes [(IDENT) (COLON) (identifier) @type])

(IDENT) @identifier

(COLON) @punctuation.delimiter
(COMMA) @punctuation.delimiter
(EQUALS) @punctuation.delimiter
(SEMICOLON) @punctuation.delimiter
(DOT) @punctuation.delimiter

(LPAREN) @punctuation.bracket
(RPAREN) @punctuation.bracket
(LBRACKET) @punctuation.bracket
(RBRACKET) @punctuation.bracket

(IF) @operator
(STAR) @operator
(GE) @operator
(NE) @operator
(LE) @operator
(MINUS) @operator
(EXCLAMATION) @operator
(UNDERSCORE) @operator

(ERROR) @error

((include
     (filename) @string)) @include

(STRING) @string
(NUMBER) @number

(NIL) @constant.builtin

(DECL) @keyword
(INPUT_DECL) @keyword
(OUTPUT_DECL) @keyword
(TYPE) @keyword
(FUNCTOR) @keyword
