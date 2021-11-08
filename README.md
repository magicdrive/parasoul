parasoul
============

NAME
----
parasoul - Yet Another shell tool for executing jobs in parallel.

Usage
-----

```
USAGE:

  parasoul [OPTIONS] -- [LIST] # Yet Another shell tool for executing jobs in parallel.

OPTIONS:

  * [-h|--help]                             # Show this help.
  * [-v|--version]                          # Show parasoul version info.
  * [-j|--jobs] job-count                   # Execute in parallel with `job-count`
  * [-d|--delimiter] delimiter              # Specify list delimiter (default: [\n|\t|\s])
  * [-e|--command] command                  # Exec command template. (require: true)
  * [-I|--replace-token]                    # Specify replace token (default: {})
  * [-p|--pipe]                             # Force Pipe mode. (default: false)
  * [-s|--sequential]                       # Force Sequential mode. (force set --jobs 1)
  * [-q|--quiet]                            # Quiet mode. (default: false)

ex)
    parasoul --delimiter "@" --command "echo foo XXX" --replace-token "XXX" -- aaa@bbb@ccc@ddd

    echo aaa bbb ccc | parasoul --command "echo foo XXX" --replace-token "XXX" --pipe
```

Environments
-----

```
PARASOUL_DEFAULT_LIST_DELIMITER  # Default use delimiter. (default: [\n|\t|\s])
PARASOUL_DEFAULT_REPLACE_TOKEN   # Default use replace-token. (default: {})
PARASOUL_DEFAULT_JOBS            # Default use job-count. (default: 2)
PARASOUL_DEFAULT_PIPE_MODE       # Pipe mode default switch (deault: 0 (off))
PARASOUL_DEFAULT_SEQUENTIAL_MODE # Sequential mode default switch (deault: 0 (off))
PARASOUL_DEFAULT_QUIET_MODED     # Quiet mode default switch (deault: 0 (off))
```

Author

Copyright (c) 2021 Hiroshi IKEGAMI

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
