# mortar-fdc-with-casio

<img src="https://img.shields.io/badge/casio_basic-blue?style=for-the-badge&logo=visualbasic&logoColor=ffffff" />

카시오 공학용 계산기로 화력유도 계산하기

## Requirements

1. CASIO BASIC을 이해할 수 있는 프로그램 모드(PROG)를 지원하는 카시오 공학용 계산기
   - 예. FX-5800P

## 목차

### 1. 서론

   #### 1.1. 개발목적
   
   사람이 직접 계산판에 제도하여 수평거리와 편각을 구하는 방법은 값을 엄밀히 알 수 없을 뿐 아니라 FDC가 실수할 가능성이 다분하다. 이를 해결하기 위해 공학용 계산기를 도입, 계산의 오차를 줄임과 동시에 계산 시간을 단축하고자 한다.

### 2. 본론

   #### 2.1. 카시오 공학용 계산기 함수 탐구

   - ```Imp()```, ```Rep()```: 복소수의 실수부, 허수부를 추출한다.
   - ```Pol()```, ```Rec()```: 데카르트좌표계-극좌표계 간 변환을 수행한다.
   - ```Locate()```: ```PROG``` 모드에서 지정한 위치에 특정 문자 및 숫자를 띄운다.

   #### 2.2. 카시오 공학용 계산기 기능 탐구

   - [FILE] 키를 통해 ```COMP``` 모드에서 바로 프로그램을 실행할 수 있다.
   - [MODE]-[5] 를 통해 프로그램 모드로 진입할 수 있다. 해당 모드에서 계산기에 프로그램을 저장, 수정할 수 있다.

   #### 2.3. 계산판을 계산기로 이식

   > 계산판으로 계산하는 과정을 계산기로 재현하였다.
   >
   > 예컨대 ```방안좌표법을 구하기 위해 종·횡좌표를 계산판에 표시하여 수직선에 맞춰 수평거리와 사격방위각을 구하는 작업```은 ```종·횡 데카르트좌표를 극좌표로 변환하여 구해진 r과 θ를 통해 수평거리와 사격방위각 밀값을 도출```하는 방식으로 구현하였다.
   >
   > 밀 단위를 도 단위로 변환하기 위해 ```(n Mils)/160*9```을, 도 단위에서 밀 단위로의 변환은 역수를 취하여 계산하였다.
   >
   > 기준포에서 기준겨냥대를 조준하였을 때 최대한 쉽게 방열할 수 있는 기준겨냥대의 위치를 나침의로 가늠할 수 있도록 후퇴사격방위각을 함께 표시하였다.
   >
   > 계산한 결과를 실수로 지워버린 경우 바로 직전에 계산한 결과를 불러올 수 있도록 행렬 기능(MATRIX)을 이용하여 저장, 확인할 수 있도록 하였다.
   >
   > 최대한 적은 변수 개수를 유지하기 위해 복소수를 사용하여 한 변수에 두 개의 수를 저장하도록 하였다.

   #### 2.4. 결과물
   
      - 계산 프로그램

         - Grid (방안좌표법)
      
            [MOT.COORD.basic](./MOT.COORD.basic)
      
         - Polar Plot (극표정법)

            [MOT.POLAR.basic](./MOT.POLAR.basic)
      
         - Shift from a Known Point (기지점전이법)
      
            [MOT.RP-TRS.basic](./MOT.RP-TRS.basic)
      
         - Firing Correction (수정)

            [MOT.FIX.basic](./MOT.FIX.basic)
      
      - 종속 프로그램

         - Recent 1 calculation (최근1개계산)
     
           [MOT.RECENT.basic](./MOT.RECENT.basic)
     
         - Clean Setup (설정초기화)
   
           [ZCLNSETUP.basic](./ZCLNSETUP.basic)
     
         - Variable value to 0-6400Mils (변수값을 0-6400밀 이내로)
     
           [ZINANGL.basic](./ZINANGL.basic)

## 참고문헌

- OBSERVED FIRES
   - [ATP 3-09.30 — OBSERVED FIRES](./references-archive/ARN5011_ATP%203-09x30%20FINAL%20WEB.pdf)
- CALL FOR FIRE
   - [GTA 17-02-015](./references-archive/call_for_fire.pdf)
- Mortar FDC Field Manual
   - [TC 3-22.91 — MORTAR FIRE DIRECTION PROCEDURES](./references-archive/ARN3488_TC%203-22x91%20FINAL%20WEB%201.pdf)
- Firing Record Form
   - [DA FORM 2399 — COMPUTER`S RECORD (LRA)](./references-archive/ARN3823_DA%20FORM%202399%20FINAL.pdf)
