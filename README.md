# Lua Nested Table Iteration Bug

This repository demonstrates a potential issue with Lua's `pairs` iterator when dealing with nested tables.  The bug arises from the fact that `pairs` doesn't guarantee iteration order, which can lead to unexpected results when modifying the table during traversal.

## Bug Description
The `bug.lua` file contains a function `foo` that recursively iterates through a nested table.  However, attempting to access elements after the function executes might result in incorrect values due to the indeterminate iteration order of `pairs`.

## Solution
The `bugSolution.lua` file provides a corrected approach using a different iteration technique that ensures predictable behavior. 

## How to Reproduce
1. Clone the repository.
2. Run `bug.lua` and observe the unexpected output.
3. Run `bugSolution.lua` and observe the corrected output.
