(define   (problem parking)
  (:domain parking)
  (:objects
     car_14  car_3  car_11  car_4  car_13  car_12  car_0  car_9  car_8  car_5  car_6  car_10  car_15  car_2  car_7  car_1 - car
     curb_6 curb_2 curb_4 curb_5 curb_7 curb_8 curb_1 curb_3 curb_0 - curb
  )
  (:init
    (at-curb car_6)
    (at-curb-num car_6 curb_6)
    (behind-car car_8 car_6)
    (car-clear car_8)
    (at-curb car_7)
    (at-curb-num car_7 curb_2)
    (behind-car car_5 car_7)
    (car-clear car_5)
    (at-curb car_0)
    (at-curb-num car_0 curb_4)
    (behind-car car_12 car_0)
    (car-clear car_12)
    (at-curb car_4)
    (at-curb-num car_4 curb_5)
    (behind-car car_3 car_4)
    (car-clear car_3)
    (at-curb car_14)
    (at-curb-num car_14 curb_7)
    (behind-car car_15 car_14)
    (car-clear car_15)
    (at-curb car_1)
    (at-curb-num car_1 curb_8)
    (behind-car car_13 car_1)
    (car-clear car_13)
    (at-curb car_2)
    (at-curb-num car_2 curb_1)
    (behind-car car_11 car_2)
    (car-clear car_11)
    (at-curb car_10)
    (at-curb-num car_10 curb_3)
    (behind-car car_9 car_10)
    (car-clear car_9)
    (curb-clear curb_0)
  )
  (:goal
    (and
      (at-curb-num car_14 curb_6)
      (behind-car car_5 car_14)
      (at-curb-num car_3 curb_2)
      (behind-car car_6 car_3)
      (at-curb-num car_11 curb_4)
      (behind-car car_10 car_11)
      (at-curb-num car_4 curb_5)
      (behind-car car_15 car_4)
      (at-curb-num car_13 curb_7)
      (behind-car car_2 car_13)
      (at-curb-num car_12 curb_8)
      (behind-car car_7 car_12)
      (at-curb-num car_0 curb_1)
      (behind-car car_1 car_0)
      (at-curb-num car_9 curb_3)
      (at-curb-num car_8 curb_0)
    )
  )

)
; =========== init =========== 
;  curb_0: car_6 car_8 
;  curb_1: car_7 car_5 
;  curb_2: car_0 car_12 
;  curb_3: car_4 car_3 
;  curb_4: car_14 car_15 
;  curb_5: car_1 car_13 
;  curb_6: car_2 car_11 
;  curb_7: car_10 car_9 
;  curb_8: 
; ========== /init =========== 

; =========== goal =========== 
;  curb_0: car_14 car_5 
;  curb_1: car_3 car_6 
;  curb_2: car_11 car_10 
;  curb_3: car_4 car_15 
;  curb_4: car_13 car_2 
;  curb_5: car_12 car_7 
;  curb_6: car_0 car_1 
;  curb_7: car_9 
;  curb_8: car_8 
; =========== /goal =========== 
