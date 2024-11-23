
# 모든 조건식에 일치하지 않는 경우 변수 R이 변수 P 값을 가질 수 있게 함.
P -&gt; R

# P가 음수인 경우
<span style="color:#008080;font-weight:bold;">If</span> P &lt; <span style="color:#0000c0;text-decoration:underline;">0</span>
<span style="color:#008080;font-weight:bold;">Then</span> P+<span style="color:#0000c0;text-decoration:underline;">6400</span> -&gt; R
<span style="color:#008080;font-weight:bold;">IfEnd</span>

# P가 <span style="color:#0000c0;text-decoration:underline;">6400</span>밀 초과인 경우
<span style="color:#008080;font-weight:bold;">If</span> P &gt; <span style="color:#0000c0;text-decoration:underline;">6400</span>
<span style="color:#008080;font-weight:bold;">Then</span> P-<span style="color:#0000c0;text-decoration:underline;">6400</span> -&gt; R
<span style="color:#008080;font-weight:bold;">IfEnd</span>
