(define   (problem parking)
  (:domain parking)
  (:objects
     car_17  car_11  car_15  car_10  car_8  car_2  car_1  car_9  car_14  car_12  car_7  car_5  car_0  car_16  car_4  car_13  car_6  car_3 - car
     curb_7 curb_1 curb_5 curb_3 curb_0 curb_9 curb_4 curb_6 curb_8 curb_2 - curb
  )
  (:init
    (at-curb car_15)
    (at-curb-num car_15 curb_7)
    (behind-car car_13 car_15)
    (car-clear car_13)
    (at-curb car_11)
    (at-curb-num car_11 curb_1)
    (behind-car car_1 car_11)
    (car-clear car_1)
    (at-curb car_10)
    (at-curb-num car_10 curb_5)
    (behind-car car_16 car_10)
    (car-clear car_16)
    (at-curb car_17)
    (at-curb-num car_17 curb_3)
    (behind-car car_2 car_17)
    (car-clear car_2)
    (at-curb car_12)
    (at-curb-num car_12 curb_0)
    (behind-car car_9 car_12)
    (car-clear car_9)
    (at-curb car_7)
    (at-curb-num car_7 curb_9)
    (behind-car car_8 car_7)
    (car-clear car_8)
    (at-curb car_3)
    (at-curb-num car_3 curb_4)
    (behind-car car_5 car_3)
    (car-clear car_5)
    (at-curb car_6)
    (at-curb-num car_6 curb_6)
    (behind-car car_0 car_6)
    (car-clear car_0)
    (at-curb car_4)
    (at-curb-num car_4 curb_8)
    (car-clear car_4)
    (at-curb car_14)
    (at-curb-num car_14 curb_2)
    (car-clear car_14)
  )
  (:goal
    (and
      (at-curb-num car_17 curb_7)
      (behind-car car_7 car_17)
      (at-curb-num car_11 curb_1)
      (behind-car car_5 car_11)
      (at-curb-num car_15 curb_5)
      (behind-car car_0 car_15)
      (at-curb-num car_10 curb_3)
      (behind-car car_16 car_10)
      (at-curb-num car_8 curb_0)
      (behind-car car_4 car_8)
      (at-curb-num car_2 curb_9)
      (behind-car car_13 car_2)
      (at-curb-num car_1 curb_4)
      (behind-car car_6 car_1)
      (at-curb-num car_9 curb_6)
      (behind-car car_3 car_9)
      (at-curb-num car_14 curb_8)
      (at-curb-num car_12 curb_2)
    )
  )

)
; =========== init =========== 
;  curb_0: car_15 car_13 
;  curb_1: car_11 car_1 
;  curb_2: car_10 car_16 
;  curb_3: car_17 car_2 
;  curb_4: car_12 car_9 
;  curb_5: car_7 car_8 
;  curb_6: car_3 car_5 
;  curb_7: car_6 car_0 
;  curb_8: car_4 
;  curb_9: car_14 
; ========== /init =========== 

; =========== goal =========== 
;  curb_0: car_17 car_7 
;  curb_1: car_11 car_5 
;  curb_2: car_15 car_0 
;  curb_3: car_10 car_16 
;  curb_4: car_8 car_4 
;  curb_5: car_2 car_13 
;  curb_6: car_1 car_6 
;  curb_7: car_9 car_3 
;  curb_8: car_14 
;  curb_9: car_12 
; =========== /goal =========== 
