(define   (problem parking)
  (:domain parking)
  (:objects
     car_0  car_8  car_14  car_4  car_1  car_13  car_17  car_3  car_5  car_15  car_11  car_9  car_12  car_2  car_6  car_10  car_16  car_7 - car
     curb_2 curb_6 curb_5 curb_7 curb_4 curb_3 curb_0 curb_1 curb_9 curb_8 - curb
  )
  (:init
    (at-curb car_13)
    (at-curb-num car_13 curb_2)
    (behind-car car_7 car_13)
    (car-clear car_7)
    (at-curb car_2)
    (at-curb-num car_2 curb_6)
    (behind-car car_10 car_2)
    (car-clear car_10)
    (at-curb car_3)
    (at-curb-num car_3 curb_5)
    (behind-car car_15 car_3)
    (car-clear car_15)
    (at-curb car_17)
    (at-curb-num car_17 curb_7)
    (behind-car car_16 car_17)
    (car-clear car_16)
    (at-curb car_11)
    (at-curb-num car_11 curb_4)
    (behind-car car_1 car_11)
    (car-clear car_1)
    (at-curb car_6)
    (at-curb-num car_6 curb_3)
    (behind-car car_12 car_6)
    (car-clear car_12)
    (at-curb car_14)
    (at-curb-num car_14 curb_0)
    (behind-car car_9 car_14)
    (car-clear car_9)
    (at-curb car_8)
    (at-curb-num car_8 curb_1)
    (behind-car car_5 car_8)
    (car-clear car_5)
    (at-curb car_4)
    (at-curb-num car_4 curb_9)
    (car-clear car_4)
    (at-curb car_0)
    (at-curb-num car_0 curb_8)
    (car-clear car_0)
  )
  (:goal
    (and
      (at-curb-num car_0 curb_2)
      (behind-car car_11 car_0)
      (at-curb-num car_8 curb_6)
      (behind-car car_9 car_8)
      (at-curb-num car_14 curb_5)
      (behind-car car_12 car_14)
      (at-curb-num car_4 curb_7)
      (behind-car car_2 car_4)
      (at-curb-num car_1 curb_4)
      (behind-car car_6 car_1)
      (at-curb-num car_13 curb_3)
      (behind-car car_10 car_13)
      (at-curb-num car_17 curb_0)
      (behind-car car_16 car_17)
      (at-curb-num car_3 curb_1)
      (behind-car car_7 car_3)
      (at-curb-num car_5 curb_9)
      (at-curb-num car_15 curb_8)
    )
  )

)
; =========== init =========== 
;  curb_0: car_13 car_7 
;  curb_1: car_2 car_10 
;  curb_2: car_3 car_15 
;  curb_3: car_17 car_16 
;  curb_4: car_11 car_1 
;  curb_5: car_6 car_12 
;  curb_6: car_14 car_9 
;  curb_7: car_8 car_5 
;  curb_8: car_4 
;  curb_9: car_0 
; ========== /init =========== 

; =========== goal =========== 
;  curb_0: car_0 car_11 
;  curb_1: car_8 car_9 
;  curb_2: car_14 car_12 
;  curb_3: car_4 car_2 
;  curb_4: car_1 car_6 
;  curb_5: car_13 car_10 
;  curb_6: car_17 car_16 
;  curb_7: car_3 car_7 
;  curb_8: car_5 
;  curb_9: car_15 
; =========== /goal =========== 
