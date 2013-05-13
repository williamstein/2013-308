︠687c9a70-9397-49ac-af9a-dce24b952731i︠
%hide
%md
# Lecture 19: Midterm 2 Review
### May 13, 2013

#### Notes

 1. Start Screencast

 2. Midterm 2 on Wednesday. It will be similar to Midterm 1, except the content.

 3. Questions

 4. Review
︡851da1a1-942e-4e7a-9c58-0f0aba3cb40b︡{"html":"<h1>Lecture 19: Midterm 2 Review</h1>\n\n<h3>May 13, 2013</h3>\n\n<h4>Notes</h4>\n\n<ol>\n<li><p>Start Screencast</p></li>\n<li><p>Midterm 2 on Wednesday. It will be similar to Midterm 1, except the content.</p></li>\n<li><p>Questions</p></li>\n<li><p>Review</p></li>\n</ol>\n"}︡
︠406c1b03-ca60-4fde-af0a-1cadc2739656i︠
%hide
%md
### Exam Topics

1. Linear Transformations (Section 3.6)

2. Determinants (Section 4.2)

3. Eigenvalues and Eigenvectors (Sections 4.1, 4.3)

︡0d13dfd7-c51b-4177-bdf5-9d8969323ebd︡{"html":"<h3>Exam Topics</h3>\n\n<ol>\n<li><p>Linear Transformations (Section 3.6)</p></li>\n<li><p>Determinants (Section 4.2)</p></li>\n<li><p>Eigenvalues and Eigenvectors (Sections 4.1, 4.3)</p></li>\n</ol>\n"}︡
︠5ae0702d-add8-4394-8e8c-99e98a83c6d5i︠
%hide
%md

### 1. Linear Transformations (Section 3.6)

#### Key Ideas:

 - Definition of a linear transformation

 - (\*) Correspondence between linear transformations and matrices

 - Kernel (=nullspace), Image (=column space),

 - Properties: composition, sum

 - Using a single matrix to describe a composition of many linear transformations

︡2d1f1b2d-9eaf-494d-9fe9-26bb9698fca7︡{"html":"<h3>1. Linear Transformations (Section 3.6)</h3>\n\n<h4>Key Ideas:</h4>\n\n<ul>\n<li><p>Definition of a linear transformation</p></li>\n<li><p>(*) Correspondence between linear transformations and matrices</p></li>\n<li><p>Kernel (=nullspace), Image (=column space),</p></li>\n<li><p>Properties: composition, sum</p></li>\n<li><p>Using a single matrix to describe a composition of many linear transformations</p></li>\n</ul>\n"}︡
︠6c1e383e-fe2a-4d54-ab6f-e5107b1250b4i︠
%hide
%md
#### Sample Questions:

1. Which of the following functions $f:\mathbb{R}^n \to \mathbb{R}^m$ are linear transformations?
 - $f(x,y) = (0,0)$
 - $f(x,y) = (x^2, y^2)$
 - $f(x,y) = (y,x)$
 - $f(x,y,z) = (0,y+1)$
 - $f(x) = (x,2x,3x)$
 - rotation around the origin in $\mathbb{R}^2$ clockwise by 45 degrees
 - $f(x) = (cos(x), sin(x))$

2. For each linear transformation from 1 above, find the corresponding matrix.

3. For each linear transformation above, find the kernel and image (i.e., nullspace and column space).

4. Find the matrix of the linear transformation that takes a vector $(x,y)$ in $\mathbb{R}^2$ and does the following to it:
    - multiplies it by $2$ (thus rescaling it to be twice as long), then
    - rotates it counterclockwise by 90 degrees, then
    - scales the $x$ coordinate by $2$ and the $y$-coordinates by $-2$, then
    - rotates it clockwise by 90 degrees.



︡f58728f6-c19a-4de9-855f-0a58ded34492︡{"html":"<h4>Sample Questions:</h4>\n\n<ol>\n<li><p>Which of the following functions $f:\\mathbb{R}^n \\to \\mathbb{R}^m$ are linear transformations?</p>\n\n<ul>\n<li>$f(x,y) = (0,0)$</li>\n<li>$f(x,y) = (x^2, y^2)$</li>\n<li>$f(x,y) = (y,x)$</li>\n<li>$f(x,y,z) = (0,y+1)$</li>\n<li>$f(x) = (x,2x,3x)$</li>\n<li>rotation around the origin in $\\mathbb{R}^2$ clockwise by 45 degrees</li>\n<li>$f(x) = (cos(x), sin(x))$</li>\n</ul></li>\n<li><p>For each linear transformation from 1 above, find the corresponding matrix.</p></li>\n<li><p>For each linear transformation above, find the kernel and image (i.e., nullspace and column space).</p></li>\n<li><p>Find the matrix of the linear transformation that takes a vector $(x,y)$ in $\\mathbb{R}^2$ and does the following to it:</p>\n\n<ul>\n<li>multiplies it by $2$ (thus rescaling it to be twice as long), then</li>\n<li>rotates it counterclockwise by 90 degrees, then</li>\n<li>scales the $x$ coordinate by $2$ and the $y$-coordinates by $-2$, then</li>\n<li>rotates it clockwise by 90 degrees.</li>\n</ul></li>\n</ol>\n"}︡
︠ad13567c-5b7a-44c0-b462-05be1cbf6b57i︠
%hide
%md

### 2. Determinants (Sections 4.2)

#### Key Ideas:

- Definition involving expansion by cofactors

- Special case when $n=2$.

- Properties: $|AB| = |A|\cdot |B|$,  $|A|=0$ if and only if $A$ is invertible, $|A^T|=|A|$.

- Determinant of upper or lower triangular matrix is product of diagonal entries

- Determinants of elementary matrices (way to compute det using row operations)

︡bb27737d-309a-4659-b6ce-ab9175ef1747︡{"html":"<h3>2. Determinants (Sections 4.2)</h3>\n\n<h4>Key Ideas:</h4>\n\n<ul>\n<li><p>Definition involving expansion by cofactors</p></li>\n<li><p>Special case when $n=2$.</p></li>\n<li><p>Properties: $|AB| = |A|\\cdot |B|$,  $|A|=0$ if and only if $A$ is invertible, $|A^T|=|A|$.</p></li>\n<li><p>Determinant of upper or lower triangular matrix is product of diagonal entries</p></li>\n<li><p>Determinants of elementary matrices (way to compute det using row operations)</p></li>\n</ul>\n"}︡
︠d1dca106-2522-4b28-b6a0-a088bccb2636i︠
%hide
%md
#### Sample Questions

1. Compute the determinant of $$A =\left(\begin{array}{rrr}
-6 & 0 & 0 \\\\
-1 & -3 & 1 \\\\
-3 & 0 & 3
\end{array}\right)$$ from the definition and using row operations.

2. Compute $|A^{-1}|$, where $A$ is as above.  (Hint: use that $1 = |I| = |AA^{-1}| = |A|\cdot |A^{-1}|$.)


︡ddf2f2af-4541-41e3-9c68-e5f3d9b7c423︡{"html":"<h4>Sample Questions</h4>\n\n<ol>\n<li><p>Compute the determinant of $$A =\\left(\\begin{array}{rrr}\n-6 &amp; 0 &amp; 0 \\\\\n-1 &amp; -3 &amp; 1 \\\\\n-3 &amp; 0 &amp; 3\n\\end{array}\\right)$$ from the definition and using row operations.</p></li>\n<li><p>Compute $|A^{-1}|$, where $A$ is as above.  (Hint: use that $1 = |I| = |AA^{-1}| = |A|\\cdot |A^{-1}|$.)</p></li>\n</ol>\n"}︡
︠5ae0701d-add8-4095-8e8c-99e98a83c6d5i︠
%hide
%md

### 3. Eigenvalues and Eigenvectors (Sections 4.1, 4.3)

#### Key Ideas:

- Definition of eigenvalues and eigenvectors of an $n\times n$ matrix

- Algorithm to find all eigenvalues by finding characteristic polynomial

- Algorithm to find eigenvectors: find basis for each eigenspace

- If dimensions of eigenspaces add to $n$, then how to write $A=BDB^{-1}$ with $D$ diagonal.  (Such a matrix $A$ is called *diagonalizable*.)

- Application: efficiently computing $A^k v$ for large $v$.

- Examples: matrices that are not diagonalizable; matrices with no real eigenvalues (rotation).

︡0e4636c7-f9a1-4a38-9dcc-193b76445a00︡{"html":"<h3>3. Eigenvalues and Eigenvectors (Sections 4.1, 4.3)</h3>\n\n<h4>Key Ideas:</h4>\n\n<ul>\n<li><p>Definition of eigenvalues and eigenvectors of an $n\\times n$ matrix</p></li>\n<li><p>Algorithm to find all eigenvalues by finding characteristic polynomial</p></li>\n<li><p>Algorithm to find eigenvectors: find basis for each eigenspace</p></li>\n<li><p>If dimensions of eigenspaces add to $n$, then how to write $A=BDB^{-1}$ with $D$ diagonal.  (Such a matrix $A$ is called <em>diagonalizable</em>.)</p></li>\n<li><p>Application: efficiently computing $A^k v$ for large $v$.</p></li>\n<li><p>Examples: matrices that are not diagonalizable; matrices with no real eigenvalues (rotation).</p></li>\n</ul>\n"}︡
︠5111eda0-62f2-4aab-9448-308e1c2e2f80i︠
%hide
%md
#### Sample  Questions

1. If $Av = 17v$, is $v$ necessarily an eigenvector for $A$?  (No, since we could have $v=0$ and eigenvectors are nonzero.)

2. Does every matrix with complex number entries have an eigenvector?

3. Find all eigenvalues and eigenvectors of $\left(\begin{array}{rr} 1 & 1 \\\\0 & 1\end{array}\right)$

4. Find all eigenvalues and eigenvectors of $A =\left(\begin{array}{rrr}
-6 & 0 & 0 \\\\
-1 & -3 & 1 \\\\
-3 & 0 & 3
\end{array}\right)$, and explicitly write $A=BDB^{-1}$ with $D$ diagonal. (Hint: as a check, eigenvalues are 3,-3,-6.)




︡e51201f1-1299-426d-901e-a4632a4eab90︡{"html":"<h4>Sample  Questions</h4>\n\n<ol>\n<li><p>If $Av = 17v$, is $v$ necessarily an eigenvector for $A$?  (No, since we could have $v=0$ and eigenvectors are nonzero.)</p></li>\n<li><p>Does every matrix with complex number entries have an eigenvector?</p></li>\n<li><p>Find all eigenvalues and eigenvectors of $\\left(\\begin{array}{rr} 1 &amp; 1 \\\\0 &amp; 1\\end{array}\\right)$</p></li>\n<li><p>Find all eigenvalues and eigenvectors of $A =\\left(\\begin{array}{rrr}\n-6 &amp; 0 &amp; 0 \\\\\n-1 &amp; -3 &amp; 1 \\\\\n-3 &amp; 0 &amp; 3\n\\end{array}\\right)$, and explicitly write $A=BDB^{-1}$ with $D$ diagonal. (Hint: as a check, eigenvalues are 3,-3,-6.)</p></li>\n</ol>\n"}︡
︠56ff5bad-f61e-45b0-96fd-8d830f26b555︠
# double check
set_random_seed(8);
a = random_matrix(ZZ,3)
show(a)
show(a.charpoly().factor())
a.eigenspaces_right()
︡89567bd4-0b32-41d4-9cf8-a57a3ea085f7︡{"tex":{"tex":"\\left(\\begin{array}{rrr}\n-6 & 0 & 0 \\\\\n-1 & -3 & 1 \\\\\n-3 & 0 & 3\n\\end{array}\\right)","display":true}}︡{"tex":{"tex":"(x - 3) \\cdot (x + 3) \\cdot (x + 6)","display":true}}︡{"stdout":"[\n(3, Vector space of degree 3 and dimension 1 over Rational Field\nUser basis matrix:\n[0 1 6]),\n(-3, Vector space of degree 3 and dimension 1 over Rational Field\nUser basis matrix:\n[0 1 0]),\n(-6, Vector space of degree 3 and dimension 1 over Rational Field\nUser basis matrix:\n[  1 2/9 1/3])\n]\n"}︡
︠5ae0700d-add8-4396-8e8c-99e98a83c6d5︠



