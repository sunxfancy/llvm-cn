��          �               �  0   �  "   �               #  C   9  <   }  =   �  9   �  +   2     ^  #   x     �     �  �   �     U  (   ]     �  �   �  Z   O  I   �  J   �  E   ?  !   �  �  �  0   *  "   [     ~     �     �  C   �  <   �  =   7	  9   u	  +   �	     �	  #   �	     
     5
  �   A
     �
  (   �
       �     Z   �  I   '  J   q  E   �  !      :program:`llvm-readobj` [*options*] [*input...*] :program:`llvm-readobj` returns 0. DESCRIPTION Display all sections. Display file headers. Display the ELF .dynamic section table (only for ELF object files). Display the ELF program headers (only for ELF object files). Display the dynamic symbol table (only for ELF object files). Display the needed libraries (only for ELF object files). Display the relocation entries in the file. Display the symbol table. Display the version of this program Display unwind information. EXIT STATUS If ``input`` is "``-``" or omitted, :program:`llvm-readobj` reads from standard input. Otherwise, it will read from the specified ``filenames``. OPTIONS Print a summary of command line options. SYNOPSIS The :program:`llvm-readobj` tool displays low-level format-specific information about one or more object files. The tool and its output is primarily designed for use in FileCheck-based tests. When used with ``-relocations``, display each relocation in an expanded multi-line format. When used with ``-sections``, display relocations for each section shown. When used with ``-sections``, display section data for each section shown. When used with ``-sections``, display symbols for each section shown. llvm-readobj - LLVM Object Reader Project-Id-Version: LLVM 3.8
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
 :program:`llvm-readobj` [*options*] [*input...*] :program:`llvm-readobj` returns 0. DESCRIPTION Display all sections. Display file headers. Display the ELF .dynamic section table (only for ELF object files). Display the ELF program headers (only for ELF object files). Display the dynamic symbol table (only for ELF object files). Display the needed libraries (only for ELF object files). Display the relocation entries in the file. Display the symbol table. Display the version of this program Display unwind information. EXIT STATUS If ``input`` is "``-``" or omitted, :program:`llvm-readobj` reads from standard input. Otherwise, it will read from the specified ``filenames``. OPTIONS Print a summary of command line options. SYNOPSIS The :program:`llvm-readobj` tool displays low-level format-specific information about one or more object files. The tool and its output is primarily designed for use in FileCheck-based tests. When used with ``-relocations``, display each relocation in an expanded multi-line format. When used with ``-sections``, display relocations for each section shown. When used with ``-sections``, display section data for each section shown. When used with ``-sections``, display symbols for each section shown. llvm-readobj - LLVM Object Reader 