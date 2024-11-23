
# 방안좌표법
<span style="color:#0000c0;text-decoration:underline;">&quot;MOT.GRID&quot;</span>

# 목표 좌표
<span style="color:#0000c0;text-decoration:underline;">&quot;XT&quot;</span>? -&gt; A
<span style="color:#0000c0;text-decoration:underline;">&quot;YT&quot;</span>? -&gt; B
A+Bi -&gt; A
<span style="color:#0000c0;text-decoration:underline;">&quot;HT&quot;</span>? -&gt; B

# 포진 좌표
<span style="color:#0000c0;text-decoration:underline;">&quot;XMP&quot;</span>? -&gt; C
<span style="color:#0000c0;text-decoration:underline;">&quot;YMP&quot;</span>? -&gt; D
C+Di -&gt; C
<span style="color:#0000c0;text-decoration:underline;">&quot;HMP&quot;</span>? -&gt; D

# 보조사거리
(B-D)/<span style="color:#0000c0;text-decoration:underline;">2</span> -&gt; B

# 계산판 시뮬레이션
<span style="color:#804000;text-decoration:underline;">Pol</span>(<span style="color:#804000;text-decoration:underline;">ReP</span>(A)-<span style="color:#804000;text-decoration:underline;">ReP</span>(C), <span style="color:#804000;text-decoration:underline;">ImP</span>(A)-<span style="color:#804000;text-decoration:underline;">ImP</span>(C))

# 설정 초기화
<span style="color:#008080;font-weight:bold;">Prog</span> <span style="color:#0000c0;text-decoration:underline;">&quot;ZCLNSETUP&quot;</span>

# 수평거리
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">1</span>, <span style="color:#0000c0;text-decoration:underline;">1</span>, <span style="color:#0000c0;text-decoration:underline;">&quot;MTRN&quot;</span>
I*<span style="color:#0000c0;text-decoration:underline;">10</span> -&gt; A
<span style="color:#804000;text-decoration:underline;">Mat</span> A + [[A, <span style="color:#0000c0;text-decoration:underline;">0</span>][<span style="color:#0000c0;text-decoration:underline;">0</span>, <span style="color:#0000c0;text-decoration:underline;">0</span>]] -&gt; <span style="color:#804000;text-decoration:underline;">Mat</span> A
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">7</span>, <span style="color:#0000c0;text-decoration:underline;">1</span>, A

# 사거리
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">1</span>, <span style="color:#0000c0;text-decoration:underline;">2</span>, <span style="color:#0000c0;text-decoration:underline;">&quot;RN&quot;</span>
I*<span style="color:#0000c0;text-decoration:underline;">10</span>+B -&gt; A
<span style="color:#804000;text-decoration:underline;">Mat</span> A + [[<span style="color:#0000c0;text-decoration:underline;">0</span>, A][<span style="color:#0000c0;text-decoration:underline;">0</span>, <span style="color:#0000c0;text-decoration:underline;">0</span>]] -&gt; <span style="color:#804000;text-decoration:underline;">Mat</span> A
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">7</span>, <span style="color:#0000c0;text-decoration:underline;">2</span>, A

# 사격방위각
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">1</span>, <span style="color:#0000c0;text-decoration:underline;">3</span>, <span style="color:#0000c0;text-decoration:underline;">&quot;MTAZ&quot;</span>
(<span style="color:#0000c0;text-decoration:underline;">90</span>-J)*<span style="color:#0000c0;text-decoration:underline;">160</span>/<span style="color:#0000c0;text-decoration:underline;">9</span> -&gt; P
<span style="color:#008080;font-weight:bold;">Prog</span> <span style="color:#0000c0;text-decoration:underline;">&quot;ZINANGL&quot;</span>
<span style="color:#804000;text-decoration:underline;">Mat</span> A + [[<span style="color:#0000c0;text-decoration:underline;">0</span>, <span style="color:#0000c0;text-decoration:underline;">0</span>][R, <span style="color:#0000c0;text-decoration:underline;">0</span>]] -&gt; <span style="color:#804000;text-decoration:underline;">Mat</span> A
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">7</span>, <span style="color:#0000c0;text-decoration:underline;">3</span>, R

# 후퇴사격방위각
P+<span style="color:#0000c0;text-decoration:underline;">3200</span> -&gt; P
<span style="color:#008080;font-weight:bold;">Prog</span> <span style="color:#0000c0;text-decoration:underline;">&quot;ZINANGL&quot;</span>
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">1</span>, <span style="color:#0000c0;text-decoration:underline;">4</span>, <span style="color:#0000c0;text-decoration:underline;">&quot;MTAZ1&quot;</span>
<span style="color:#804000;text-decoration:underline;">Mat</span> A + [[<span style="color:#0000c0;text-decoration:underline;">0</span>, <span style="color:#0000c0;text-decoration:underline;">0</span>][<span style="color:#0000c0;text-decoration:underline;">0</span>, R]] -&gt; <span style="color:#804000;text-decoration:underline;">Mat</span> A
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">7</span>, <span style="color:#0000c0;text-decoration:underline;">4</span>, R
