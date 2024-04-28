# mortar-fdc-with-casio

<img src="https://img.shields.io/badge/casio_basic-blue?style=for-the-badge&logo=visualbasic&logoColor=ffffff" />

Calculate mortar firing chart with Casio scientific calculator

[REAMDE.ko-KR.md](./README.ko-KR.md)

## Requirements

1. Casio scientific calculator including Program Mode (PROG), CASIO BASIC 
   - eg. FX-5800P
  
## Contents

### 1. Introduction

   #### 1.1. Purpose of development

   
   The method of calculating the horizontal distance and declination angle by manually drawing it on a calculation board not only does not allow you to know the values precisely, but there is a high possibility that the FDC will make a mistake. To solve this problem, I introduced a scientific calculator to reduce calculation errors and shorten calculation time.

### 2. Development Process

   #### 2.1. Functions in Casio scientific calculator

   - ```Imp()```, ```Rep()```: Extract real part / imaginary part from complex number.
   - ```Pol()```, ```Rec()```: Conversion between Cartesian coordinate-Polar coordinate.
   - ```Locate()```: Display specific numeric or string in specific screen location when ```PROG``` mode.

   #### 2.2. Functionalites in Casio scientific calculator

   - [FILE] Key: Run program in ```COMP``` mode.
   - [MODE] Key-[5] Key: Enter ```PROG``` mode. In ```PROG``` mode, programs can saved or edited to calculator.

   #### 2.3. Implementation Plotting board to Calculator

   To make it easier to understand what the program is doing, the calculation process performed using the plotting board in the field manual was reproduced as much as possible using a calculator.

   For example, in order to ```calculate Grid method, the task of calculating the horizontal distance and shooting azimuth by displaying the vertical and horizontal coordinates on the plotting board and aligning them with the vertical line``` is implemented by ```convert the vertical and horizontal Cartesian coordinates to polar coordinates and obtain the horizontal distance and shooting azimuth through r and θ```.
   
   To convert mils to degrees, calculate ```(n Mils)/160*9```, and to convert from degrees to mils, take the reciprocal.
   
   When aiming at the reference target from the standard gun, the retreat firing azimuth is also displayed so that the position of the reference target can be measured with a compass as easily as possible.
   
   If the calculated results are accidentally deleted, the matrix mode (MATRIX) can be used to save and check them so that the immediately previous calculated results can be retrieved.
   
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

- OBSERVED FIRES
   - [ATP 3-09.30 — OBSERVED FIRES](./references-archive/ARN5011_ATP%203-09x30%20FINAL%20WEB.pdf)
- CALL FOR FIRE
   - [GTA 17-02-015](./references-archive/call_for_fire.pdf)
- Mortar FDC Field Manual
   - [TC 3-22.91 — MORTAR FIRE DIRECTION PROCEDURES](./references-archive/ARN3488_TC%203-22x91%20FINAL%20WEB%201.pdf)
- Firing Record Form
   - [DA FORM 2399 — COMPUTER`S RECORD (LRA)](./references-archive/ARN3823_DA%20FORM%202399%20FINAL.pdf)
