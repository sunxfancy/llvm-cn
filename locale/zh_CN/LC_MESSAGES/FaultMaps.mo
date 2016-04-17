��          �               L  �   M  �  �     �  �  �  �   g  d  �  
   a     l     �  k   �  m   	  X   |	  �   �	     X
  (  v
  �   �     �  f   �  �    �   �  �  &     �  �    �   �  d  K  
   �     �     �  k   �  m   ]  X   �  �   $     �  (  �  �   �     �  f      (Note that while we could deal with (1) using profiling data, dealing with (2) requires some information not present in branch profiles.) Code generated by managed language runtimes tend to have checks that are required for safety but never fail in practice.  In such cases, it is profitable to make the non-failing case cheaper even if it makes the failing case significantly more expensive.  This asymmetry can be exploited by folding such safety checks into operations that can be made to fault reliably if the check would have failed, and recovering from such a fault by using a signal handler. FaultMaps and implicit checks For example, Java requires null checks on objects before they are read from or written to.  If the object is ``null`` then a ``NullPointerException`` has to be thrown, interrupting normal execution.  In practice, however, dereferencing a ``null`` pointer is extremely rare in well-behaved Java programs, and typically the null check can be folded into a nearby memory operation that operates on the same memory location. Information about implicit checks generated by LLVM are put in a special "fault map" section.  On Darwin this section is named ``__llvm_faultmaps``. Making null checks implicit is an aggressive optimization, and it can be a net performance pessimization if too many memory operations end up faulting because of it.  A language runtime typically needs to ensure that only a negligible number of implicit null checks actually fault once the application has reached a steady state.  A standard way of doing this is by healing failed implicit null checks into explicit null checks via code patching or recompilation.  It follows that there are two requirements an explicit null check needs to satisfy for it to be profitable to convert it to an implicit null check: Motivation The Fault Map Section The ``ImplicitNullChecks`` pass The ``ImplicitNullChecks`` pass adds entries to the ``__llvm_faultmaps`` section described above as needed. The ``ImplicitNullChecks`` pass transforms explicit control flow for checking if a pointer is ``null``, like: The case where the pointer is actually null (i.e. the "failing" case) is extremely rare. The failing path heals the implicit null check into an explicit null check so that the application does not repeatedly page fault. The format of this section is The frontend is expected to mark branches that satisfy (1) and (2) using a ``!make.implicit`` metadata node (the actual content of the metadata node is ignored).  Only branches that are marked with ``!make.implicit`` metadata are considered as candidates for conversion into implicit null checks. This transform happens at the ``MachineInstr`` level, not the LLVM IR level (so the above example is only representative, not literal).  The ``ImplicitNullChecks`` pass runs during codegen, if ``-enable-implicit-null-checks`` is passed to ``llc``. ``make.implicit`` metadata to control flow implicit in the instruction loading or storing through the pointer being null checked: Project-Id-Version: LLVM 3.8
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
 (Note that while we could deal with (1) using profiling data, dealing with (2) requires some information not present in branch profiles.) Code generated by managed language runtimes tend to have checks that are required for safety but never fail in practice.  In such cases, it is profitable to make the non-failing case cheaper even if it makes the failing case significantly more expensive.  This asymmetry can be exploited by folding such safety checks into operations that can be made to fault reliably if the check would have failed, and recovering from such a fault by using a signal handler. FaultMaps and implicit checks For example, Java requires null checks on objects before they are read from or written to.  If the object is ``null`` then a ``NullPointerException`` has to be thrown, interrupting normal execution.  In practice, however, dereferencing a ``null`` pointer is extremely rare in well-behaved Java programs, and typically the null check can be folded into a nearby memory operation that operates on the same memory location. Information about implicit checks generated by LLVM are put in a special "fault map" section.  On Darwin this section is named ``__llvm_faultmaps``. Making null checks implicit is an aggressive optimization, and it can be a net performance pessimization if too many memory operations end up faulting because of it.  A language runtime typically needs to ensure that only a negligible number of implicit null checks actually fault once the application has reached a steady state.  A standard way of doing this is by healing failed implicit null checks into explicit null checks via code patching or recompilation.  It follows that there are two requirements an explicit null check needs to satisfy for it to be profitable to convert it to an implicit null check: Motivation The Fault Map Section The ``ImplicitNullChecks`` pass The ``ImplicitNullChecks`` pass adds entries to the ``__llvm_faultmaps`` section described above as needed. The ``ImplicitNullChecks`` pass transforms explicit control flow for checking if a pointer is ``null``, like: The case where the pointer is actually null (i.e. the "failing" case) is extremely rare. The failing path heals the implicit null check into an explicit null check so that the application does not repeatedly page fault. The format of this section is The frontend is expected to mark branches that satisfy (1) and (2) using a ``!make.implicit`` metadata node (the actual content of the metadata node is ignored).  Only branches that are marked with ``!make.implicit`` metadata are considered as candidates for conversion into implicit null checks. This transform happens at the ``MachineInstr`` level, not the LLVM IR level (so the above example is only representative, not literal).  The ``ImplicitNullChecks`` pass runs during codegen, if ``-enable-implicit-null-checks`` is passed to ``llc``. ``make.implicit`` metadata to control flow implicit in the instruction loading or storing through the pointer being null checked: 