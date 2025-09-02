# Ռելյացիոն հանրահաշվի լեզու

Իրականացնել տվյալների բազաների ռելյացիոն հանրահաշվի լեզվի թարգմանիչ, որն
իր մուտքում տրված ծրագիրը թարգմանում է SQL-ի։

Հարաբերության սահմանումը, հարաբերության սխեմա։ Ռելյացիոն հանրահաշիվ,
գործողությունները։

```
Query = SecondaryQuery.
SecondaryQuery = PrimaryQuery { SetOperation PrimaryQuery }.
PrimaryQuery 
    = Relation
    | '(' SecondaryQuery ')'
    | 'π' '{' ArgumentList '}' '(' SecondaryQuery ')'
    | 'ρ' '{' Relation '}' '(' SecondaryQuery ')'
    | 'σ' '{' Predicate '}' '(' SecondaryQuery ')'.
Realtion = Identifier [ '(' ArgumentList ')' ].
SetOperation = "$\cup$" | "$\setminus$" | "$\cap$" | "$\times$" | "$join$".
ArgumentList = Identifier { ',' Identifier }.
Predicate = Disjunction.
Disjunction = Conjunction { '@or' Conjunction }.
Conjunction = Equality { '@and' Equality }.
Equality = Inequality [ ('=' | '<>') Inequality ].
Inequality = Negation [ ('>' | '>=' | '<' | '<=') Negation ].
Negation = ["@not"] Factor.
Factor
    = Identifier
    | '(' Disjunction ')'
    | String
    | Number.
```
