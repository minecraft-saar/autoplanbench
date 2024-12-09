(define   (problem parking)
  (:domain parking)
  (:objects
     car_17  car_18  car_2  car_3  car_4  car_19  car_1  car_16  car_8  car_7  car_20  car_14  car_21  car_10  car_6  car_11  car_12  car_13  car_5  car_15  car_9  car_0 - car
     curb_7 curb_0 curb_9 curb_1 curb_11 curb_6 curb_4 curb_3 curb_8 curb_2 curb_5 curb_10 - curb
  )
  (:init
    (at-curb car_5)
    (at-curb-num car_5 curb_7)
    (behind-car car_16 car_5)
    (car-clear car_16)
    (at-curb car_11)
    (at-curb-num car_11 curb_0)
    (behind-car car_2 car_11)
    (car-clear car_2)
    (at-curb car_12)
    (at-curb-num car_12 curb_9)
    (behind-car car_3 car_12)
    (car-clear car_3)
    (at-curb car_15)
    (at-curb-num car_15 curb_1)
    (behind-car car_0 car_15)
    (car-clear car_0)
    (at-curb car_6)
    (at-curb-num car_6 curb_11)
    (behind-car car_14 car_6)
    (car-clear car_14)
    (at-curb car_8)
    (at-curb-num car_8 curb_6)
    (behind-car car_19 car_8)
    (car-clear car_19)
    (at-curb car_1)
    (at-curb-num car_1 curb_4)
    (behind-car car_4 car_1)
    (car-clear car_4)
    (at-curb car_17)
    (at-curb-num car_17 curb_3)
    (behind-car car_18 car_17)
    (car-clear car_18)
    (at-curb car_20)
    (at-curb-num car_20 curb_8)
    (behind-car car_21 car_20)
    (car-clear car_21)
    (at-curb car_13)
    (at-curb-num car_13 curb_2)
    (behind-car car_7 car_13)
    (car-clear car_7)
    (at-curb car_9)
    (at-curb-num car_9 curb_5)
    (behind-car car_10 car_9)
    (car-clear car_10)
    (curb-clear curb_10)
  )
  (:goal
    (and
      (at-curb-num car_17 curb_7)
      (behind-car car_21 car_17)
      (at-curb-num car_18 curb_0)
      (behind-car car_10 car_18)
      (at-curb-num car_2 curb_9)
      (behind-car car_6 car_2)
      (at-curb-num car_3 curb_1)
      (behind-car car_11 car_3)
      (at-curb-num car_4 curb_11)
      (behind-car car_12 car_4)
      (at-curb-num car_19 curb_6)
      (behind-car car_13 car_19)
      (at-curb-num car_1 curb_4)
      (behind-car car_5 car_1)
      (at-curb-num car_16 curb_3)
      (behind-car car_15 car_16)
      (at-curb-num car_8 curb_8)
      (behind-car car_9 car_8)
      (at-curb-num car_7 curb_2)
      (behind-car car_0 car_7)
      (at-curb-num car_20 curb_5)
      (at-curb-num car_14 curb_10)
    )
  )

)
; =========== init =========== 
;  curb_00: car_5 car_16 
;  curb_01: car_11 car_2 
;  curb_02: car_12 car_3 
;  curb_03: car_15 car_0 
;  curb_04: car_6 car_14 
;  curb_05: car_8 car_19 
;  curb_06: car_1 car_4 
;  curb_07: car_17 car_18 
;  curb_08: car_20 car_21 
;  curb_09: car_13 car_7 
;  curb_10: car_9 car_10 
;  curb_11: 
; ========== /init =========== 

; =========== goal =========== 
;  curb_00: car_17 car_21 
;  curb_01: car_18 car_10 
;  curb_02: car_2 car_6 
;  curb_03: car_3 car_11 
;  curb_04: car_4 car_12 
;  curb_05: car_19 car_13 
;  curb_06: car_1 car_5 
;  curb_07: car_16 car_15 
;  curb_08: car_8 car_9 
;  curb_09: car_7 car_0 
;  curb_10: car_20 
;  curb_11: car_14 
; =========== /goal =========== 
