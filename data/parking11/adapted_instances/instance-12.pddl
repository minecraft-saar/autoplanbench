(define   (problem parking)
  (:domain parking)
  (:objects
     car_15  car_4  car_6  car_10  car_8  car_11  car_9  car_17  car_7  car_16  car_14  car_1  car_2  car_13  car_5  car_0  car_3  car_12 - car
     curb_5 curb_9 curb_4 curb_1 curb_6 curb_8 curb_3 curb_2 curb_0 curb_7 - curb
  )
  (:init
    (at-curb car_12)
    (at-curb-num car_12 curb_5)
    (behind-car car_15 car_12)
    (car-clear car_15)
    (at-curb car_1)
    (at-curb-num car_1 curb_9)
    (behind-car car_7 car_1)
    (car-clear car_7)
    (at-curb car_8)
    (at-curb-num car_8 curb_4)
    (behind-car car_0 car_8)
    (car-clear car_0)
    (at-curb car_11)
    (at-curb-num car_11 curb_1)
    (behind-car car_13 car_11)
    (car-clear car_13)
    (at-curb car_6)
    (at-curb-num car_6 curb_6)
    (behind-car car_5 car_6)
    (car-clear car_5)
    (at-curb car_9)
    (at-curb-num car_9 curb_8)
    (behind-car car_14 car_9)
    (car-clear car_14)
    (at-curb car_3)
    (at-curb-num car_3 curb_3)
    (behind-car car_10 car_3)
    (car-clear car_10)
    (at-curb car_16)
    (at-curb-num car_16 curb_2)
    (behind-car car_17 car_16)
    (car-clear car_17)
    (at-curb car_4)
    (at-curb-num car_4 curb_0)
    (car-clear car_4)
    (at-curb car_2)
    (at-curb-num car_2 curb_7)
    (car-clear car_2)
  )
  (:goal
    (and
      (at-curb-num car_15 curb_5)
      (behind-car car_14 car_15)
      (at-curb-num car_4 curb_9)
      (behind-car car_1 car_4)
      (at-curb-num car_6 curb_4)
      (behind-car car_2 car_6)
      (at-curb-num car_10 curb_1)
      (behind-car car_13 car_10)
      (at-curb-num car_8 curb_6)
      (behind-car car_5 car_8)
      (at-curb-num car_11 curb_8)
      (behind-car car_0 car_11)
      (at-curb-num car_9 curb_3)
      (behind-car car_3 car_9)
      (at-curb-num car_17 curb_2)
      (behind-car car_12 car_17)
      (at-curb-num car_7 curb_0)
      (at-curb-num car_16 curb_7)
    )
  )

)
; =========== init =========== 
;  curb_0: car_12 car_15 
;  curb_1: car_1 car_7 
;  curb_2: car_8 car_0 
;  curb_3: car_11 car_13 
;  curb_4: car_6 car_5 
;  curb_5: car_9 car_14 
;  curb_6: car_3 car_10 
;  curb_7: car_16 car_17 
;  curb_8: car_4 
;  curb_9: car_2 
; ========== /init =========== 

; =========== goal =========== 
;  curb_0: car_15 car_14 
;  curb_1: car_4 car_1 
;  curb_2: car_6 car_2 
;  curb_3: car_10 car_13 
;  curb_4: car_8 car_5 
;  curb_5: car_11 car_0 
;  curb_6: car_9 car_3 
;  curb_7: car_17 car_12 
;  curb_8: car_7 
;  curb_9: car_16 
; =========== /goal =========== 
