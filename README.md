# ARTI 303 — Lab Assignment 04
## Variables & Unification in Prolog

**Course:** ARTI 303 — Programming for AI
**Lab:** 04

### Files
| File | Description |
|------|-------------|
| `Wesam.pl` | Prolog knowledge base (facts + brother rule) |
| `queries.txt` | Task 1 & Task 2 queries and Prolog answers |

### Knowledge Base
**Facts:**
- `male/1`, `female/1` — gender facts
- `parent/2` — parent relationships

**Rules:**
- `brother/2` — male sibling (shared parent)

### Task 1 — Unification Queries
Tested unification between atoms, structures, and variables:
- `house = house` → `true`
- `house = abc` → `false`
- `edge(a,b) = edge(C,b)` → `C = a`
- `edge(a,d) = edge(C,B)` → `C = a, B = d`
- `edge(A,f(g,h)) = edge(a,B)` → `A = a, B = f(g,h)`
- `edge(A,A) = edge(b,c)` → `false`
- `edge(A,A,A) = edge(b,c)` → `false`
- `A = B, B = f` → `A = f, B = f`
- `A = B, B = f, A = e` → `false`

### Task 2 — Family Facts Queries
1. All females → `sara`, `nora`
2. Any male → `true`
3. Grandparent of Faisal → `ali`
4. Daughters of Ahmad → `sara`, `nora`
5. Common parent of Ahmad & Muhammad → `ali`
6. Khan is brother of Nora → `true`

### How to Run
```prolog
?- consult('Wesam.pl').
?- female(X).
X = sara ;
X = nora.
