###########################################################################
  git-archive-all.bat: A submodule-aware git-archive command for Windows.
###########################################################################

.. author: Andre Caron (andre.l.caron@gmail.com)

Introduction
============

This script is a supplement to ``git-archive`` which recursively puts submodule
code inside the archive.  It is implemented for the Windows command prompt as a
batch file for use on Windows systems (see "Related Projects" below for
rationale).

Basic usage is:

::

   git-archive-all archive.zip

Related Projects
================

#. `git-archive-all`_ is a Python version.  At the time of writing, it doesn't
   work on Windows due to the ``pwd`` command used indirectly by calling the
   ``git submodule foreach 'pwd'`` command which returns a MinGWGW-style
   absolute path using the ``/drive/path/to/file`` instead of the native
   ``drive:/path/to/file`` syntax.  Furthermore, it introduces a dependency on
   Python which may not be acceptable if you are not already using it in your
   workflow and it hasn't already been installed on your system.
#. `git-archive-all.sh`_ is a Bash version.  At the time of writing, it doesn't
   work with Git Bash on Windows (``mktemp`` command is missing and the ``zip``
   command refuses to merge archives).

_`git-archive-all`: https://github.com/Kentzo/git-archive-all
_`git-archive-all.sh`: https://github.com/meitar/git-archive-all.sh

Known Limitations
=================

Only the ``zip`` archive format is supported.  This is due to tuse of the
backing ``zip`` command which supports the ``-@`` option.  The ``tar`` archiver
does not seem to support a list of similar options.

Also, it only works on Windows (for obvious reasons).

License
=======

::

   Copyright (c) 2012, Andre Caron (andre.l.caron@gmail.com)
   All rights reserved.

   Redistribution and use in source and binary forms, with or without
   modification, are permitted provided that the following conditions are met:

   * Redistributions of source code must retain the above copyright notice,
     this list of conditions and the following disclaimer.

    * Redistributions in binary form must reproduce the above copyright notice,
      this list of conditions and the following disclaimer in the documentation
      and/or other materials provided with the distribution.

   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
   IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
   ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
   LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
   CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
   SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
   INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
   CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
   ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
   POSSIBILITY OF SUCH DAMAGE.
