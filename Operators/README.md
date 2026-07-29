# Verilog Operators

This repository contains simple Verilog examples for the most commonly used operators. Each operator includes a one-line explanation and a basic example, making it suitable for beginners, lab practice, and interview preparation.

---

# Contents

## 1. Arithmetic Operators
**Explanation:** Used to perform mathematical operations.

| Operator | Example |
|----------|---------|
| `+` | `assign y = a + b;` |
| `-` | `assign y = a - b;` |
| `*` | `assign y = a * b;` |
| `/` | `assign y = a / b;` |
| `%` | `assign y = a % b;` |

---

## 2. Relational Operators
**Explanation:** Used to compare two values and return `1` (true) or `0` (false).

| Operator | Example |
|----------|---------|
| `<` | `assign y = (a < b);` |
| `>` | `assign y = (a > b);` |
| `<=` | `assign y = (a <= b);` |
| `>=` | `assign y = (a >= b);` |

---

## 3. Equality Operators
**Explanation:** Used to check whether two operands are equal or not.

| Operator | Example |
|----------|---------|
| `==` | `assign y = (a == b);` |
| `!=` | `assign y = (a != b);` |
| `===` | `assign y = (a === b);` |
| `!==` | `assign y = (a !== b);` |

---

## 4. Logical Operators
**Explanation:** Used to perform logical operations on Boolean expressions.

| Operator | Example |
|----------|---------|
| `&&` | `assign y = a && b;` |
| `||` | `assign y = a || b;` |
| `!` | `assign y = !a;` |

---

## 5. Bitwise Operators
**Explanation:** Operate on each individual bit of the operands.

| Operator | Example |
|----------|---------|
| `&` | `assign y = a & b;` |
| `|` | `assign y = a \| b;` |
| `^` | `assign y = a ^ b;` |
| `~` | `assign y = ~a;` |
| `~^` / `^~` | `assign y = a ~^ b;` |

---

## 6. Reduction Operators
**Explanation:** Reduce all bits of a vector into a single-bit result.

| Operator | Example |
|----------|---------|
| `&` | `assign y = &a;` |
| `|` | `assign y = \|a;` |
| `^` | `assign y = ^a;` |
| `~&` | `assign y = ~&a;` |
| `~|` | `assign y = ~|a;` |
| `~^` / `^~` | `assign y = ~^a;` |

---

## 7. Shift Operators
**Explanation:** Shift the bits of a value to the left or right.

| Operator | Example |
|----------|---------|
| `<<` | `assign y = a << 1;` |
| `>>` | `assign y = a >> 1;` |

---

## 8. Concatenation Operator
**Explanation:** Combines multiple signals into a single vector.

| Operator | Example |
|----------|---------|
| `{}` | `assign y = {a, b};` |

---

## 9. Replication Operator
**Explanation:** Repeats the same value multiple times.

| Operator | Example |
|----------|---------|
| `{N{}}` | `assign y = {4{1'b1}};` |

---

## 10. Conditional (Ternary) Operator
**Explanation:** Selects one of two values based on a condition.

| Operator | Example |
|----------|---------|
| `?:` | `assign max = (a > b) ? a : b;` |

---

## 11. Indexing & Part Select
**Explanation:** Used to access one or more bits from a vector.

| Operator | Example |
|----------|---------|
| `[]` | `assign y = data[3];` |
| `[MSB:LSB]` | `assign y = data[7:4];` |

---

## Simulation Tools

- QuestaSim / ModelSim
- Vivado Simulator
- Quartus Prime
- Icarus Verilog

---

## Applications

- Digital Logic Design
- RTL Design
- FPGA Development
- ASIC Design
- VLSI Design & Verification
- Interview Preparation

---
