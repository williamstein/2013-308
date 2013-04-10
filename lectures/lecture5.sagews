
︠2ff86271-3c81-4b89-840b-24cf728390c3r︠
md("""
# Symmetric Matrices

Recall that if $A$ is a matrix, we defined the *transpose* $A^T$ of $A$.

If $A = (a\_{i,j})$ then $A^T = (a\_{j,i})$, for example.

**Definition**: A matrix is *symmetric* if $A^T = A$.

**Surprisingly Important Fact**: if $A$ and $B$ are matrices, then $(AB)^T = B^T A^T$.

Let's *prove* this formula in a moment by writing it all out in detail.  This is perhaps the first such proof we've done so far.

First note this corollary:

**Corollary**: If $A$ is a matrix, then $A A^T$ is symmetric. (Thus there is a symmetric matrix naturally associated to any matrix.)

Proof: Note that $(A A^T)^T = (A^T)^T A^T = A A^T$.


That was an easy proof.  But it relies on our formula for $(AB)^T$.
""")
︡142a0ce6-0a63-475d-8703-e7375e61adac︡{"done":false,"event":"output"}︡{"html":"<h1>Symmetric Matrices</h1>\n\n<p>Recall that if $A$ is a matrix, we defined the <em>transpose</em> $A^T$ of $A$.</p>\n\n<p>If $A = (a_{i,j})$ then $A^T = (a_{j,i})$, for example.</p>\n\n<p><strong>Definition</strong>: A matrix is <em>symmetric</em> if $A^T = A$.</p>\n\n<p><strong>Surprisingly Important Fact</strong>: if $A$ and $B$ are matrices, then $(AB)^T = B^T A^T$.</p>\n\n<p>Let's <em>prove</em> this formula in a moment by writing it all out in detail.  This is perhaps the first such proof we've done so far.</p>\n\n<p>First note this corollary:</p>\n\n<p><strong>Corollary</strong>: If $A$ is a matrix, then $A A^T$ is symmetric. (Thus there is a symmetric matrix naturally associated to any matrix.)</p>\n\n<p>Proof: Note that $(A A^T)^T = (A^T)^T A^T = A A^T$.</p>\n\n<p>That was an easy proof.  But it relies on our formula for $(AB)^T$.</p>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠2490972c-6ebc-496f-9e91-2e58b1b53617r︠

md(r"""
**Surprisingly Important Fact**: if $A$ and $B$ are matrices, then $(AB)^T = B^T A^T$.

Recall our *formula* for matrix multiplication.

Write $A=(a\_{i,j})$ and $B=(b\_{j,k})$.

Then the $i,k$ entry of $AB$ is $\sum_{j=1}^m a\_{i,j} b\_{j,k}$, where $m$ is the number of columns of $A$.

Thus the $k,i$ entry of $(AB)^T$ is $\sum\_{j=1}^m a\_{i,j} b\_{j,k}$.

Next, we consider the $k,i$ entry of $B^T A^T$.

As I will explain in class in words, we see that it is $\sum\_{j=1}^{n} b\_{j,k} a\_{i,j}$.  But those are the same (multiplication of numbers commutes)!  Nice.

""")

︡f31d7fae-7a0a-4771-bd94-1bf01289709c︡{"done":false,"event":"output"}︡{"html":"<p><strong>Surprisingly Important Fact</strong>: if $A$ and $B$ are matrices, then $(AB)^T = B^T A^T$.</p>\n\n<p>Recall our <em>formula</em> for matrix multiplication. </p>\n\n<p>Write $A=(a_{i,j})$ and $B=(b_{j,k})$.</p>\n\n<p>Then the $i,k$ entry of $AB$ is $\\sum_{j=1}^m a_{i,j} b_{j,k}$, where $m$ is the number of columns of $A$.</p>\n\n<p>Thus the $k,i$ entry of $(AB)^T$ is $\\sum_{j=1}^m a_{i,j} b_{j,k}$.</p>\n\n<p>Next, we consider the $k,i$ entry of $B^T A^T$.</p>\n\n<p>As I will explain in class in words, we see that it is $\\sum_{j=1}^{n} b_{j,k} a_{i,j}$.  But those are the same (multiplication of numbers commutes)!  Nice.</p>\n","done":false,"event":"output"}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"obj":"{}","javascript":{"coffeescript":false,"code":"cell.hide('editor')"},"done":false,"event":"output","once":true}︡{"stdout":"","done":true,"event":"output"}︡
︠6399de94-bd6f-4c20-9ee5-316d0b992f5c︠

︠a94b5583-006f-43eb-8c23-b65686394afc︠

︠b4a7de09-25a4-4aa1-ad54-bc5c8807a8fa︠

︠40af5596-2a4d-47f2-bf31-0468dc79758a︠

︠a66661a1-518b-48ce-997c-164bef5bae03︠

︠71e325d6-7980-4af8-93bf-4465f24fec7b︠

︠1ddedd5b-7b79-4cda-8b9e-197473f5dce9︠

︠330ec2e6-c045-485a-959c-7f4930e1ca9e︠

︠75a44741-8f8e-49b5-99f2-0ff68f7013c9︠

︠30de66c4-087e-4a12-a489-995bcd8300e9︠

︠52d20a9a-3d79-4740-8ccb-e7f5b8be9703︠

︠d5530465-bc7f-4682-a0ee-8810e13c7118︠

︠49a26166-0a9d-44a7-97ee-a29757e21a2e︠

︠7a88e081-bded-4a18-950b-5f82ea26dd09︠

︠eebc7e06-3fa8-4de8-b5fe-d3b32cfee1dd︠