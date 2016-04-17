��    �      <              \  D   ]  j   �  �   	  @   �	  <   �	  D   
  =   ^
  �   �
  ^     H   |  ?   �  �     �   �     �  �       �  |   �  |   U    �  �   �  �   �  \  9  2  �  n   �  �   8  ]   �  �   T  y     �   �  >   �  5   �  1   �  2   (  -   [  +   �  g   �  k    �   �  }  N  �   �  �   �   �   d!  �   "  �   �"  [   F#  =   �#  J   �#  :   +$  o   f$  u   �$  y   L%  c   �%  P   *&    {&     �'     �'     �'  
   �'  	   �'     �'     �'     �'     �'  �   �'     �(     �(     �(     �(     �(     �(     �(     �(     )     /)     M)     h)     {)     �)     �)     �)  (   �)     *     *     6*     H*     W*     g*     v*     �*     �*     �*     �*     �*     �*     �*  (  �*  )   
,  "   4,  !   W,  %   y,  #   �,  (   �,  !   �,  %   -  '   4-     \-  Q   {-  W   �-  4   %.  M   Z.  B   �.     �.  	   /  	   /     /     $/    2/     40  �   B0     1     $1  c   11  	   �1     �1  �   �1     z2  C  �2  �  �3  N   �5  �   �5  �   �6  �  t7  D   �8  j   <9  �   �9  @   5:  <   v:  D   �:  =   �:  �   6;  ^   �;  H   <  ?   _<  �   �<  �   �=     >  �   �>    j?  |   rA  |   �A    lB  �   �C  �   RD  \  �D  2  0F  n   cG  �   �G  ]   �H  �   �H  y   �I  �   -J  >   K  5   ZK  1   �K  2   �K  -   �K  +   #L  g   OL  k  �L  �   #N  }  �N  �   fP  �   NQ  �   �Q  �   �R  �   XS  [   �S  =   <T  J   zT  :   �T  o    U  u   pU  y   �U  c   `V  P   �V    W     0X     8X     DX  
   PX  	   [X     eX     nX     tX     �X  �   �X     "Y     3Y     AY     OY     ]Y     nY     �Y     �Y     �Y     �Y     �Y     Z     Z     2Z     CZ     [Z  (   sZ     �Z     �Z     �Z     �Z     �Z     [     [     $[     4[     C[     O[     W[     e[     r[  (  {[  )   �\  "   �\  !   �\  %   ]  #   9]  (   ]]  !   �]  %   �]  '   �]     �]  Q   ^  W   g^  4   �^  M   �^  B   B_     �_  	   �_  	   �_     �_     �_    �_     �`  �   �`     �a     �a  c   �a  	   /b     9b  �   ?b     c  C  &c  �  jd  N   <f  �   �f  �   qg   **Output**: Assembler parsers' matcher functions, declarations, etc. **Output**: C++ code with enums and structures representing the register mappings, properties, masks, etc. **Output**: C++ code, implementing the target's CodeEmitter class by overriding the virtual functions as ``<Target>CodeEmitter::function()``. **Output**: Creates huge functions for automating DAG selection. **Output**: Decoding tables, static decoding functions, etc. **Output**: Enums, globals, local tables for sub-target information. **Output**: Generates ``Predicate`` and ``FastEmit`` methods. **Output**: Implement static functions to deal with calling conventions chained by matching styles, returning false on no match. **Output**: Implementation of ``<Target>InstPrinter::printInstruction()``, among other things. **Output**: Implements ``ARMAsmPrinter::emitPseudoExpansionLowering()``. **Output**: Scheduling tables for GPU back-ends (Hexagon, AMD). **Purpose**: CodeEmitterGen uses the descriptions of instructions and their fields to construct an automated code emitter: a function that, given a MachineInstr, returns the (currently, 32-bit unsigned) value of the instruction. **Purpose**: Contains disassembler table emitters for various architectures. Extensive documentation is written on the ``DisassemblerEmitter.cpp`` file. **Purpose**: Creates AttrDump.inc, which dumps information about an attribute. It is used to implement ``ASTDumper::dumpAttr``. **Purpose**: Creates AttrImpl.inc, which contains semantic attribute class definitions for any attribute in ``Attr.td`` that has not set ``ASTNode = 0``. This file is included as part of ``AttrImpl.cpp``. **Purpose**: Creates AttrList.inc, which is used when a list of semantic attribute identifiers is required. For instance, ``AttrKinds.h`` includes this file to generate the list of ``attr::Kind`` enumeration values. This list is separated out into multiple categories: attributes, inheritable attributes, and inheritable parameter attributes. This categorization happens automatically based on information in ``Attr.td`` and is used to implement the ``classof`` functionality required for ``dyn_cast`` and similar APIs. **Purpose**: Creates AttrPCHRead.inc, which is used to deserialize attributes in the ``ASTReader::ReadAttributes`` function. **Purpose**: Creates AttrPCHWrite.inc, which is used to serialize attributes in the ``ASTWriter::WriteAttributes`` function. **Purpose**: Creates AttrParsedAttrImpl.inc, which is used by ``AttributeList.cpp`` to implement several functions on the ``AttributeList`` class. This functionality is implemented via the ``AttrInfoMap ParsedAttrInfo`` array, which contains one element per parsed attribute object. **Purpose**: Creates AttrParsedAttrKinds.inc, which is used to implement the ``AttributeList::getKind`` function, mapping a string (and syntax) to a parsed attribute ``AttributeList::Kind`` enumeration. **Purpose**: Creates AttrParsedAttrList.inc, which is used to generate the ``AttributeList::Kind`` parsed attribute enumeration. **Purpose**: Creates AttrParserStringSwitches.inc, which contains StringSwitch::Case statements for parser-related string switches. Each switch is given its own macro (such as ``CLANG_ATTR_ARG_CONTEXT_LIST``, or ``CLANG_ATTR_IDENTIFIER_ARG_LIST``), which is expected to be defined before including AttrParserStringSwitches.inc, and undefined after. **Purpose**: Creates AttrSpellingListIndex.inc, which is used to map parsed attribute spellings (including which syntax or scope was used) to an attribute spelling list index. These spelling list index values are internal implementation details exposed via ``AttributeList::getAttributeSpellingListIndex``. **Purpose**: Creates AttrSpellings.inc, which is used to implement the ``__has_attribute`` feature test macro. **Purpose**: Creates AttrTemplateInstantiate.inc, which implements the ``instantiateTemplateAttribute`` function, used when instantiating a template that requires an attribute to be cloned. **Purpose**: Creates AttrVisitor.inc, which is used when implementing recursive AST visitors. **Purpose**: Creates Attrs.inc, which contains semantic attribute class declarations for any attribute in ``Attr.td`` that has not set ``ASTNode = 0``. This file is included as part of ``Attr.h``. **Purpose**: Creates ``AttributeReference.rst`` from ``AttrDocs.td``, and is used for documenting user-facing attributes. **Purpose**: Emits a target specifier matcher for converting parsed assembly operands in the MCInst structures. It also emits a matcher for custom operand parsing. Extensive documentation is written on the ``AsmMatcherEmitter.cpp`` file. **Purpose**: Emits an assembly printer for the current target. **Purpose**: Generate (target) intrinsic information. **Purpose**: Generate a DAG instruction selector. **Purpose**: Generate pseudo instruction lowering. **Purpose**: Generate subtarget enumerations. **Purpose**: Print enum values for a class. **Purpose**: Responsible for emitting descriptions of the calling conventions supported by this target. **Purpose**: This class parses the Schedule.td file and produces an API that can be used to reason about whether an instruction can be added to a packet on a VLIW architecture. The class internally generates a deterministic finite automaton (DFA) that models all possible mappings of machine instructions to functional units as instructions are added to a packet. **Purpose**: This tablegen backend emits an index of definitions in ctags(1) format. A helper script, utils/TableGen/tdtags, provides an easier-to-use interface; run 'tdtags -H' for documentation. **Purpose**: This tablegen backend emits code for use by the "fast" instruction selection algorithm. See the comments at the top of lib/CodeGen/SelectionDAG/FastISel.cpp for background. This file scans through the target's tablegen instruction-info files and extracts instructions with obvious-looking patterns, and it emits code to look up these instructions by type and operator. **Purpose**: This tablegen backend is responsible for emitting a description of a target register file for a code generator.  It uses instances of the Register, RegisterAliases, and RegisterClass classes to gather this information. **Purpose**: This tablegen backend is responsible for emitting a description of the target instruction set for the code generator. (what are the differences from CodeEmitter?) **Usage**: Both on ``<Target>BaseInstrInfo`` and ``<Target>MCTargetDesc`` (headers and source files) with macros defining in which they are for declaration vs. **Usage**: Both on ``<Target>BaseRegisterInfo`` and ``<Target>MCTargetDesc`` (headers and source files) with macros defining in which they are for declaration vs. initialization issues. **Usage**: Directly included in ``Disassembler/<Target>Disassembler.cpp`` to cater for all default decodings, after all hand-made ones. **Usage**: Implements private methods of the targets' implementation of ``FastISel`` class. **Usage**: Included directly into ``<Target>AsmPrinter.cpp``. **Usage**: Included directly into ``InstPrinter/<Target>InstPrinter.cpp``. **Usage**: Included directly on ``<Target>InstrInfo.cpp``. **Usage**: Included in ``<Target>ISelDAGToDAG.cpp`` inside the target's implementation of ``SelectionDAGISel``. **Usage**: Populates ``<Target>Subtarget`` and ``MCTargetDesc/<Target>MCTargetDesc`` files (both headers and source). **Usage**: Used in ISelLowering and FastIsel as function pointers to implementation returned by a CC sellection function. **Usage**: Used in back-ends' ``AsmParser/<Target>AsmParser.cpp`` for building the AsmParser class. **Usage**: Used to include directly at the end of ``<Target>MCCodeEmitter.cpp``. And just part of the generated file would be included. This is useful if you need the same information in multiple formats (instantiation, initialization, getter/setter functions, etc) from the same source TableGen file without having to re-compile the TableGen file multiple times. ArmNeon ArmNeonSema ArmNeonTest AsmMatcher AsmWriter AttrDocs CTags CallingConv Clang BackEnds Clang, on the other hand, uses it mainly for diagnostic messages (errors, warnings, tips) and attributes, so more on the textual end of the scale. ClangAttrClasses ClangAttrDump ClangAttrImpl ClangAttrList ClangAttrPCHRead ClangAttrPCHWrite ClangAttrParsedAttrImpl ClangAttrParsedAttrKinds ClangAttrParsedAttrList ClangAttrParserStringSwitches ClangAttrSpellingListIndex ClangAttrSpellings ClangAttrTemplateInstantiate ClangAttrVisitor ClangCommentCommandInfo ClangCommentCommandList ClangCommentHTMLNamedCharacterReferences ClangCommentHTMLTags ClangCommentHTMLTagsProperties ClangCommentNodes ClangDeclNodes ClangDiagGroups ClangDiagsDefs ClangDiagsIndexName ClangSACheckers ClangStmtNodes CodeEmitter DAGISel DFAPacketizer Disassembler FastISel For instance, a global contract is that each back-end produces macro-guarded sections. Based on whether the file is included by a header or a source file, or even in which context of each file the include is being used, you have todefine a macro just before including it, to get the right output: Generate ARM NEON sema support for clang. Generate ARM NEON tests for clang. Generate Clang AST comment nodes. Generate Clang AST declaration nodes. Generate Clang AST statement nodes. Generate Clang Static Analyzer checkers. Generate Clang diagnostic groups. Generate Clang diagnostic name index. Generate Clang diagnostics definitions. Generate arm_neon.h for clang. Generate command properties for commands that are used in documentation comments. Generate efficient matchers for HTML tag names that are used in documentation comments. Generate efficient matchers for HTML tag properties. Generate function to translate named character references to UTF-8 sequences. Generate list of commands that are used in documentation comments. How to write a back-end InstrInfo Intrinsic Introduction LLVM BackEnds On all LLVM back-ends, the ``llvm-tblgen`` binary will be executed on the root TableGen file ``<Target>.td``, which should include all others. This guarantees that all information needed is accessible, and that no duplication is needed in the TbleGen files. OptParserDefs Overall, each backend will take the same TableGen file type and transform into similar output for different targets/uses. There is an implicit contract between the TableGen files, the back-ends and their users. PseudoLowering RegisterInfo Sometimes, multiple macros might be defined before the same include file to output multiple blocks: Subtarget TODO. TODO: How they work, how to write one.  This section should not contain details about any particular backend, except maybe ``-print-enums`` as an example.  This should highlight the APIs in ``TableGen/Record.h``. TableGen BackEnds TableGen backends are at the core of TableGen's functionality. The source files provide the semantics to a generated (in memory) structure, but it's up to the backend to print this out in a way that is meaningful to the user (normally a C program including a file or a textual list of warnings, options and error messages). TableGen is used by both LLVM and Clang with very different goals. LLVM uses it as a way to automate the generation of massive amounts of information regarding instructions, schedules, cores and architecture features. Some backends generate output that is consumed by more than one source file, so they need to be created in a way that is easy to use pre-processor tricks. Some backends can also print C code structures, so that they can be directly included as-is. The macros will be undef'd automatically as they're used, in the include file. This document is raw. Each section below needs three sub-sections: description of its purpose with a list of users, output generated from generic input, and finally why it needed a new backend (in case there's something similar). Until we get a step-by-step HowTo for writing TableGen backends, you can at least grab the boilerplate (build system, new files, etc.) from Clang's r173931. Project-Id-Version: LLVM 3.8
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
 **Output**: Assembler parsers' matcher functions, declarations, etc. **Output**: C++ code with enums and structures representing the register mappings, properties, masks, etc. **Output**: C++ code, implementing the target's CodeEmitter class by overriding the virtual functions as ``<Target>CodeEmitter::function()``. **Output**: Creates huge functions for automating DAG selection. **Output**: Decoding tables, static decoding functions, etc. **Output**: Enums, globals, local tables for sub-target information. **Output**: Generates ``Predicate`` and ``FastEmit`` methods. **Output**: Implement static functions to deal with calling conventions chained by matching styles, returning false on no match. **Output**: Implementation of ``<Target>InstPrinter::printInstruction()``, among other things. **Output**: Implements ``ARMAsmPrinter::emitPseudoExpansionLowering()``. **Output**: Scheduling tables for GPU back-ends (Hexagon, AMD). **Purpose**: CodeEmitterGen uses the descriptions of instructions and their fields to construct an automated code emitter: a function that, given a MachineInstr, returns the (currently, 32-bit unsigned) value of the instruction. **Purpose**: Contains disassembler table emitters for various architectures. Extensive documentation is written on the ``DisassemblerEmitter.cpp`` file. **Purpose**: Creates AttrDump.inc, which dumps information about an attribute. It is used to implement ``ASTDumper::dumpAttr``. **Purpose**: Creates AttrImpl.inc, which contains semantic attribute class definitions for any attribute in ``Attr.td`` that has not set ``ASTNode = 0``. This file is included as part of ``AttrImpl.cpp``. **Purpose**: Creates AttrList.inc, which is used when a list of semantic attribute identifiers is required. For instance, ``AttrKinds.h`` includes this file to generate the list of ``attr::Kind`` enumeration values. This list is separated out into multiple categories: attributes, inheritable attributes, and inheritable parameter attributes. This categorization happens automatically based on information in ``Attr.td`` and is used to implement the ``classof`` functionality required for ``dyn_cast`` and similar APIs. **Purpose**: Creates AttrPCHRead.inc, which is used to deserialize attributes in the ``ASTReader::ReadAttributes`` function. **Purpose**: Creates AttrPCHWrite.inc, which is used to serialize attributes in the ``ASTWriter::WriteAttributes`` function. **Purpose**: Creates AttrParsedAttrImpl.inc, which is used by ``AttributeList.cpp`` to implement several functions on the ``AttributeList`` class. This functionality is implemented via the ``AttrInfoMap ParsedAttrInfo`` array, which contains one element per parsed attribute object. **Purpose**: Creates AttrParsedAttrKinds.inc, which is used to implement the ``AttributeList::getKind`` function, mapping a string (and syntax) to a parsed attribute ``AttributeList::Kind`` enumeration. **Purpose**: Creates AttrParsedAttrList.inc, which is used to generate the ``AttributeList::Kind`` parsed attribute enumeration. **Purpose**: Creates AttrParserStringSwitches.inc, which contains StringSwitch::Case statements for parser-related string switches. Each switch is given its own macro (such as ``CLANG_ATTR_ARG_CONTEXT_LIST``, or ``CLANG_ATTR_IDENTIFIER_ARG_LIST``), which is expected to be defined before including AttrParserStringSwitches.inc, and undefined after. **Purpose**: Creates AttrSpellingListIndex.inc, which is used to map parsed attribute spellings (including which syntax or scope was used) to an attribute spelling list index. These spelling list index values are internal implementation details exposed via ``AttributeList::getAttributeSpellingListIndex``. **Purpose**: Creates AttrSpellings.inc, which is used to implement the ``__has_attribute`` feature test macro. **Purpose**: Creates AttrTemplateInstantiate.inc, which implements the ``instantiateTemplateAttribute`` function, used when instantiating a template that requires an attribute to be cloned. **Purpose**: Creates AttrVisitor.inc, which is used when implementing recursive AST visitors. **Purpose**: Creates Attrs.inc, which contains semantic attribute class declarations for any attribute in ``Attr.td`` that has not set ``ASTNode = 0``. This file is included as part of ``Attr.h``. **Purpose**: Creates ``AttributeReference.rst`` from ``AttrDocs.td``, and is used for documenting user-facing attributes. **Purpose**: Emits a target specifier matcher for converting parsed assembly operands in the MCInst structures. It also emits a matcher for custom operand parsing. Extensive documentation is written on the ``AsmMatcherEmitter.cpp`` file. **Purpose**: Emits an assembly printer for the current target. **Purpose**: Generate (target) intrinsic information. **Purpose**: Generate a DAG instruction selector. **Purpose**: Generate pseudo instruction lowering. **Purpose**: Generate subtarget enumerations. **Purpose**: Print enum values for a class. **Purpose**: Responsible for emitting descriptions of the calling conventions supported by this target. **Purpose**: This class parses the Schedule.td file and produces an API that can be used to reason about whether an instruction can be added to a packet on a VLIW architecture. The class internally generates a deterministic finite automaton (DFA) that models all possible mappings of machine instructions to functional units as instructions are added to a packet. **Purpose**: This tablegen backend emits an index of definitions in ctags(1) format. A helper script, utils/TableGen/tdtags, provides an easier-to-use interface; run 'tdtags -H' for documentation. **Purpose**: This tablegen backend emits code for use by the "fast" instruction selection algorithm. See the comments at the top of lib/CodeGen/SelectionDAG/FastISel.cpp for background. This file scans through the target's tablegen instruction-info files and extracts instructions with obvious-looking patterns, and it emits code to look up these instructions by type and operator. **Purpose**: This tablegen backend is responsible for emitting a description of a target register file for a code generator.  It uses instances of the Register, RegisterAliases, and RegisterClass classes to gather this information. **Purpose**: This tablegen backend is responsible for emitting a description of the target instruction set for the code generator. (what are the differences from CodeEmitter?) **Usage**: Both on ``<Target>BaseInstrInfo`` and ``<Target>MCTargetDesc`` (headers and source files) with macros defining in which they are for declaration vs. **Usage**: Both on ``<Target>BaseRegisterInfo`` and ``<Target>MCTargetDesc`` (headers and source files) with macros defining in which they are for declaration vs. initialization issues. **Usage**: Directly included in ``Disassembler/<Target>Disassembler.cpp`` to cater for all default decodings, after all hand-made ones. **Usage**: Implements private methods of the targets' implementation of ``FastISel`` class. **Usage**: Included directly into ``<Target>AsmPrinter.cpp``. **Usage**: Included directly into ``InstPrinter/<Target>InstPrinter.cpp``. **Usage**: Included directly on ``<Target>InstrInfo.cpp``. **Usage**: Included in ``<Target>ISelDAGToDAG.cpp`` inside the target's implementation of ``SelectionDAGISel``. **Usage**: Populates ``<Target>Subtarget`` and ``MCTargetDesc/<Target>MCTargetDesc`` files (both headers and source). **Usage**: Used in ISelLowering and FastIsel as function pointers to implementation returned by a CC sellection function. **Usage**: Used in back-ends' ``AsmParser/<Target>AsmParser.cpp`` for building the AsmParser class. **Usage**: Used to include directly at the end of ``<Target>MCCodeEmitter.cpp``. And just part of the generated file would be included. This is useful if you need the same information in multiple formats (instantiation, initialization, getter/setter functions, etc) from the same source TableGen file without having to re-compile the TableGen file multiple times. ArmNeon ArmNeonSema ArmNeonTest AsmMatcher AsmWriter AttrDocs CTags CallingConv Clang BackEnds Clang, on the other hand, uses it mainly for diagnostic messages (errors, warnings, tips) and attributes, so more on the textual end of the scale. ClangAttrClasses ClangAttrDump ClangAttrImpl ClangAttrList ClangAttrPCHRead ClangAttrPCHWrite ClangAttrParsedAttrImpl ClangAttrParsedAttrKinds ClangAttrParsedAttrList ClangAttrParserStringSwitches ClangAttrSpellingListIndex ClangAttrSpellings ClangAttrTemplateInstantiate ClangAttrVisitor ClangCommentCommandInfo ClangCommentCommandList ClangCommentHTMLNamedCharacterReferences ClangCommentHTMLTags ClangCommentHTMLTagsProperties ClangCommentNodes ClangDeclNodes ClangDiagGroups ClangDiagsDefs ClangDiagsIndexName ClangSACheckers ClangStmtNodes CodeEmitter DAGISel DFAPacketizer Disassembler FastISel For instance, a global contract is that each back-end produces macro-guarded sections. Based on whether the file is included by a header or a source file, or even in which context of each file the include is being used, you have todefine a macro just before including it, to get the right output: Generate ARM NEON sema support for clang. Generate ARM NEON tests for clang. Generate Clang AST comment nodes. Generate Clang AST declaration nodes. Generate Clang AST statement nodes. Generate Clang Static Analyzer checkers. Generate Clang diagnostic groups. Generate Clang diagnostic name index. Generate Clang diagnostics definitions. Generate arm_neon.h for clang. Generate command properties for commands that are used in documentation comments. Generate efficient matchers for HTML tag names that are used in documentation comments. Generate efficient matchers for HTML tag properties. Generate function to translate named character references to UTF-8 sequences. Generate list of commands that are used in documentation comments. How to write a back-end InstrInfo Intrinsic Introduction LLVM BackEnds On all LLVM back-ends, the ``llvm-tblgen`` binary will be executed on the root TableGen file ``<Target>.td``, which should include all others. This guarantees that all information needed is accessible, and that no duplication is needed in the TbleGen files. OptParserDefs Overall, each backend will take the same TableGen file type and transform into similar output for different targets/uses. There is an implicit contract between the TableGen files, the back-ends and their users. PseudoLowering RegisterInfo Sometimes, multiple macros might be defined before the same include file to output multiple blocks: Subtarget TODO. TODO: How they work, how to write one.  This section should not contain details about any particular backend, except maybe ``-print-enums`` as an example.  This should highlight the APIs in ``TableGen/Record.h``. TableGen BackEnds TableGen backends are at the core of TableGen's functionality. The source files provide the semantics to a generated (in memory) structure, but it's up to the backend to print this out in a way that is meaningful to the user (normally a C program including a file or a textual list of warnings, options and error messages). TableGen is used by both LLVM and Clang with very different goals. LLVM uses it as a way to automate the generation of massive amounts of information regarding instructions, schedules, cores and architecture features. Some backends generate output that is consumed by more than one source file, so they need to be created in a way that is easy to use pre-processor tricks. Some backends can also print C code structures, so that they can be directly included as-is. The macros will be undef'd automatically as they're used, in the include file. This document is raw. Each section below needs three sub-sections: description of its purpose with a list of users, output generated from generic input, and finally why it needed a new backend (in case there's something similar). Until we get a step-by-step HowTo for writing TableGen backends, you can at least grab the boilerplate (build system, new files, etc.) from Clang's r173931. 