(define   (problem parking)
  (:domain parking)
  (:objects
     car_7  car_13  car_8  car_15  car_4  car_2  car_12  car_14  car_1  car_0  car_11  car_18  car_5  car_3  car_16  car_10  car_9  car_17  car_19  car_6 - car
     curb_8 curb_1 curb_0 curb_10 curb_2 curb_7 curb_4 curb_9 curb_6 curb_3 curb_5 - curb
  )
  (:init
    (at-curb car_17)
    (at-curb-num car_17 curb_8)
    (behind-car car_16 car_17)
    (car-clear car_16)
    (at-curb car_13)
    (at-curb-num car_13 curb_1)
    (behind-car car_15 car_13)
    (car-clear car_15)
    (at-curb car_1)
    (at-curb-num car_1 curb_0)
    (behind-car car_11 car_1)
    (car-clear car_11)
    (at-curb car_14)
    (at-curb-num car_14 curb_10)
    (behind-car car_6 car_14)
    (car-clear car_6)
    (at-curb car_7)
    (at-curb-num car_7 curb_2)
    (behind-car car_9 car_7)
    (car-clear car_9)
    (at-curb car_12)
    (at-curb-num car_12 curb_7)
    (behind-car car_8 car_12)
    (car-clear car_8)
    (at-curb car_3)
    (at-curb-num car_3 curb_4)
    (behind-car car_18 car_3)
    (car-clear car_18)
    (at-curb car_0)
    (at-curb-num car_0 curb_9)
    (behind-car car_2 car_0)
    (car-clear car_2)
    (at-curb car_19)
    (at-curb-num car_19 curb_6)
    (behind-car car_10 car_19)
    (car-clear car_10)
    (at-curb car_4)
    (at-curb-num car_4 curb_3)
    (behind-car car_5 car_4)
    (car-clear car_5)
    (curb-clear curb_5)
  )
  (:goal
    (and
      (at-curb-num car_7 curb_8)
      (behind-car car_18 car_7)
      (at-curb-num car_13 curb_1)
      (behind-car car_5 car_13)
      (at-curb-num car_8 curb_0)
      (behind-car car_3 car_8)
      (at-curb-num car_15 curb_10)
      (behind-car car_16 car_15)
      (at-curb-num car_4 curb_2)
      (behind-car car_10 car_4)
      (at-curb-num car_2 curb_7)
      (behind-car car_9 car_2)
      (at-curb-num car_12 curb_4)
      (behind-car car_17 car_12)
      (at-curb-num car_14 curb_9)
      (behind-car car_19 car_14)
      (at-curb-num car_1 curb_6)
      (behind-car car_6 car_1)
      (at-curb-num car_0 curb_3)
      (at-curb-num car_11 curb_5)
    )
  )

)
; =========== init =========== 
;  curb_00: car_17 car_16 
;  curb_01: car_13 car_15 
;  curb_02: car_1 car_11 
;  curb_03: car_14 car_6 
;  curb_04: car_7 car_9 
;  curb_05: car_12 car_8 
;  curb_06: car_3 car_18 
;  curb_07: car_0 car_2 
;  curb_08: car_19 car_10 
;  curb_09: car_4 car_5 
;  curb_10: 
; ========== /init =========== 

; =========== goal =========== 
;  curb_00: car_7 car_18 
;  curb_01: car_13 car_5 
;  curb_02: car_8 car_3 
;  curb_03: car_15 car_16 
;  curb_04: car_4 car_10 
;  curb_05: car_2 car_9 
;  curb_06: car_12 car_17 
;  curb_07: car_14 car_19 
;  curb_08: car_1 car_6 
;  curb_09: car_0 
;  curb_10: car_11 
; =========== /goal =========== 
