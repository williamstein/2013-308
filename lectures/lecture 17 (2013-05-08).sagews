︠49a20ddd-33c1-4088-a98f-38a9c24690e3i︠
%hide
%md
# Lecture 17: Determinants
### (needed for Eigenvalues and Eigenvectors)
### May 8, 2013

#### Notes

 1. Start Screencast

 2. Homework -- due Friday, May 10 and 11:59pm

 3. New Homework posted

 4. Questions --

 5. Determinants -- read Section 4.2 of book.




︡74ebc770-a0c5-4e44-9e28-8dec21249813︡{"html":"<h1>Lecture 17: Determinants</h1>\n\n<h3>(needed for Eigenvalues and Eigenvectors)</h3>\n\n<h3>May 8, 2013</h3>\n\n<h4>Notes</h4>\n\n<ol>\n<li><p>Start Screencast</p></li>\n<li><p>Homework &#8211; due Friday, May 10 and 11:59pm</p></li>\n<li><p>New Homework posted</p></li>\n<li><p>Questions &#8211;</p></li>\n<li><p>Determinants &#8211; read Section 4.2 of book.</p></li>\n</ol>\n"}︡
︠676e3ef3-7852-4e9e-862e-6db05c12d5c9i︠
%hide
%md
## Review: Eigenvalues and Eigenvectors

Given an $n\times n$ matrix $A$, we can compute all the eigenvalues and eigenvectors as follows.

1. Compute the **characteristic polynomial** $f(x) = \text{det}(x-A)$, which has degree $n$.

2. Then the **eigenvalues** $\lambda_i$ are the roots of $f$, i.e., the numbers such that $f(\lambda_i)=0$.

3. For each $\lambda$, find a basis $v_i$ of **eigenvectors** for the nullspace of $A-\lambda$.

**Theorem:** *Suppose the $v_i$ span $\mathbb{C}^n$.  Let $B$ be the matrix with columns the $v_i$, and $D$ the diagonal matrix with entries $\lambda_i$.  Then $ A = B D B^{-1}$.*

Proof: We have $ABe_i = BDe_i$ for each standard basis vector $e_i$.
︡7c3d51d8-10d0-4395-b959-89bff426c23e︡{"html":"<h2>Review: Eigenvalues and Eigenvectors</h2>\n\n<p>Given an $n\\times n$ matrix $A$, we can compute all the eigenvalues and eigenvectors as follows.</p>\n\n<ol>\n<li><p>Compute the <strong>characteristic polynomial</strong> $f(x) = \\text{det}(x-A)$, which has degree $n$.</p></li>\n<li><p>Then the <strong>eigenvalues</strong> $\\lambda_i$ are the roots of $f$, i.e., the numbers such that $f(\\lambda_i)=0$.</p></li>\n<li><p>For each $\\lambda$, find a basis $v_i$ of <strong>eigenvectors</strong> for the nullspace of $A-\\lambda$.</p></li>\n</ol>\n\n<p><strong>Theorem:</strong> <em>Suppose the $v_i$ span $\\mathbb{C}^n$.  Let $B$ be the matrix with columns the $v_i$, and $D$ the diagonal matrix with entries $\\lambda_i$.  Then $ A = B D B^{-1}$.</em></p>\n\n<p>Proof: We have $ABe_i = BDe_i$ for each standard basis vector $e_i$.</p>\n"}︡
︠d16de0c4-c3e0-4f1a-b48a-370ac8718926︠
f = charpoly(matrix(2,2,[1,2,3,4])); f
︡5765f019-e012-4b61-ab90-ee074e4ba6c3︡{"stdout":"x^2 - 5*x - 2\n"}︡
︠aace58ea-29fa-46ee-8455-ec2cc323a15e︠
solve(f(x)==0, x)
︡205fcb52-f49b-45a4-9d40-b3e112a5fbe4︡{"stdout":"[x == -1/2*sqrt(33) + 5/2, x == 1/2*sqrt(33) + 5/2]\n"}︡
︠b5ebcfc4-c36a-425e-adb9-b9b04582ee30i︠
%hide
%md

## Some pictures of $v$ and $v+Av$ like in the book

Page 269 of the book has two pictures like this, which are supposed to
geometrically illustrate the idea of eigenvectors...
︡fd9c4252-1b20-485d-916c-bf69794bf268︡{"html":"<h2>Some pictures of $v$ and $v+Av$ like in the book</h2>\n\n<p>Page 269 of the book has two pictures like this, which are supposed to \ngeometrically illustrate the idea of eigenvectors&#8230;</p>\n"}︡
︠0dea99e8-3c4a-4cb0-b283-1d47b75829c4︠
@interact(layout=[['A','n','frame', 'arrows']])
def f(A = ("$A=$",matrix(QQ,2,2,[2,0,0,-3])), n=(10,(4..100)), frame=False, arrows=True):
    g = Graphics()
    for theta in [0,2*pi/n,..,2*pi]:
        v = vector([cos(theta), sin(theta)])
        if arrows:
            g += arrow((0,0),v, width=1, arrowsize=2)
            g += arrow(v, v+ A*v, color="green", width=1, arrowsize=2)
        else:
            g += line([(0,0), v], thickness=.3)
            g += line([v, v + A*v], color='green', thickness=.3)

    f = charpoly(A)
    html("charpoly(A) = $%s$ = $%s$"%(latex(f), latex(f.change_ring(CC).factor())))
    B = 2
    g.show(aspect_ratio=1, svg=False, figsize=5, frame=frame, xmin=-B, xmax=B, ymin=-B, ymax=B)
︡fbe1943d-67d6-4e7b-9548-f21fa5dde893︡{"interact":{"style":"None","flicker":false,"layout":[[["A",3,null],["n",3,null],["frame",3,null],["arrows",3,null]],[["",12,null]]],"id":"13a0d8fd-d93b-4df3-a689-5478a53ef54a","controls":[{"control_type":"input-grid","ncols":2,"default":[["2","0"],["0","-3"]],"label":"$A=$","nrows":2,"width":5,"var":"A"},{"control_type":"slider","default":6,"var":"n","width":null,"vals":["4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59","60","61","62","63","64","65","66","67","68","69","70","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85","86","87","88","89","90","91","92","93","94","95","96","97","98","99","100"],"animate":true,"label":"n","display_value":true},{"default":false,"var":"frame","readonly":false,"control_type":"checkbox","label":"frame"},{"default":true,"var":"arrows","readonly":false,"control_type":"checkbox","label":"arrows"}]}}︡
︠2ff57699-d326-4829-bc5f-5c44dd82160b︠

