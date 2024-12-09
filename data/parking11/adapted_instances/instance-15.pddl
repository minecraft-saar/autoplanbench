(define   (problem parking)
  (:domain parking)
  (:objects
     car_1  car_15  car_9  car_0  car_4  car_19  car_10  car_5  car_3  car_6  car_12  car_18  car_16  car_17  car_7  car_2  car_8  car_13  car_11  car_14 - car
     curb_10 curb_0 curb_9 curb_6 curb_7 curb_1 curb_5 curb_8 curb_2 curb_4 curb_3 - curb
  )
  (:init
    (at-curb car_12)
    (at-curb-num car_12 curb_10)
    (behind-car car_4 car_12)
    (car-clear car_4)
    (at-curb car_6)
    (at-curb-num car_6 curb_0)
    (behind-car car_0 car_6)
    (car-clear car_0)
    (at-curb car_11)
    (at-curb-num car_11 curb_9)
    (behind-car car_14 car_11)
    (car-clear car_14)
    (at-curb car_17)
    (at-curb-num car_17 curb_6)
    (behind-car car_2 car_17)
    (car-clear car_2)
    (at-curb car_15)
    (at-curb-num car_15 curb_7)
    (behind-car car_18 car_15)
    (car-clear car_18)
    (at-curb car_16)
    (at-curb-num car_16 curb_1)
    (behind-car car_7 car_16)
    (car-clear car_7)
    (at-curb car_3)
    (at-curb-num car_3 curb_5)
    (behind-car car_19 car_3)
    (car-clear car_19)
    (at-curb car_1)
    (at-curb-num car_1 curb_8)
    (behind-car car_13 car_1)
    (car-clear car_13)
    (at-curb car_5)
    (at-curb-num car_5 curb_2)
    (behind-car car_9 car_5)
    (car-clear car_9)
    (at-curb car_10)
    (at-curb-num car_10 curb_4)
    (behind-car car_8 car_10)
    (car-clear car_8)
    (curb-clear curb_3)
  )
  (:goal
    (and
      (at-curb-num car_1 curb_10)
      (behind-car car_18 car_1)
      (at-curb-num car_15 curb_0)
      (behind-car car_16 car_15)
      (at-curb-num car_9 curb_9)
      (behind-car car_17 car_9)
      (at-curb-num car_0 curb_6)
      (behind-car car_7 car_0)
      (at-curb-num car_4 curb_7)
      (behind-car car_2 car_4)
      (at-curb-num car_19 curb_1)
      (behind-car car_8 car_19)
      (at-curb-num car_10 curb_5)
      (behind-car car_13 car_10)
      (at-curb-num car_5 curb_8)
      (behind-car car_11 car_5)
      (at-curb-num car_3 curb_2)
      (behind-car car_14 car_3)
      (at-curb-num car_6 curb_4)
      (at-curb-num car_12 curb_3)
    )
  )

)
; =========== init =========== 
;  curb_00: car_12 car_4 
;  curb_01: car_6 car_0 
;  curb_02: car_11 car_14 
;  curb_03: car_17 car_2 
;  curb_04: car_15 car_18 
;  curb_05: car_16 car_7 
;  curb_06: car_3 car_19 
;  curb_07: car_1 car_13 
;  curb_08: car_5 car_9 
;  curb_09: car_10 car_8 
;  curb_10: 
; ========== /init =========== 

; =========== goal =========== 
;  curb_00: car_1 car_18 
;  curb_01: car_15 car_16 
;  curb_02: car_9 car_17 
;  curb_03: car_0 car_7 
;  curb_04: car_4 car_2 
;  curb_05: car_19 car_8 
;  curb_06: car_10 car_13 
;  curb_07: car_5 car_11 
;  curb_08: car_3 car_14 
;  curb_09: car_6 
;  curb_10: car_12 
; =========== /goal =========== 
