# mortar-fdc-with-casio

<img src="https://img.shields.io/badge/casio_basic-blue?style=for-the-badge&logo=visualbasic&logoColor=ffffff" />

카시오 공학용 계산기로 화력유도 계산하기

## Requirements

1. CASIO BASIC을 이해할 수 있는 프로그램 모드(PROG)를 지원하는 카시오 공학용 계산기
   - 예. FX-5800P

## 목차

1. 서론

   1.1. 개발목적
   
     ```사람이 직접 계산판에 제도하여 수평거리와 편각을 구하는 방법은 값을 엄밀히 알 수 없을 뿐 아니라 FDC가 실수할 가능성이 다분하다. 이를 해결하기 위해 공학용 계산기를 도입, 계산의 오차를 줄임과 동시에 계산 시간을 단축하고자 한다.```

2. 본론

   2.1. 카시오 공학용 계산기 함수 탐구

      

   2.2. 카시오 공학용 계산기 기능 탐구

      

   2.3. 결과물
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
