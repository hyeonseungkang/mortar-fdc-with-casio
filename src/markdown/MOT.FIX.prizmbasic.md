
# 수정
<span style="color:#0000c0;text-decoration:underline;">&quot;MOT.FIX&quot;</span>

# 사격방위각
<span style="color:#0000c0;text-decoration:underline;">&quot;MTAZ&quot;</span>? -&gt; A
A/<span style="color:#0000c0;text-decoration:underline;">160</span>*<span style="color:#0000c0;text-decoration:underline;">9</span> -&gt; A

# 수평거리
<span style="color:#0000c0;text-decoration:underline;">&quot;MTRN&quot;</span>? -&gt; B
B/<span style="color:#0000c0;text-decoration:underline;">10</span> -&gt; B
A+Bi -&gt; A

# 관목방위각
<span style="color:#0000c0;text-decoration:underline;">&quot;OTAZ&quot;</span>? -&gt; B
B/<span style="color:#0000c0;text-decoration:underline;">160</span>*<span style="color:#0000c0;text-decoration:underline;">9</span> -&gt; B

# 이전 수평수정량
<span style="color:#0000c0;text-decoration:underline;">&quot;DEF.PST.CORR&quot;</span>? -&gt; C
B+Ci -&gt; B

# 이전 사거리수정량
<span style="color:#0000c0;text-decoration:underline;">&quot;RN.PST.CORR&quot;</span>? -&gt; C

# 현재 수평수정량
<span style="color:#0000c0;text-decoration:underline;">&quot;DEF.PRE.CORR&quot;</span>? -&gt; D
C+Di -&gt; C

# 현재 사거리수정량
<span style="color:#0000c0;text-decoration:underline;">&quot;RN.PRE.CORR&quot;</span>? -&gt; D

# 최근 사격방위각
<span style="color:#0000c0;text-decoration:underline;">&quot;LAST.DEF&quot;</span>? -&gt; E
D+Ei -&gt; D

# 최근 사거리
<span style="color:#0000c0;text-decoration:underline;">&quot;LAST.RN&quot;</span>? -&gt; E

<span style="color:#804000;text-decoration:underline;">Rec</span>(
    <span style="color:#804000;text-decoration:underline;">ImP</span>(A),
    <span style="color:#0000c0;text-decoration:underline;">90</span>-<span style="color:#804000;text-decoration:underline;">ReP</span>(A)+<span style="color:#804000;text-decoration:underline;">ReP</span>(B)
)
I+Ji -&gt; F
<span style="color:#804000;text-decoration:underline;">Pol</span>(
    <span style="color:#804000;text-decoration:underline;">ReP</span>(F)+<span style="color:#804000;text-decoration:underline;">ImP</span>(B),
    <span style="color:#804000;text-decoration:underline;">ImP</span>(F)+<span style="color:#804000;text-decoration:underline;">ReP</span>(C)
)
I+Ji -&gt; G
<span style="color:#804000;text-decoration:underline;">Pol</span>(
    <span style="color:#804000;text-decoration:underline;">ReP</span>(F)+<span style="color:#804000;text-decoration:underline;">ImP</span>(B)+<span style="color:#804000;text-decoration:underline;">ImP</span>(C),
    <span style="color:#804000;text-decoration:underline;">ImP</span>(F)+<span style="color:#804000;text-decoration:underline;">ReP</span>(C)+<span style="color:#804000;text-decoration:underline;">ReP</span>(D)
)
<span style="color:#804000;text-decoration:underline;">Rec</span>(
    I,
    J+<span style="color:#0000c0;text-decoration:underline;">90</span>-<span style="color:#804000;text-decoration:underline;">ImP</span>(G)
)

# 설정 초기화
<span style="color:#008080;font-weight:bold;">Prog</span> <span style="color:#0000c0;text-decoration:underline;">&quot;ZCLNSETUP&quot;</span>

<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">1</span>, <span style="color:#0000c0;text-decoration:underline;">1</span>, <span style="color:#0000c0;text-decoration:underline;">&quot;DEF+0.&quot;</span>
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">8</span>, <span style="color:#0000c0;text-decoration:underline;">1</span>, <span style="color:#804000;text-decoration:underline;">ImP</span>(D)-I
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">1</span>, <span style="color:#0000c0;text-decoration:underline;">2</span>, <span style="color:#0000c0;text-decoration:underline;">&quot;DEF+2.&quot;</span>
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">8</span>, <span style="color:#0000c0;text-decoration:underline;">2</span>, <span style="color:#804000;text-decoration:underline;">ImP</span>(D)-I/<span style="color:#804000;text-decoration:underline;">ImP</span>(A)*<span style="color:#0000c0;text-decoration:underline;">10</span>
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">1</span>, <span style="color:#0000c0;text-decoration:underline;">3</span>, <span style="color:#0000c0;text-decoration:underline;">&quot;DEF+3.&quot;</span>
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">8</span>, <span style="color:#0000c0;text-decoration:underline;">3</span>, <span style="color:#804000;text-decoration:underline;">ImP</span>(D)-I/<span style="color:#804000;text-decoration:underline;">ImP</span>(A)*<span style="color:#0000c0;text-decoration:underline;">100</span>
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">1</span>, <span style="color:#0000c0;text-decoration:underline;">4</span>, <span style="color:#0000c0;text-decoration:underline;">&quot;RN&quot;</span>
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">8</span>, <span style="color:#0000c0;text-decoration:underline;">4</span>, E+(J-<span style="color:#804000;text-decoration:underline;">ReP</span>(G))
