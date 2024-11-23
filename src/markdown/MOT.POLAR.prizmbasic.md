
# 극표정법
<span style="color:#0000c0;text-decoration:underline;">&quot;MOT.POLAR&quot;</span>

# (FO X) - (포진지 X)
<span style="color:#0000c0;text-decoration:underline;">&quot;XF0-XMP&quot;</span>? -&gt; A

# (FO Y) - (포진지 Y)
<span style="color:#0000c0;text-decoration:underline;">&quot;YF0-YMP&quot;</span>? -&gt; B
A+Bi -&gt; A

# (표적 고도) - (포진지 고도) + (표고차)
<span style="color:#0000c0;text-decoration:underline;">&quot;HF0-HMP+V.SFT&quot;</span>? -&gt; B
# 보조사거리
B/<span style="color:#0000c0;text-decoration:underline;">2</span> -&gt; B

# 관목거리
<span style="color:#0000c0;text-decoration:underline;">&quot;OTDS&quot;</span> -&gt; D
D/<span style="color:#0000c0;text-decoration:underline;">10</span> -&gt; D

# 관목방위각
<span style="color:#0000c0;text-decoration:underline;">&quot;OTAZ&quot;</span>? -&gt; E
E/<span style="color:#0000c0;text-decoration:underline;">160</span>*<span style="color:#0000c0;text-decoration:underline;">9</span> -&gt; E

# 계산판 시뮬레이션
<span style="color:#804000;text-decoration:underline;">Pol</span>(<span style="color:#804000;text-decoration:underline;">ReP</span>(A), <span style="color:#804000;text-decoration:underline;">ImP</span>(A))
<span style="color:#804000;text-decoration:underline;">Rec</span>(I, J+E)
<span style="color:#804000;text-decoration:underline;">Pol</span>(I, J+D)

<span style="color:#008080;font-weight:bold;">Cls</span>

# 수평거리
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">1</span>, <span style="color:#0000c0;text-decoration:underline;">1</span>, <span style="color:#0000c0;text-decoration:underline;">&quot;MTRN&quot;</span>
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">7</span>, <span style="color:#0000c0;text-decoration:underline;">1</span>, I*<span style="color:#0000c0;text-decoration:underline;">10</span>

# 사거리
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">1</span>, <span style="color:#0000c0;text-decoration:underline;">2</span>, <span style="color:#0000c0;text-decoration:underline;">&quot;RN&quot;</span>
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">7</span>, <span style="color:#0000c0;text-decoration:underline;">2</span>, I*<span style="color:#0000c0;text-decoration:underline;">10</span>+B

# 사격방위각
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">1</span>, <span style="color:#0000c0;text-decoration:underline;">3</span>, <span style="color:#0000c0;text-decoration:underline;">&quot;MTAZ&quot;</span>
(<span style="color:#0000c0;text-decoration:underline;">90</span>-(J-E))*<span style="color:#0000c0;text-decoration:underline;">160</span>/<span style="color:#0000c0;text-decoration:underline;">9</span> -&gt; P
<span style="color:#008080;font-weight:bold;">Prog</span> <span style="color:#0000c0;text-decoration:underline;">&quot;ZINANGL&quot;</span>
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">7</span>, <span style="color:#0000c0;text-decoration:underline;">3</span>, R

# 후퇴사격방위각
P+<span style="color:#0000c0;text-decoration:underline;">3200</span> -&gt; P
<span style="color:#008080;font-weight:bold;">Prog</span> <span style="color:#0000c0;text-decoration:underline;">&quot;ZINANGL&quot;</span>
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">1</span>, <span style="color:#0000c0;text-decoration:underline;">4</span>, <span style="color:#0000c0;text-decoration:underline;">&quot;MTAZ1&quot;</span>
<span style="color:#008080;font-weight:bold;">Locate</span> <span style="color:#0000c0;text-decoration:underline;">7</span>, <span style="color:#0000c0;text-decoration:underline;">4</span>, R
