<style>
pre { white-space: pre-wrap; font-family: monospace; color: #000000; background-color: #ffffff; }
body { font-family: monospace; color: #000000; background-color: #ffffff; }
* { font-size: 1em; }
.Constant { color: #ff00ff; }
.Identifier { color: #008b8b; }
.Statement { color: #a52a2a; font-weight: bold; }
</style>

<pre id='vimCodeElement'>
# 극표정법
<span class="Constant">&quot;MOT.POLAR&quot;</span>

# (FO X) - (포진지 X)
<span class="Constant">&quot;XF0-XMP&quot;</span>? -&gt; A

# (FO Y) - (포진지 Y)
<span class="Constant">&quot;YF0-YMP&quot;</span>? -&gt; B
A+Bi -&gt; A

# (표적 고도) - (포진지 고도) + (표고차)
<span class="Constant">&quot;HF0-HMP+V.SFT&quot;</span>? -&gt; B
# 보조사거리
B/<span class="Constant">2</span> -&gt; B

# 관목거리
<span class="Constant">&quot;OTDS&quot;</span> -&gt; D
D/<span class="Constant">10</span> -&gt; D

# 관목방위각
<span class="Constant">&quot;OTAZ&quot;</span>? -&gt; E
E/<span class="Constant">160</span>*<span class="Constant">9</span> -&gt; E

# 계산판 시뮬레이션
<span class="Identifier">Pol</span>(<span class="Identifier">ReP</span>(A), <span class="Identifier">ImP</span>(A))
<span class="Identifier">Rec</span>(I, J+E)
<span class="Identifier">Pol</span>(I, J+D)

<span class="Statement">Cls</span>

# 수평거리
<span class="Statement">Locate</span> <span class="Constant">1</span>, <span class="Constant">1</span>, <span class="Constant">&quot;MTRN&quot;</span>
<span class="Statement">Locate</span> <span class="Constant">7</span>, <span class="Constant">1</span>, I*<span class="Constant">10</span>

# 사거리
<span class="Statement">Locate</span> <span class="Constant">1</span>, <span class="Constant">2</span>, <span class="Constant">&quot;RN&quot;</span>
<span class="Statement">Locate</span> <span class="Constant">7</span>, <span class="Constant">2</span>, I*<span class="Constant">10</span>+B

# 사격방위각
<span class="Statement">Locate</span> <span class="Constant">1</span>, <span class="Constant">3</span>, <span class="Constant">&quot;MTAZ&quot;</span>
(<span class="Constant">90</span>-(J-E))*<span class="Constant">160</span>/<span class="Constant">9</span> -&gt; P
<span class="Statement">Prog</span> <span class="Constant">&quot;ZINANGL&quot;</span>
<span class="Statement">Locate</span> <span class="Constant">7</span>, <span class="Constant">3</span>, R

# 후퇴사격방위각
P+<span class="Constant">3200</span> -&gt; P
<span class="Statement">Prog</span> <span class="Constant">&quot;ZINANGL&quot;</span>
<span class="Statement">Locate</span> <span class="Constant">1</span>, <span class="Constant">4</span>, <span class="Constant">&quot;MTAZ1&quot;</span>
<span class="Statement">Locate</span> <span class="Constant">7</span>, <span class="Constant">4</span>, R
</pre>