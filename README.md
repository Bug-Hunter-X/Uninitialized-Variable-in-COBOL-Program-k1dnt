# COBOL Uninitialized Variable Bug

This repository demonstrates a common error in COBOL programs: using an uninitialized variable.  The program attempts to sum amounts from a data file but fails to initialize the total amount variable, resulting in potentially incorrect results.  The solution demonstrates proper initialization.

## Bug

The `bug.cob` file contains the COBOL code with the uninitialized variable error. 

## Solution

The `bugSolution.cob` file shows how to correct the code to properly initialize `WS-TOTAL-AMOUNT` before performing the sum operation.