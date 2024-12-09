(define   (problem parking)
  (:domain parking)
  (:objects
     car_16  car_2  car_6  car_10  car_11  car_1  car_19  car_14  car_8  car_18  car_12  car_13  car_5  car_3  car_0  car_15  car_7  car_9  car_4  car_17 - car
     curb_9 curb_4 curb_2 curb_0 curb_8 curb_5 curb_7 curb_6 curb_10 curb_3 curb_1 - curb
  )
  (:init
    (at-curb car_12)
    (at-curb-num car_12 curb_9)
    (behind-car car_6 car_12)
    (car-clear car_6)
    (at-curb car_14)
    (at-curb-num car_14 curb_4)
    (behind-car car_18 car_14)
    (car-clear car_18)
    (at-curb car_10)
    (at-curb-num car_10 curb_2)
    (behind-car car_13 car_10)
    (car-clear car_13)
    (at-curb car_5)
    (at-curb-num car_5 curb_0)
    (behind-car car_4 car_5)
    (car-clear car_4)
    (at-curb car_17)
    (at-curb-num car_17 curb_8)
    (behind-car car_1 car_17)
    (car-clear car_1)
    (at-curb car_8)
    (at-curb-num car_8 curb_5)
    (behind-car car_19 car_8)
    (car-clear car_19)
    (at-curb car_7)
    (at-curb-num car_7 curb_7)
    (behind-car car_16 car_7)
    (car-clear car_16)
    (at-curb car_2)
    (at-curb-num car_2 curb_6)
    (behind-car car_11 car_2)
    (car-clear car_11)
    (at-curb car_9)
    (at-curb-num car_9 curb_10)
    (behind-car car_15 car_9)
    (car-clear car_15)
    (at-curb car_0)
    (at-curb-num car_0 curb_3)
    (car-clear car_0)
    (at-curb car_3)
    (at-curb-num car_3 curb_1)
    (car-clear car_3)
  )
  (:goal
    (and
      (at-curb-num car_16 curb_9)
      (behind-car car_13 car_16)
      (at-curb-num car_2 curb_4)
      (behind-car car_5 car_2)
      (at-curb-num car_6 curb_2)
      (behind-car car_3 car_6)
      (at-curb-num car_10 curb_0)
      (behind-car car_0 car_10)
      (at-curb-num car_11 curb_8)
      (behind-car car_15 car_11)
      (at-curb-num car_1 curb_5)
      (behind-car car_7 car_1)
      (at-curb-num car_19 curb_7)
      (behind-car car_9 car_19)
      (at-curb-num car_14 curb_6)
      (behind-car car_4 car_14)
      (at-curb-num car_8 curb_10)
      (behind-car car_17 car_8)
      (at-curb-num car_18 curb_3)
      (at-curb-num car_12 curb_1)
    )
  )

)
; =========== init =========== 
;  curb_00: car_12 car_6 
;  curb_01: car_14 car_18 
;  curb_02: car_10 car_13 
;  curb_03: car_5 car_4 
;  curb_04: car_17 car_1 
;  curb_05: car_8 car_19 
;  curb_06: car_7 car_16 
;  curb_07: car_2 car_11 
;  curb_08: car_9 car_15 
;  curb_09: car_0 
;  curb_10: car_3 
; ========== /init =========== 

; =========== goal =========== 
;  curb_00: car_16 car_13 
;  curb_01: car_2 car_5 
;  curb_02: car_6 car_3 
;  curb_03: car_10 car_0 
;  curb_04: car_11 car_15 
;  curb_05: car_1 car_7 
;  curb_06: car_19 car_9 
;  curb_07: car_14 car_4 
;  curb_08: car_8 car_17 
;  curb_09: car_18 
;  curb_10: car_12 
; =========== /goal =========== 
