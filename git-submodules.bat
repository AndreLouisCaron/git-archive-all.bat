@echo off
rem -- Copyright (c) 2012, Andre Caron (andre.l.caron@gmail.com)
rem -- All rights reserved.
rem -- 
rem -- Redistribution and use in source and binary forms, with or without
rem -- modification, are permitted provided that the following conditions are
rem -- met:
rem --
rem --  * Redistributions of source code must retain the above copyright
rem --    notice, this list of conditions and the following disclaimer.
rem --
rem --  * Redistributions in binary form must reproduce the above copyright
rem --    notice, this list of conditions and the following disclaimer in the
rem --    documentation and/or other materials provided with the distribution.
rem --
rem -- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
rem -- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
rem -- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
rem -- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
rem -- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
rem -- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
rem -- LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
rem -- DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
rem -- THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
rem -- (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
rem -- OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

rem -- This stupid loop has to be in its own script because:
rem -- 1) the substring functionality doesn't work with
rem --    special variables and loop variables; and
rem -- 2) the `call:xyz` syntax for function calls can't be
rem --    used inside the for loop with backticks.

setlocal EnableDelayedExpansion

for /f "usebackq delims=" %%p in (
  `call git submodule --quiet foreach 'pwd'`
) do (
  set base=%%p & echo C:/!base:~3!
)

endlocal
exit /b 0
