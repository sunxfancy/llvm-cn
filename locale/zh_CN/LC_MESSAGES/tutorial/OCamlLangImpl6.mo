��    7      �              �  �   �  �   "  M    �   e  �   D  �   �  >  �  |  
     �     �  �   �  H   �     �  �   �  f  �  <   �     +  �   =  �   �  �  �  �   �  \  v  �  �  D   d  �  �  �   2    �  �     �   �  T  k     �  �  �  �   �!  �  2"  �  �#     �%      �%     �%  D   �%  �   &&  x  �&  �   6(  �  ')     
+  [   +     n+  
   v+     �+  	   �+     �+  
   �+  	   �+     �+     �+  �  �+  �   U-  �   �-  M  �.  �   -0  �   1  �   �1  >  �2  |  �3     U5     l5  �   ~5  H   h6     �6  �   �6  f  O7  <   �8     �8  �   9  �   �9  �  �:  �   R<  \  >=  �  �>  D   ,@  �  q@  �   �A    �B  �   �D  �   �E  T  3F     �H  �  �I  �   \K  �  �K  �  �M     MO      kO     �O  D   �O  �   �O  x  �P  �   �Q  �  �R     �T  [   �T     6U  
   >U     IU  	   UU     _U  
   pU  	   {U     �U     �U   Adding support for user-defined binary operators is pretty simple with our current framework. We'll first add support for the unary/binary keywords: As with binary operators, we name unary operators with a name that includes the operator character. This assists us at code generation time. Speaking of, the final piece we need to add is codegen support for unary operators. It looks like this: As you can see above, the new code is actually really simple. It just does a lookup for the appropriate operator in the symbol table and generates a function call to it. Since user-defined operators are just built as normal functions (because the "prototype" boils down to a function with the right name) everything falls into place. At the end of this tutorial, we'll run through an example Kaleidoscope application that `renders the Mandelbrot set <#kicking-the-tires>`_. This gives an example of what you can build with Kaleidoscope and its feature set. At this point, you may be starting to realize that Kaleidoscope is a real and powerful language. It may not be self-similar :), but it can be used to plot things that are! Based on these simple primitive operations, we can start to define more interesting things. For example, here's a little function that solves for the number of iterations it takes a function in the complex plane to converge: Basically, before codegening a function, if it is a user-defined operator, we register it in the precedence table. This allows the binary operator parsing logic we already have in place to handle it. Since we are working on a fully-general operator precedence parser, this is all we need to do to "extend the grammar". Basically, in addition to knowing a name for the prototype, we now keep track of whether it was an operator, and if it was, what precedence level the operator is at. The precedence is only used for binary operators (as you'll see below, it just doesn't apply for unary operators). Now that we have a way to represent the prototype for a user-defined operator, we need to parse it: Chapter 6 Introduction Full Code Listing Given the previous if/then/else support, we can also define interesting functions for I/O. For example, the following prints out a character whose "density" reflects the value passed in: the lower the value, the denser the character: Given this, we can try plotting out the mandlebrot set! Lets try it out: Here is the code: Here is the complete code listing for our running example, enhanced with the if/then/else and for expressions.. To build this example, use: It is somewhat hard to believe, but with a few simple extensions we've covered in the last chapters, we have grown a real-ish language. With this, we can do a lot of interesting things, including I/O, math, and a bunch of other things. For example, we can now add a nice sequencing operator (printd is defined to print out the specified value and a newline): Kaleidoscope: Extending the Language: User-defined Operators Kicking the Tires Many languages aspire to being able to implement their standard runtime library in the language itself. In Kaleidoscope, we can implement significant parts of the language in the library! Now we have useful user-defined binary operators. This builds a lot on the previous framework we built for other operators. Adding unary operators is a bit more challenging, because we don't have any framework for it yet - lets see what it takes. On the other hand, we have to be able to represent the definitions of these new operators, in the "def binary\| 5" part of the function definition. In our grammar so far, the "name" for the function definition is parsed as the "prototype" production and into the ``Ast.Prototype`` AST node. To represent our new user-defined operators as prototypes, we have to extend the ``Ast.Prototype`` AST node like this: Since we don't currently support unary operators in the Kaleidoscope language, we'll need to add everything to support them. Above, we added simple support for the 'unary' keyword to the lexer. In addition to that, we need an AST node: Strikingly, variable mutation is an important feature of some languages, and it is not at all obvious how to `add support for mutable variables <OCamlLangImpl7.html>`_ without having to add an "SSA construction" phase to your front-end. In the next chapter, we will describe how you can add variable mutation without building SSA in your front-end. The "operator overloading" that we will add to Kaleidoscope is more general than languages like C++. In C++, you are only allowed to redefine existing operators: you can't programatically change the grammar, introduce new operators, change precedence levels, etc. In this chapter, we will add this capability to Kaleidoscope, which will let the user round out the set of operators that are supported. The final piece of code we are missing, is a bit of top level magic: The grammar we add is pretty straightforward here. If we see a unary operator when parsing a primary operator, we eat the operator as a prefix and parse the remaining piece as another unary operator. This allows us to handle multiple unary operators (e.g. "!!x"). Note that unary operators can't have ambiguous parses like binary operators can, so there is no need for precedence information. The next interesting thing to add, is codegen support for these binary operators. Given our current structure, this is a simple addition of a default case for our existing binary operator node: The point of going into user-defined operators in a tutorial like this is to show the power and flexibility of using a hand-written parser. Thus far, the parser we have been implementing uses recursive descent for most parts of the grammar and operator precedence parsing for the expressions. See `Chapter 2 <OCamlLangImpl2.html>`_ for details. Without using operator precedence parsing, it would be very difficult to allow the programmer to introduce new operators into the grammar: the grammar is dynamically extensible as the JIT runs. The problem with this function, is that we need to call ParseUnary from somewhere. To do this, we change previous callers of ParsePrimary to call ``parse_unary`` instead: The two specific features we'll add are programmable unary operators (right now, Kaleidoscope has no unary operators at all) as well as binary operators. An example of this is: This "z = z\ :sup:`2`\  + c" function is a beautiful little creature that is the basis for computation of the `Mandelbrot Set <http://en.wikipedia.org/wiki/Mandelbrot_set>`_. Our ``mandelconverge`` function returns the number of iterations that it takes for a complex orbit to escape, saturating to 255. This is not a very useful function by itself, but if you plot its value over a two-dimensional plane, you can see the Mandelbrot set. Given that we are limited to using putchard here, our amazing graphical output is limited, but we can whip together something using the density plotter above: This AST node is very simple and obvious by now. It directly mirrors the binary operator AST node, except that it only has one child. With this, we need to add the parsing logic. Parsing a unary operator is pretty simple: we'll add a new function to do it: This chapter of the tutorial takes a wild digression into adding user-defined operators to the simple and beautiful Kaleidoscope language. This digression now gives us a simple and ugly language in some ways, but also a powerful one at the same time. One of the great things about creating your own language is that you get to decide what is good or bad. In this tutorial we'll assume that it is okay to use this as a way to show some interesting parsing techniques. This code is similar to, but simpler than, the code for binary operators. It is simpler primarily because it doesn't need to handle any predefined operators. This is all fairly straightforward parsing code, and we have already seen a lot of similar code in the past. One interesting part about the code above is the couple lines that set up ``name`` for binary operators. This builds names like "binary@" for a newly defined "@" operator. This then takes advantage of the fact that symbol names in the LLVM symbol table are allowed to have any character in them, including embedded nul characters. This just adds lexer support for the unary and binary keywords, like we did in `previous chapters <OCamlLangImpl5.html#lexer-extensions-for-if-then-else>`_. One nice thing about our current AST, is that we represent binary operators with full generalisation by using their ASCII code as the opcode. For our extended operators, we'll use this same representation, so we don't need any new AST or parser support. User-defined Binary Operators User-defined Operators: the Idea User-defined Unary Operators We can also define a bunch of other "primitive" operations, such as: We will break down implementation of these features into two parts: implementing support for user-defined binary operators and adding unary operators. Welcome to Chapter 6 of the "`Implementing a language with LLVM <index.html>`_" tutorial. At this point in our tutorial, we now have a fully functional language that is fairly minimal, but also useful. There is still one big problem with it, however. Our language doesn't have many useful operators (like division, logical negation, or even any comparisons besides less-than). With these two simple changes, we are now able to parse unary operators and build the AST for them. Next up, we need to add parser support for prototypes, to parse the unary operator prototype. We extend the binary operator code above with: With this, we conclude the "adding user-defined operators" chapter of the tutorial. We have successfully augmented our language, adding the ability to extend the language in the library, and we have shown how this can be used to build a simple but interesting end-user application in Kaleidoscope. At this point, Kaleidoscope can build a variety of applications that are functional and can call functions with side-effects, but it can't actually define and mutate a variable itself. \_tags: `Next: Extending the language: mutable variables / SSA construction <OCamlLangImpl7.html>`_ ast.ml: bindings.c codegen.ml: lexer.ml: myocamlbuild.ml: parser.ml: token.ml: toplevel.ml: toy.ml: Project-Id-Version: LLVM 3.8
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
 Adding support for user-defined binary operators is pretty simple with our current framework. We'll first add support for the unary/binary keywords: As with binary operators, we name unary operators with a name that includes the operator character. This assists us at code generation time. Speaking of, the final piece we need to add is codegen support for unary operators. It looks like this: As you can see above, the new code is actually really simple. It just does a lookup for the appropriate operator in the symbol table and generates a function call to it. Since user-defined operators are just built as normal functions (because the "prototype" boils down to a function with the right name) everything falls into place. At the end of this tutorial, we'll run through an example Kaleidoscope application that `renders the Mandelbrot set <#kicking-the-tires>`_. This gives an example of what you can build with Kaleidoscope and its feature set. At this point, you may be starting to realize that Kaleidoscope is a real and powerful language. It may not be self-similar :), but it can be used to plot things that are! Based on these simple primitive operations, we can start to define more interesting things. For example, here's a little function that solves for the number of iterations it takes a function in the complex plane to converge: Basically, before codegening a function, if it is a user-defined operator, we register it in the precedence table. This allows the binary operator parsing logic we already have in place to handle it. Since we are working on a fully-general operator precedence parser, this is all we need to do to "extend the grammar". Basically, in addition to knowing a name for the prototype, we now keep track of whether it was an operator, and if it was, what precedence level the operator is at. The precedence is only used for binary operators (as you'll see below, it just doesn't apply for unary operators). Now that we have a way to represent the prototype for a user-defined operator, we need to parse it: Chapter 6 Introduction Full Code Listing Given the previous if/then/else support, we can also define interesting functions for I/O. For example, the following prints out a character whose "density" reflects the value passed in: the lower the value, the denser the character: Given this, we can try plotting out the mandlebrot set! Lets try it out: Here is the code: Here is the complete code listing for our running example, enhanced with the if/then/else and for expressions.. To build this example, use: It is somewhat hard to believe, but with a few simple extensions we've covered in the last chapters, we have grown a real-ish language. With this, we can do a lot of interesting things, including I/O, math, and a bunch of other things. For example, we can now add a nice sequencing operator (printd is defined to print out the specified value and a newline): Kaleidoscope: Extending the Language: User-defined Operators Kicking the Tires Many languages aspire to being able to implement their standard runtime library in the language itself. In Kaleidoscope, we can implement significant parts of the language in the library! Now we have useful user-defined binary operators. This builds a lot on the previous framework we built for other operators. Adding unary operators is a bit more challenging, because we don't have any framework for it yet - lets see what it takes. On the other hand, we have to be able to represent the definitions of these new operators, in the "def binary\| 5" part of the function definition. In our grammar so far, the "name" for the function definition is parsed as the "prototype" production and into the ``Ast.Prototype`` AST node. To represent our new user-defined operators as prototypes, we have to extend the ``Ast.Prototype`` AST node like this: Since we don't currently support unary operators in the Kaleidoscope language, we'll need to add everything to support them. Above, we added simple support for the 'unary' keyword to the lexer. In addition to that, we need an AST node: Strikingly, variable mutation is an important feature of some languages, and it is not at all obvious how to `add support for mutable variables <OCamlLangImpl7.html>`_ without having to add an "SSA construction" phase to your front-end. In the next chapter, we will describe how you can add variable mutation without building SSA in your front-end. The "operator overloading" that we will add to Kaleidoscope is more general than languages like C++. In C++, you are only allowed to redefine existing operators: you can't programatically change the grammar, introduce new operators, change precedence levels, etc. In this chapter, we will add this capability to Kaleidoscope, which will let the user round out the set of operators that are supported. The final piece of code we are missing, is a bit of top level magic: The grammar we add is pretty straightforward here. If we see a unary operator when parsing a primary operator, we eat the operator as a prefix and parse the remaining piece as another unary operator. This allows us to handle multiple unary operators (e.g. "!!x"). Note that unary operators can't have ambiguous parses like binary operators can, so there is no need for precedence information. The next interesting thing to add, is codegen support for these binary operators. Given our current structure, this is a simple addition of a default case for our existing binary operator node: The point of going into user-defined operators in a tutorial like this is to show the power and flexibility of using a hand-written parser. Thus far, the parser we have been implementing uses recursive descent for most parts of the grammar and operator precedence parsing for the expressions. See `Chapter 2 <OCamlLangImpl2.html>`_ for details. Without using operator precedence parsing, it would be very difficult to allow the programmer to introduce new operators into the grammar: the grammar is dynamically extensible as the JIT runs. The problem with this function, is that we need to call ParseUnary from somewhere. To do this, we change previous callers of ParsePrimary to call ``parse_unary`` instead: The two specific features we'll add are programmable unary operators (right now, Kaleidoscope has no unary operators at all) as well as binary operators. An example of this is: This "z = z\ :sup:`2`\  + c" function is a beautiful little creature that is the basis for computation of the `Mandelbrot Set <http://en.wikipedia.org/wiki/Mandelbrot_set>`_. Our ``mandelconverge`` function returns the number of iterations that it takes for a complex orbit to escape, saturating to 255. This is not a very useful function by itself, but if you plot its value over a two-dimensional plane, you can see the Mandelbrot set. Given that we are limited to using putchard here, our amazing graphical output is limited, but we can whip together something using the density plotter above: This AST node is very simple and obvious by now. It directly mirrors the binary operator AST node, except that it only has one child. With this, we need to add the parsing logic. Parsing a unary operator is pretty simple: we'll add a new function to do it: This chapter of the tutorial takes a wild digression into adding user-defined operators to the simple and beautiful Kaleidoscope language. This digression now gives us a simple and ugly language in some ways, but also a powerful one at the same time. One of the great things about creating your own language is that you get to decide what is good or bad. In this tutorial we'll assume that it is okay to use this as a way to show some interesting parsing techniques. This code is similar to, but simpler than, the code for binary operators. It is simpler primarily because it doesn't need to handle any predefined operators. This is all fairly straightforward parsing code, and we have already seen a lot of similar code in the past. One interesting part about the code above is the couple lines that set up ``name`` for binary operators. This builds names like "binary@" for a newly defined "@" operator. This then takes advantage of the fact that symbol names in the LLVM symbol table are allowed to have any character in them, including embedded nul characters. This just adds lexer support for the unary and binary keywords, like we did in `previous chapters <OCamlLangImpl5.html#lexer-extensions-for-if-then-else>`_. One nice thing about our current AST, is that we represent binary operators with full generalisation by using their ASCII code as the opcode. For our extended operators, we'll use this same representation, so we don't need any new AST or parser support. User-defined Binary Operators User-defined Operators: the Idea User-defined Unary Operators We can also define a bunch of other "primitive" operations, such as: We will break down implementation of these features into two parts: implementing support for user-defined binary operators and adding unary operators. Welcome to Chapter 6 of the "`Implementing a language with LLVM <index.html>`_" tutorial. At this point in our tutorial, we now have a fully functional language that is fairly minimal, but also useful. There is still one big problem with it, however. Our language doesn't have many useful operators (like division, logical negation, or even any comparisons besides less-than). With these two simple changes, we are now able to parse unary operators and build the AST for them. Next up, we need to add parser support for prototypes, to parse the unary operator prototype. We extend the binary operator code above with: With this, we conclude the "adding user-defined operators" chapter of the tutorial. We have successfully augmented our language, adding the ability to extend the language in the library, and we have shown how this can be used to build a simple but interesting end-user application in Kaleidoscope. At this point, Kaleidoscope can build a variety of applications that are functional and can call functions with side-effects, but it can't actually define and mutate a variable itself. \_tags: `Next: Extending the language: mutable variables / SSA construction <OCamlLangImpl7.html>`_ ast.ml: bindings.c codegen.ml: lexer.ml: myocamlbuild.ml: parser.ml: token.ml: toplevel.ml: toy.ml: 