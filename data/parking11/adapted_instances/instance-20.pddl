(define   (problem parking)
  (:domain parking)
  (:objects
     car_6  car_16  car_19  car_5  car_18  car_4  car_11  car_14  car_7  car_20  car_2  car_15  car_12  car_21  car_8  car_1  car_17  car_0  car_3  car_10  car_9  car_13 - car
     curb_5 curb_0 curb_4 curb_9 curb_3 curb_7 curb_6 curb_2 curb_11 curb_8 curb_1 curb_10 - curb
  )
  (:init
    (at-curb car_14)
    (at-curb-num car_14 curb_5)
    (behind-car car_17 car_14)
    (car-clear car_17)
    (at-curb car_12)
    (at-curb-num car_12 curb_0)
    (behind-car car_10 car_12)
    (car-clear car_10)
    (at-curb car_20)
    (at-curb-num car_20 curb_4)
    (behind-car car_3 car_20)
    (car-clear car_3)
    (at-curb car_8)
    (at-curb-num car_8 curb_9)
    (behind-car car_16 car_8)
    (car-clear car_16)
    (at-curb car_4)
    (at-curb-num car_4 curb_3)
    (behind-car car_15 car_4)
    (car-clear car_15)
    (at-curb car_6)
    (at-curb-num car_6 curb_7)
    (behind-car car_5 car_6)
    (car-clear car_5)
    (at-curb car_0)
    (at-curb-num car_0 curb_6)
    (behind-car car_18 car_0)
    (car-clear car_18)
    (at-curb car_1)
    (at-curb-num car_1 curb_2)
    (behind-car car_2 car_1)
    (car-clear car_2)
    (at-curb car_11)
    (at-curb-num car_11 curb_11)
    (behind-car car_9 car_11)
    (car-clear car_9)
    (at-curb car_13)
    (at-curb-num car_13 curb_8)
    (behind-car car_19 car_13)
    (car-clear car_19)
    (at-curb car_7)
    (at-curb-num car_7 curb_1)
    (car-clear car_7)
    (at-curb car_21)
    (at-curb-num car_21 curb_10)
    (car-clear car_21)
  )
  (:goal
    (and
      (at-curb-num car_6 curb_5)
      (behind-car car_12 car_6)
      (at-curb-num car_16 curb_0)
      (behind-car car_21 car_16)
      (at-curb-num car_19 curb_4)
      (behind-car car_8 car_19)
      (at-curb-num car_5 curb_9)
      (behind-car car_1 car_5)
      (at-curb-num car_18 curb_3)
      (behind-car car_17 car_18)
      (at-curb-num car_4 curb_7)
      (behind-car car_0 car_4)
      (at-curb-num car_11 curb_6)
      (behind-car car_3 car_11)
      (at-curb-num car_14 curb_2)
      (behind-car car_10 car_14)
      (at-curb-num car_7 curb_11)
      (behind-car car_9 car_7)
      (at-curb-num car_20 curb_8)
      (behind-car car_13 car_20)
      (at-curb-num car_2 curb_1)
      (at-curb-num car_15 curb_10)
    )
  )

)
; =========== init =========== 
;  curb_00: car_14 car_17 
;  curb_01: car_12 car_10 
;  curb_02: car_20 car_3 
;  curb_03: car_8 car_16 
;  curb_04: car_4 car_15 
;  curb_05: car_6 car_5 
;  curb_06: car_0 car_18 
;  curb_07: car_1 car_2 
;  curb_08: car_11 car_9 
;  curb_09: car_13 car_19 
;  curb_10: car_7 
;  curb_11: car_21 
; ========== /init =========== 

; =========== goal =========== 
;  curb_00: car_6 car_12 
;  curb_01: car_16 car_21 
;  curb_02: car_19 car_8 
;  curb_03: car_5 car_1 
;  curb_04: car_18 car_17 
;  curb_05: car_4 car_0 
;  curb_06: car_11 car_3 
;  curb_07: car_14 car_10 
;  curb_08: car_7 car_9 
;  curb_09: car_20 car_13 
;  curb_10: car_2 
;  curb_11: car_15 
; =========== /goal =========== 
