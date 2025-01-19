# Elixir Enum.each and Process.exit Bug

This repository demonstrates a subtle bug that can occur when using `Enum.each` in Elixir and prematurely exiting the loop with `Process.exit`.  The example shows how this can lead to incomplete processing of a list.

The `bug.ex` file contains the buggy code, while `bugSolution.ex` shows how to correctly handle the situation using a different approach.  Read the comments in the files for more details.

## How to reproduce

1. Clone this repository.
2. Navigate to the repository's directory.
3. Run `elixir bug.ex` to observe the incomplete processing.
4. Run `elixir bugSolution.ex` to see the corrected version.

## Solution

Instead of using `Process.exit`, the solution utilizes a conditional return within the anonymous function or other error handling mechanisms more suitable for this case.