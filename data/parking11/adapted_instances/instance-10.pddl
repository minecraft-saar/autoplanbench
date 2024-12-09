(define   (problem parking)
  (:domain parking)
  (:objects
     car_5  car_2  car_6  car_4  car_15  car_3  car_12  car_11  car_7  car_1  car_10  car_8  car_13  car_9  car_14  car_0 - car
     curb_5 curb_3 curb_0 curb_1 curb_4 curb_7 curb_8 curb_6 curb_2 - curb
  )
  (:init
    (at-curb car_9)
    (at-curb-num car_9 curb_5)
    (behind-car car_11 car_9)
    (car-clear car_11)
    (at-curb car_15)
    (at-curb-num car_15 curb_3)
    (behind-car car_7 car_15)
    (car-clear car_7)
    (at-curb car_13)
    (at-curb-num car_13 curb_0)
    (behind-car car_12 car_13)
    (car-clear car_12)
    (at-curb car_10)
    (at-curb-num car_10 curb_1)
    (behind-car car_3 car_10)
    (car-clear car_3)
    (at-curb car_14)
    (at-curb-num car_14 curb_4)
    (behind-car car_2 car_14)
    (car-clear car_2)
    (at-curb car_0)
    (at-curb-num car_0 curb_7)
    (behind-car car_8 car_0)
    (car-clear car_8)
    (at-curb car_4)
    (at-curb-num car_4 curb_8)
    (behind-car car_1 car_4)
    (car-clear car_1)
    (at-curb car_5)
    (at-curb-num car_5 curb_6)
    (car-clear car_5)
    (at-curb car_6)
    (at-curb-num car_6 curb_2)
    (car-clear car_6)
  )
  (:goal
    (and
      (at-curb-num car_5 curb_5)
      (behind-car car_1 car_5)
      (at-curb-num car_2 curb_3)
      (behind-car car_10 car_2)
      (at-curb-num car_6 curb_0)
      (behind-car car_8 car_6)
      (at-curb-num car_4 curb_1)
      (behind-car car_13 car_4)
      (at-curb-num car_15 curb_4)
      (behind-car car_9 car_15)
      (at-curb-num car_3 curb_7)
      (behind-car car_14 car_3)
      (at-curb-num car_12 curb_8)
      (behind-car car_0 car_12)
      (at-curb-num car_11 curb_6)
      (at-curb-num car_7 curb_2)
    )
  )

)
; =========== init =========== 
;  curb_0: car_9 car_11 
;  curb_1: car_15 car_7 
;  curb_2: car_13 car_12 
;  curb_3: car_10 car_3 
;  curb_4: car_14 car_2 
;  curb_5: car_0 car_8 
;  curb_6: car_4 car_1 
;  curb_7: car_5 
;  curb_8: car_6 
; ========== /init =========== 

; =========== goal =========== 
;  curb_0: car_5 car_1 
;  curb_1: car_2 car_10 
;  curb_2: car_6 car_8 
;  curb_3: car_4 car_13 
;  curb_4: car_15 car_9 
;  curb_5: car_3 car_14 
;  curb_6: car_12 car_0 
;  curb_7: car_11 
;  curb_8: car_7 
; =========== /goal =========== 
