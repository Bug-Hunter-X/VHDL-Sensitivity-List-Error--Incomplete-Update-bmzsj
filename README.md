# VHDL Sensitivity List Bug

This repository demonstrates a common error in VHDL code: an incomplete sensitivity list in a process.  The `wrong_sensitivity.vhdl` file contains the buggy code, while `correct_sensitivity.vhdl` provides the corrected version.

**Problem:**

The original code's process only updates when the clock (`clk`) changes *or* when inputs `a` or `b` change.  However, if `a` or `b` changes asynchronously (without a clock edge), the output `c` will not update immediately, leading to incorrect behavior.

**Solution:**

The solution involves listing *only* the clock signal in the sensitivity list if you want synchronous logic:  The inputs 'a' and 'b' are read within the clocked process, causing the output to update only on the clock edge, regardless of asynchronous changes to 'a' or 'b'. This ensures proper synchronization.

**Lessons Learned:**

* Always carefully consider the sensitivity list in VHDL processes.
* Overly sensitive processes can lead to unintended resource consumption and unnecessary updates.
* Only list signals that are necessary for proper asynchronous operation in the process's sensitivity list, otherwise only the clock signal should be present in the sensitivity list. 
* Pay close attention to synchronous vs. asynchronous logic and how they affect your sensitivity list requirements.