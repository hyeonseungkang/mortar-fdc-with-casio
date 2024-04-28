# mortar-fdc-with-casio

<img src="https://img.shields.io/badge/casio_basic-blue?style=for-the-badge&logo=visualbasic&logoColor=ffffff" />

Calculate mortar firing chart with Casio scientific calculator

[REAMDE.ko-KR.md](./README.ko-KR.md)

<p>
    <img height="106" src="./assets/20240214_194740.png" />
    <img height="106" src="./assets/2018121900868_0.jpg" />
    <img height="106" src="./assets/20231021_111008.jpg" />
</p>

## Requirements

1. Casio scientific calculator including Program Mode (PROG) with CASIO BASIC 
   - eg. FX-5800P
<img height="106" src="./assets/20240429_082707.jpg" />

## Contents

### 1. Introduction

   #### 1.1. Purpose of development

   The method of calculating horizontal distance and declination angle by manually drawing it on a plotting board is not only imprecise but also prone to human error. To address this, we aim to introduce automation programs with scientific calculator to reduce calculation errors and shorten calculation time.

### 2. Development Process

   #### 2.1. Parenthetical functions in Casio scientific calculator

   - ```Imp(a+bi)```, ```Rep(a+bi)```: Extract real part / imaginary part from complex number.
   - ```Pol(x, y)```, ```Rec(r, θ)```: Conversion between Cartesian coordinate-Polar coordinate.
   - ```Locate(x, y, n)```: Display specific numeric or string in specific screen location when ```PROG``` mode.

   #### 2.2. Operations in Casio scientific calculator

   - [FILE] Key: Run program in ```COMP``` mode.
   - [MODE] Key-[5] Key: Enter ```PROG``` mode. In ```PROG``` mode, programs can saved or edited to calculator.

   #### 2.3. Implementation Plotting board to Calculator

   To make it easier to understand what the program is doing, the calculation process performed using the plotting board in the field manual was reproduced as much as possible using a calculator.

   We've reproduced the calculation process as much as possible on the calculator to make it easy to understand what the program is doing, similar to how it would be done manually on a plotting board in field manual.

   For example, in order to ```calculate Grid method, the task of calculating the horizontal distance and shooting azimuth by displaying the vertical and horizontal coordinates on the plotting board and aligning them with the vertical line``` is implemented by ```convert the vertical and horizontal Cartesian coordinates to polar coordinates and obtain the horizontal distance and shooting azimuth through r and θ```.
   
   To convert mils to degrees, calculate ```(n Mils)/160*9```, and to convert from degrees to mils, take the reciprocal.
   
   When aiming at the base stake from the mortar to follow, the retreat firing azimuth is also displayed so that the position of the base stake can be measured with a compass as easily as possible.
   
   If the calculated results are accidentally removed, program with matrix function (MATRIX) can be used to review it which is previous calculated result.
   
   To keep the number of variables as small as possible, complex numbers are used to store two numbers in one variable.

### 3. Productions
   
   - Calculation PROGs

      - Grid (방안좌표법)

        [MOT.COORD.basic](./MOT.COORD.basic)

      - Polar Plot (극표정법)
      
         [MOT.POLAR.basic](./MOT.POLAR.basic)
         
      - Shift from a Known Point (기지점전이법)
      
         [MOT.RP-TRS.basic](./MOT.RP-TRS.basic)
         
      - Firing Correction (수정)
      
         [MOT.FIX.basic](./MOT.FIX.basic)
         
   - Dependency PROGs
   
      - Read recent 1 calculation (최근1개계산 확인)
      
         [MOT.RECENT.basic](./MOT.RECENT.basic)
         
      - Clean Setup (설정초기화)
      
         [ZCLNSETUP.basic](./ZCLNSETUP.basic)
         
      - Variable value to 0-6400Mils (변수값을 0-6400밀 이내로)
      
         [ZINANGL.basic](./ZINANGL.basic)

## References

- TRADOC. (2013). ATP 3-09.30 Techniques for Observed Fire. US Army. [PDF](./references-archive/ARN5011_ATP%203-09x30%20FINAL%20WEB.pdf)
- TRADOC. (2009). GTA 17-02-015 Call For Fire. US Army. [PDF](./references-archive/call_for_fire.pdf)
- TRADOC. (2017). TC 3-22.91 Mortar Fire Direction Procedures. US Army. [PDF](./references-archive/ARN3488_TC%203-22x91%20FINAL%20WEB%201.pdf)
- TRADOC. (2017). DA Form 2399 Computer’s Record (LRA). US Army. [PDF](./references-archive/ARN3823_DA%20FORM%202399%20FINAL.pdf)
- Jay♬. (2013, April 4). 박격포 공학용 계산 식. Tistory. [https://lunaticju.tistory.com/32](https://lunaticju.tistory.com/32).
