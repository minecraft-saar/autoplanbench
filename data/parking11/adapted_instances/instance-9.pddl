(define   (problem parking)
  (:domain parking)
  (:objects
     car_13  car_1  car_4  car_5  car_7  car_10  car_12  car_11  car_0  car_8  car_6  car_9  car_15  car_3  car_14  car_2 - car
     curb_6 curb_0 curb_5 curb_3 curb_7 curb_1 curb_2 curb_4 curb_8 - curb
  )
  (:init
    (at-curb car_3)
    (at-curb-num car_3 curb_6)
    (behind-car car_5 car_3)
    (car-clear car_5)
    (at-curb car_7)
    (at-curb-num car_7 curb_0)
    (behind-car car_2 car_7)
    (car-clear car_2)
    (at-curb car_8)
    (at-curb-num car_8 curb_5)
    (behind-car car_4 car_8)
    (car-clear car_4)
    (at-curb car_11)
    (at-curb-num car_11 curb_3)
    (behind-car car_1 car_11)
    (car-clear car_1)
    (at-curb car_6)
    (at-curb-num car_6 curb_7)
    (behind-car car_9 car_6)
    (car-clear car_9)
    (at-curb car_12)
    (at-curb-num car_12 curb_1)
    (behind-car car_15 car_12)
    (car-clear car_15)
    (at-curb car_13)
    (at-curb-num car_13 curb_2)
    (behind-car car_14 car_13)
    (car-clear car_14)
    (at-curb car_0)
    (at-curb-num car_0 curb_4)
    (behind-car car_10 car_0)
    (car-clear car_10)
    (curb-clear curb_8)
  )
  (:goal
    (and
      (at-curb-num car_13 curb_6)
      (behind-car car_8 car_13)
      (at-curb-num car_1 curb_0)
      (behind-car car_6 car_1)
      (at-curb-num car_4 curb_5)
      (behind-car car_9 car_4)
      (at-curb-num car_5 curb_3)
      (behind-car car_15 car_5)
      (at-curb-num car_7 curb_7)
      (behind-car car_3 car_7)
      (at-curb-num car_10 curb_1)
      (behind-car car_14 car_10)
      (at-curb-num car_12 curb_2)
      (behind-car car_2 car_12)
      (at-curb-num car_11 curb_4)
      (at-curb-num car_0 curb_8)
    )
  )

)
; =========== init =========== 
;  curb_0: car_3 car_5 
;  curb_1: car_7 car_2 
;  curb_2: car_8 car_4 
;  curb_3: car_11 car_1 
;  curb_4: car_6 car_9 
;  curb_5: car_12 car_15 
;  curb_6: car_13 car_14 
;  curb_7: car_0 car_10 
;  curb_8: 
; ========== /init =========== 

; =========== goal =========== 
;  curb_0: car_13 car_8 
;  curb_1: car_1 car_6 
;  curb_2: car_4 car_9 
;  curb_3: car_5 car_15 
;  curb_4: car_7 car_3 
;  curb_5: car_10 car_14 
;  curb_6: car_12 car_2 
;  curb_7: car_11 
;  curb_8: car_0 
; =========== /goal =========== 
