(define   (problem parking)
  (:domain parking)
  (:objects
     car_10  car_5  car_15  car_6  car_16  car_0  car_17  car_13  car_19  car_14  car_2  car_3  car_8  car_18  car_11  car_4  car_12  car_9  car_1  car_7 - car
     curb_9 curb_5 curb_10 curb_7 curb_1 curb_8 curb_4 curb_6 curb_3 curb_0 curb_2 - curb
  )
  (:init
    (at-curb car_12)
    (at-curb-num car_12 curb_9)
    (behind-car car_6 car_12)
    (car-clear car_6)
    (at-curb car_18)
    (at-curb-num car_18 curb_5)
    (behind-car car_0 car_18)
    (car-clear car_0)
    (at-curb car_7)
    (at-curb-num car_7 curb_10)
    (behind-car car_11 car_7)
    (car-clear car_11)
    (at-curb car_19)
    (at-curb-num car_19 curb_7)
    (behind-car car_13 car_19)
    (car-clear car_13)
    (at-curb car_3)
    (at-curb-num car_3 curb_1)
    (behind-car car_1 car_3)
    (car-clear car_1)
    (at-curb car_2)
    (at-curb-num car_2 curb_8)
    (behind-car car_10 car_2)
    (car-clear car_10)
    (at-curb car_16)
    (at-curb-num car_16 curb_4)
    (behind-car car_8 car_16)
    (car-clear car_8)
    (at-curb car_4)
    (at-curb-num car_4 curb_6)
    (behind-car car_15 car_4)
    (car-clear car_15)
    (at-curb car_17)
    (at-curb-num car_17 curb_3)
    (behind-car car_14 car_17)
    (car-clear car_14)
    (at-curb car_5)
    (at-curb-num car_5 curb_0)
    (car-clear car_5)
    (at-curb car_9)
    (at-curb-num car_9 curb_2)
    (car-clear car_9)
  )
  (:goal
    (and
      (at-curb-num car_10 curb_9)
      (behind-car car_3 car_10)
      (at-curb-num car_5 curb_5)
      (behind-car car_8 car_5)
      (at-curb-num car_15 curb_10)
      (behind-car car_18 car_15)
      (at-curb-num car_6 curb_7)
      (behind-car car_11 car_6)
      (at-curb-num car_16 curb_1)
      (behind-car car_4 car_16)
      (at-curb-num car_0 curb_8)
      (behind-car car_12 car_0)
      (at-curb-num car_17 curb_4)
      (behind-car car_9 car_17)
      (at-curb-num car_13 curb_6)
      (behind-car car_1 car_13)
      (at-curb-num car_19 curb_3)
      (behind-car car_7 car_19)
      (at-curb-num car_14 curb_0)
      (at-curb-num car_2 curb_2)
    )
  )

)
; =========== init =========== 
;  curb_00: car_12 car_6 
;  curb_01: car_18 car_0 
;  curb_02: car_7 car_11 
;  curb_03: car_19 car_13 
;  curb_04: car_3 car_1 
;  curb_05: car_2 car_10 
;  curb_06: car_16 car_8 
;  curb_07: car_4 car_15 
;  curb_08: car_17 car_14 
;  curb_09: car_5 
;  curb_10: car_9 
; ========== /init =========== 

; =========== goal =========== 
;  curb_00: car_10 car_3 
;  curb_01: car_5 car_8 
;  curb_02: car_15 car_18 
;  curb_03: car_6 car_11 
;  curb_04: car_16 car_4 
;  curb_05: car_0 car_12 
;  curb_06: car_17 car_9 
;  curb_07: car_13 car_1 
;  curb_08: car_19 car_7 
;  curb_09: car_14 
;  curb_10: car_2 
; =========== /goal =========== 
