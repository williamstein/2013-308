︠45394310-3af1-4a25-a2f6-f742f441ac40︠
md(r"""

# Lecture 8: Subspaces, Basis, Dimension, and Rank

### START THE GOOGLE+ Hangout ###

### Today and Friday we are covering Section 3.5 of [Poole].  You should **definitely** read it too!

*"... the most important ideas in the entire book."*

If you want, you can compute with the objects we will introduce today -- row spaces, column spaces, spans, kernels, etc., -- all  in a natural way using Sage (and **not** mathematica, matlab, etc.).  You can use Sage for free at

 - [http://sagecell.sagemath.org/](http://sagecell.sagemath.org/)
 - [http://uw.sagenb.org/](http://uw.sagenb.org/)
 - [https://cloud.sagemath.org/](https://cloud.sagemath.org/)
 - [http://sagemath.org/](http://sagemath.org/)       -- download to your computer from here

""")
︡67e994cc-21db-4011-98c3-869c714566bb︡{}︡{"html":"<h1>Lecture 8: Subspaces, Basis, Dimension, and Rank</h1>\n\n<h3>START THE GOOGLE+ Hangout</h3>\n\n<h3>Today and Friday we are covering Section 3.5 of [Poole].  You should <strong>definitely</strong> read it too!</h3>\n\n<p><em>\"... the most important ideas in the entire book.\"</em></p>\n\n<p>If you want, you can compute with the objects we will introduce today -- row spaces, column spaces, spans, kernels, etc., -- all  in a natural way using Sage (and <strong>not</strong> mathematica, matlab, etc.).  You can use Sage for free at</p>\n\n<ul>\n<li><a href=\"http://sagecell.sagemath.org/\">http://sagecell.sagemath.org/</a></li>\n<li><a href=\"http://uw.sagenb.org/\">http://uw.sagenb.org/</a></li>\n<li><a href=\"https://cloud.sagemath.org/\">https://cloud.sagemath.org/</a></li>\n<li><a href=\"http://sagemath.org/\">http://sagemath.org/</a>       -- download to your computer from here</li>\n</ul>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡
︠8e7e6bab-034b-47b2-8084-f485d93520f7︠
md(r"""

I left you hanging last time with this:

**Question:** Are $v\_1 = (1,2,3)$, $v\_2=(4,5,6)$, and $v\_3=(7,8,9)$ linearly independent?
/
**Answer:** NO. They are dependent. (1,-2,1).

""")




︡3c621db0-b6ef-44ec-9992-922dc0c11ec7︡{}︡{"html":"<p>I left you hanging last time with this:</p>\n\n<p><strong>Question:</strong> Are $v_1 = (1,2,3)$, $v_2=(4,5,6)$, and $v_3=(7,8,9)$ linearly independent?\n/\n<strong>Answer:</strong> NO. They are dependent. (1,-2,1).</p>\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡
︠447bfe3b-a550-45a4-a378-84cfae54ac7b︠
html(r"""
<h1>Linear Independence of Matrices</h1>

NOTE: The same definition of linear independence also makes sense for a set of matrices with the same number of rows and columns.

<br><br><br>
<b>Definition:</b> We say that the set of matrices $\{A_1,\ldots A_k\}$ are <b>linearly independent</b> if there is no way to find scalars $c_1, \ldots, c_k$ that are not all zero such that $c_1 A_1 + c_2 A_2 + \cdots + c_k A_k=0$.
<br><br>



""")
︡745e7845-a456-4c77-99b1-48ab7d91d393︡{}︡{"html":"\n<h1>Linear Independence of Matrices</h1>\n\nNOTE: The same definition of linear independence also makes sense for a set of matrices with the same number of rows and columns.\n\n<br><br><br>\n<b>Definition:</b> We say that the set of matrices $\\{A_1,\\ldots A_k\\}$ are <b>linearly independent</b> if there is no way to find scalars $c_1, \\ldots, c_k$ that are not all zero such that $c_1 A_1 + c_2 A_2 + \\cdots + c_k A_k=0$.\n<br><br>\n\n- Try some examples...\n\n\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠b3e553db-b462-4706-ac93-fe2ed98c8e0f︠








html(r"""
<h1>The Span of a Set of Vectors</h1>

<br><br>
This is yet another <i>new idea</i>.
<br><br>

<h3>Definition:</h3>
The <b>span</b> of the set $\{v_1,\ldots,v_k\}$ of vectors in $\mathbb{R}^n$ is the subset of $\mathbb{R}^n$ of all linear combinations
$$
  c_1 v_1 + c_2 v_2 + \cdots + c_k v_k,
$$
where $c_1, c_2, \ldots, c_k$ vary through all possible real numbers.

""")




︡f8b85dfa-3482-42d4-8711-3a762e01e9b9︡{}︡{"html":"\n<h1>The Span of a Set of Vectors</h1>\n\n<br><br>\nThis is yet another <i>new idea</i>.\n<br><br>\n\n<h3>Definition:</h3>\nThe <b>span</b> of the set $\\{v_1,\\ldots,v_k\\}$ of vectors in $\\mathbb{R}^n$ is the subset of $\\mathbb{R}^n$ of all linear combinations\n$$\n  c_1 v_1 + c_2 v_2 + \\cdots + c_k v_k,\n$$\nwhere $c_1, c_2, \\ldots, c_k$ vary through all possible real numbers.\n\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡{"stdout":"","done":true}︡
︠a8683668-fe10-40b5-a8af-70913f77b5e6︠
html(r"""
<h1>The Span of a Set of Vectors: Let's Try it out</h1>

<ol>
<li> What is the span of $\{(5)\} \subset \mathbb{R}^1$? </li>
<li> What is the span of $\{(1,2)\} \subset \mathbb{R}^2$? </li>
<li> What is the span of $\{(1,2), (2,4)\} \subset \mathbb{R}^2$? </li>
<li> What is the span of $\{(1,2), (3,4)\} \subset \mathbb{R}^2$? </li>
<li> What is the span of $\{(1,2,3)\} \subset \mathbb{R}^3$? </li>
<li> What is the span of $\{(1,2,3), (4,5,6)\} \subset \mathbb{R}^3$? </li>
<li> What is the span of $\{(1,0,0), (0,0,1), (0,0,1)\} \subset \mathbb{R}^3$? </li>
<li> What is the span of $\{(1,2,3), (4,5,6), (7,8,9)\} \subset \mathbb{R}^3$? </li>
<br>
<li> Do there always exist $n$ vectors that span $\mathbb{R}^n$?  Are they linearly independent?</li>
<br>
<li> Can $\mathbb{R}^n$ be spanned by less than $n$ vectors?  Rephrase this as a question about systems of linear equations.</li>
<li> Geometrically, what do spans look like?  Answer: point, line, plane, etc., through the origin.  That's *it*.  They all look like that.</li>
</ol>

""")
︡e31d0ad3-c02f-43ee-81f9-0b16bd83c606︡{}︡{"html":"\n<h1>The Span of a Set of Vectors: Let's Try it out</h1>\n\n<ol>\n<li> What is the span of $\\{(5)\\} \\subset \\mathbb{R}^1$? </li>\n<li> What is the span of $\\{(1,2)\\} \\subset \\mathbb{R}^2$? </li>\n<li> What is the span of $\\{(1,2), (2,4)\\} \\subset \\mathbb{R}^2$? </li>\n<li> What is the span of $\\{(1,2), (3,4)\\} \\subset \\mathbb{R}^2$? </li>\n<li> What is the span of $\\{(1,2,3)\\} \\subset \\mathbb{R}^3$? </li>\n<li> What is the span of $\\{(1,2,3), (4,5,6)\\} \\subset \\mathbb{R}^3$? </li>\n<li> What is the span of $\\{(1,0,0), (0,0,1), (0,0,1)\\} \\subset \\mathbb{R}^3$? </li>\n<li> What is the span of $\\{(1,2,3), (4,5,6), (7,8,9)\\} \\subset \\mathbb{R}^3$? </li>\n<br>\n<li> Do there always exist $n$ vectors that span $\\mathbb{R}^n$?  Are they linearly independent?</li>\n<br>\n<li> Can $\\mathbb{R}^n$ be spanned by less than $n$ vectors?  Rephrase this as a question about systems of linear equations.</li>\n<li> Geometrically, what do spans look like?  Answer: point, line, plane, etc., through the origin.  That's *it*.  They all look like that.</li>\n</ol>\n\n"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"once":true}︡
︠c585f10d-4a6f-4ad3-b769-cbfb575c9a03︠

︠9c4916c4-7c8e-497c-b7b7-55bdbb3c298c︠





