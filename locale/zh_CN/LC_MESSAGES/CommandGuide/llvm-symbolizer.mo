��          �               L  �   M  $     v  B  T   �               "  k  .  e   �        %     h   .  A   �  1   �  �        �  �   �  >   6  �  u  �   �	  $   �
  v  �
  T   d     �     �     �  k  �  e   E     �  %   �  h   �  A   B  1   �  �   �     9  �   B  >   �   (Darwin-only flag). If the debug info for a binary isn't present in the default location, look for the debug info at the .dSYM path provided via the ``-dsym-hint`` flag. This flag can be used multiple times. :program:`llvm-symbolizer` [options] :program:`llvm-symbolizer` reads object file names and addresses from standard input and prints corresponding source code locations to standard output. If object file is specified in command line, :program:`llvm-symbolizer` processes only addresses from standard input, the rest is output verbatim. This program uses debug info sections and symbol table in the object files. :program:`llvm-symbolizer` returns 0. Other exit codes imply internal program error. DESCRIPTION EXAMPLE EXIT STATUS If a binary contains object files for multiple architectures (e.g. it is a Mach-O universal binary), symbolize the object file for a given architecture. You can also specify architecture by writing ``binary_name:arch_name`` in the input (see example above). If architecture is not specified in either way, address will not be symbolized. Defaults to empty string. If a source code location is in an inlined function, prints all the inlnied frames. Defaults to true. OPTIONS Path to object file to be symbolized. Prefer function names stored in symbol table to function names in debug info sections. Defaults to true. Print address before the source code location. Defaults to false. Print demangled function names. Defaults to true. Print human readable output. If ``-inlining`` is specified, enclosing scope is prefixed by (inlined by). Refer to listed examples. SYNOPSIS Specify the way function names are printed (omit function name, print short function name, or print full linkage name, respectively). Defaults to ``linkage``. llvm-symbolizer - convert addresses into source code locations Project-Id-Version: LLVM 3.8
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-04-17 11:36+0800
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: zh_Hans_CN
Language-Team: zh_Hans_CN <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.3
 (Darwin-only flag). If the debug info for a binary isn't present in the default location, look for the debug info at the .dSYM path provided via the ``-dsym-hint`` flag. This flag can be used multiple times. :program:`llvm-symbolizer` [options] :program:`llvm-symbolizer` reads object file names and addresses from standard input and prints corresponding source code locations to standard output. If object file is specified in command line, :program:`llvm-symbolizer` processes only addresses from standard input, the rest is output verbatim. This program uses debug info sections and symbol table in the object files. :program:`llvm-symbolizer` returns 0. Other exit codes imply internal program error. DESCRIPTION EXAMPLE EXIT STATUS If a binary contains object files for multiple architectures (e.g. it is a Mach-O universal binary), symbolize the object file for a given architecture. You can also specify architecture by writing ``binary_name:arch_name`` in the input (see example above). If architecture is not specified in either way, address will not be symbolized. Defaults to empty string. If a source code location is in an inlined function, prints all the inlnied frames. Defaults to true. OPTIONS Path to object file to be symbolized. Prefer function names stored in symbol table to function names in debug info sections. Defaults to true. Print address before the source code location. Defaults to false. Print demangled function names. Defaults to true. Print human readable output. If ``-inlining`` is specified, enclosing scope is prefixed by (inlined by). Refer to listed examples. SYNOPSIS Specify the way function names are printed (omit function name, print short function name, or print full linkage name, respectively). Defaults to ``linkage``. llvm-symbolizer - convert addresses into source code locations 