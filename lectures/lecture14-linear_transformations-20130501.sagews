︠59ab3704-9528-479d-a95e-0f4c36600f73i︠
%hide
%md

# Lecture 14 (May 1, 2013): Linear Transformations

Goals today:

1. Remember to turn on G+ screencast!
2. Reminder: homework due at midnight tonight
3. Note: there is new homework
4. Reminder: second midterm -- May 15, 2013
5. Other questions?
6. Today: linear transformations; Friday, start eigenvalues and eigenvectors
︡60512f4a-c4ee-4b4b-8d80-4470b549e53d︡{"html":"<h1>Lecture 14 (May 1, 2013): Linear Transformations</h1>\n\n<p>Goals today:</p>\n\n<ol>\n<li>Remember to turn on G+ screencast!</li>\n<li>Reminder: homework due at midnight tonight</li>\n<li>Note: there is new homework</li>\n<li>Reminder: second midterm &#8211; May 15, 2013</li>\n<li>Other questions?</li>\n<li>Today: linear transformations; Friday, start eigenvalues and eigenvectors</li>\n</ol>\n"}︡
︠d5b0db59-e6c3-4787-93e4-9aede3de874di︠
%hide
%md
### Recall: Standard Basis Vectors

Recall the standard basis vectors $e_i$ that have a $1$ in the $i$ position and $0$'s everwhere else.  They are a basis for $\mathbb{R}^n$.

︡319bcfe1-1171-40a4-b1b2-aa5b4e90bc30︡{"html":"<h3>Recall: Standard Basis Vectors</h3>\n\n<p>Recall the standard basis vectors $e_i$ that have a $1$ in the $i$ position and $0$&#8217;s everwhere else.  They are a basis for $\\mathbb{R}^n$.</p>\n"}︡
︠147cfc52-73ec-494e-bfb4-8c6d84e5ffbe︠
show((QQ^4).basis())
︡13abc850-071b-498c-bcd7-45056d45703f︡{"tex":{"tex":"\\left[\\left(1,\\,0,\\,0,\\,0\\right), \\left(0,\\,1,\\,0,\\,0\\right), \\left(0,\\,0,\\,1,\\,0\\right), \\left(0,\\,0,\\,0,\\,1\\right)\\right]","display":true}}︡
︠5fdb12d6-4e92-42ff-a9f0-387f81d0a9e3i︠
%hide
%md

### Definition: Linear Transformation

**Definition:** A *linear transformation* is a map $T:\mathbb{R}^m \to \mathbb{R}^n$ such that for all $u,v\in \mathbb{R}^m$ and $a,b\in\mathbb{R}$, we have $$T(au+bv) = aT(u) + bT(v).$$


### Linear transformations and matrices

Suppose $A$ is an $n \times m$ matrix.  Then $A$ defines a linear transformation $T=T_A$, given by $T_A(v) = Av$.   And all linear transformations are of this form:


**Proposition:** If $T$ is *any* linear transformation at all, then there is *a unique* matrix $A$ such that $T=T_A$.

Proof: Let $A$ be the matrix that has columns the images of the standard basis vectors $e_1,\ldots,e_m$ under $T$.  Note that $A e_i$ is the $i$th column of $A$, which is $T(e_i)$ by construction, so $T_A$ and $T$ agree on the standard basis vectors.   If $v$ is *any* element of $\mathbb{R}^m$, then we can write $v = \sum a_i e_i$, so $T(v) = \sum a_i T(e_i) = \sum a_i A e_i = \sum A a_i e_i = A v$.  This proves that $T_A(v) = Av$.
︡9932ab57-8b2b-439c-a63c-e512d2980a3b︡{"html":"<h3>Definition: Linear Transformation</h3>\n\n<p><strong>Definition:</strong> A <em>linear transformation</em> is a map $T:\\mathbb{R}^m \\to \\mathbb{R}^n$ such that for all $u,v\\in \\mathbb{R}^m$ and $a,b\\in\\mathbb{R}$, we have $$T(au+bv) = aT(u) + bT(v).$$</p>\n\n<h3>Linear transformations and matrices</h3>\n\n<p>Suppose $A$ is an $n \\times m$ matrix.  Then $A$ defines a linear transformation $T=T_A$, given by $T_A(v) = Av$.   And all linear transformations are of this form:</p>\n\n<p><strong>Proposition:</strong> If $T$ is <em>any</em> linear transformation at all, then there is <em>a unique</em> matrix $A$ such that $T=T_A$.</p>\n\n<p>Proof: Let $A$ be the matrix that has columns the images of the standard basis vectors $e_1,\\ldots,e_m$ under $T$.  Note that $A e_i$ is the $i$th column of $A$, which is $T(e_i)$ by construction, so $T_A$ and $T$ agree on the standard basis vectors.   If $v$ is <em>any</em> element of $\\mathbb{R}^m$, then we can write $v = \\sum a_i e_i$, so $T(v) = \\sum a_i T(e_i) = \\sum a_i A e_i = \\sum A a_i e_i = A v$.  This proves that $T_A(v) = Av$.</p>\n"}︡
︠f947875a-a26a-4b8a-a75b-8f3d6c6a947di︠
%hide
%md
### Examples:

Which of the following maps $T:\mathbb{R}^2\to \mathbb{R}^2$ is a linear transformation?
For the ones that are, find the matrix $A$ such that $T=T_A$. For the ones that aren't, give
an example of $u,v \in \mathbb{R}^2$ and $a,b\in\mathbb{R}$ such that $T(au+bv)\neq a T(u) + bT(v)$.

1. $T(x,y) = (x^2,y^2)$

2. $T(x,y) = (x,0)$

3. $T(x,y) = (-y,x+1)$

4. $T(v) = $ "rotate the vector $v$ by 90 degrees counterclockwise"

5. $T(x,y) = (2x, \pi y)$

6. $T(x,y) = xy$

7. $T(v) = $ "rotate the vector $v$ by 45 degrees clockwise"

8. $T:\mathbb{R}^2\to \mathbb{R}^3$ given by $T(x,y) = (x+2y, 2x-y, -y)$

︡c5394135-58c6-4b9b-ac24-b5cf19523412︡{"html":"<h3>Examples:</h3>\n\n<p>Which of the following maps $T:\\mathbb{R}^2\\to \\mathbb{R}^2$ is a linear transformation?\nFor the ones that are, find the matrix $A$ such that $T=T_A$. For the ones that aren&#8217;t, give\nan example of $u,v \\in \\mathbb{R}^2$ and $a,b\\in\\mathbb{R}$ such that $T(au+bv)\\neq a T(u) + bT(v)$.</p>\n\n<ol>\n<li><p>$T(x,y) = (x^2,y^2)$</p></li>\n<li><p>$T(x,y) = (x,0)$</p></li>\n<li><p>$T(x,y) = (-y,x+1)$</p></li>\n<li><p>$T(v) = $ &#8220;rotate the vector $v$ by 90 degrees counterclockwise&#8221;</p></li>\n<li><p>$T(x,y) = (2x, \\pi y)$</p></li>\n<li><p>$T(x,y) = xy$</p></li>\n<li><p>$T(v) = $ &#8220;rotate the vector $v$ by 45 degrees clockwise&#8221;</p></li>\n<li><p>$T:\\mathbb{R}^2\\to \\mathbb{R}^3$ given by $T(x,y) = (x+2y, 2x-y, -y)$</p></li>\n</ol>\n"}︡
︠813e2980-88b3-42b2-a942-f9c971520a3a︠













































