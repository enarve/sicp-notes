# Building Abstractions with Procedures

_Computational process_ manipulates data.

_Program_ — pattern of rules. Program direct processes.

_Interpreter_ carries out processes that were written in specific language.

## Elements of programming

Languages contain:
- primitive expressions
- means of combination
- means of abstraction

These are used for data and procedures.

### Expressions

Combinations: operator and operands. Prefix notation. Nested combinations.

_Read-eval-print_ loop of interpreter.

### Naming and environment

_Name_ identifies a _variable_, which stores object's _value_. Languages provide names to refer to objects.

Names are used to abstract and build objects of increasing complexity. In Scheme: `define`.

_Environment_ of interpreter is memory keeping track of name-object pairs.

### Evaluating combinations

Interpreter follows procedure:
1. evaluate subexpressions of combination
2. apply operator to operands

Thus evaluation process has _recursive_ nature.

Tree representation.

In the base case:
1. values of numerals are numbers that they name
2. built-in operators are machine-instruction sequences
3. values of other names stored in environment

(second one as a special case of the third)

_Special forms_ — exception to evaluation rules. For example, `(define x 3)` is not a combination and has own evaluation rule.

Various kinds of expressions with associated evaluation rules constitute the _syntax of programming language_.

### Compound procedures

Procedure definition.
```scheme
(define (square x) (* x x))
```
Definition is stored in environment under associated name. Creating procedure and giving it a name — two operations, here combined.

### The substitution model for procedure application

To apply compound procedure to arguments:
- evaluate the procedure with parameters replaced by arguments (substitution)

_Applicative-order evaluation_ — evaluate arguments and then apply.
_Normal-order evaluation_ — fully expand and then reduce.

### Conditional expressions and predicates

Case analysis. Clauses with predicates.

```scheme
(define (abs x)
  (cond ((> x 0) x)
        ((= x 0) 0)
        ((< x 0) (- x))))

(define (abs x)
  (if (< x 0)
      (- x)
      x))
```

Logical composition operations: `and`, `or`, `not`.

### Example: square roots by Newton's method

Procedures are much like mathematical functions. Procedures must be effective.