��          �                 /     �   =          %  �   1  z     p   �       (        <  ~   E  �   �  @   m     �  �  �  /   Q  �   �     ]     i  �   u  z   c	  p   �	     O
  (   W
     �
  ~   �
  �     @   �     �   :program:`llvm-link` [*options*] *filename ...* :program:`llvm-link` takes several LLVM bitcode files and links them together into a single LLVM bitcode file.  It writes the output file to standard output, unless the :option:`-o` option is used to specify a filename. DESCRIPTION EXIT STATUS Enable binary output on terminals.  Normally, :program:`llvm-link` will refuse to write raw bitcode output if the output stream is a terminal. With this option, :program:`llvm-link` will write raw bitcode regardless of the output device. If :program:`llvm-link` succeeds, it will exit with 0.  Otherwise, if an error occurs, it will exit with a non-zero value. If specified, :program:`llvm-link` prints a human-readable version of the output bitcode file to standard error. OPTIONS Print a summary of command line options. SYNOPSIS Specify the output file name.  If ``filename`` is "``-``", then :program:`llvm-link` will write its output to standard output. Verbose mode.  Print information about what :program:`llvm-link` is doing. This typically includes a message for each bitcode file linked in and for each library found. Write output in LLVM intermediate language (instead of bitcode). llvm-link - LLVM bitcode linker Project-Id-Version: LLVM 3.8
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
 :program:`llvm-link` [*options*] *filename ...* :program:`llvm-link` takes several LLVM bitcode files and links them together into a single LLVM bitcode file.  It writes the output file to standard output, unless the :option:`-o` option is used to specify a filename. DESCRIPTION EXIT STATUS Enable binary output on terminals.  Normally, :program:`llvm-link` will refuse to write raw bitcode output if the output stream is a terminal. With this option, :program:`llvm-link` will write raw bitcode regardless of the output device. If :program:`llvm-link` succeeds, it will exit with 0.  Otherwise, if an error occurs, it will exit with a non-zero value. If specified, :program:`llvm-link` prints a human-readable version of the output bitcode file to standard error. OPTIONS Print a summary of command line options. SYNOPSIS Specify the output file name.  If ``filename`` is "``-``", then :program:`llvm-link` will write its output to standard output. Verbose mode.  Print information about what :program:`llvm-link` is doing. This typically includes a message for each bitcode file linked in and for each library found. Write output in LLVM intermediate language (instead of bitcode). llvm-link - LLVM bitcode linker 