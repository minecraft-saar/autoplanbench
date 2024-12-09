(define   (problem parking)
  (:domain parking)
  (:objects
     car_8  car_9  car_11  car_14  car_0  car_10  car_15  car_7  car_12  car_1  car_5  car_2  car_3  car_13  car_4  car_6 - car
     curb_0 curb_2 curb_5 curb_8 curb_6 curb_7 curb_4 curb_1 curb_3 - curb
  )
  (:init
    (at-curb car_8)
    (at-curb-num car_8 curb_0)
    (behind-car car_3 car_8)
    (car-clear car_3)
    (at-curb car_5)
    (at-curb-num car_5 curb_2)
    (behind-car car_12 car_5)
    (car-clear car_12)
    (at-curb car_11)
    (at-curb-num car_11 curb_5)
    (behind-car car_13 car_11)
    (car-clear car_13)
    (at-curb car_6)
    (at-curb-num car_6 curb_8)
    (behind-car car_10 car_6)
    (car-clear car_10)
    (at-curb car_1)
    (at-curb-num car_1 curb_6)
    (behind-car car_14 car_1)
    (car-clear car_14)
    (at-curb car_4)
    (at-curb-num car_4 curb_7)
    (behind-car car_15 car_4)
    (car-clear car_15)
    (at-curb car_7)
    (at-curb-num car_7 curb_4)
    (behind-car car_2 car_7)
    (car-clear car_2)
    (at-curb car_0)
    (at-curb-num car_0 curb_1)
    (behind-car car_9 car_0)
    (car-clear car_9)
    (curb-clear curb_3)
  )
  (:goal
    (and
      (at-curb-num car_8 curb_0)
      (behind-car car_1 car_8)
      (at-curb-num car_9 curb_2)
      (behind-car car_5 car_9)
      (at-curb-num car_11 curb_5)
      (behind-car car_2 car_11)
      (at-curb-num car_14 curb_8)
      (behind-car car_3 car_14)
      (at-curb-num car_0 curb_6)
      (behind-car car_13 car_0)
      (at-curb-num car_10 curb_7)
      (behind-car car_4 car_10)
      (at-curb-num car_15 curb_4)
      (behind-car car_6 car_15)
      (at-curb-num car_7 curb_1)
      (at-curb-num car_12 curb_3)
    )
  )

)
; =========== init =========== 
;  curb_0: car_8 car_3 
;  curb_1: car_5 car_12 
;  curb_2: car_11 car_13 
;  curb_3: car_6 car_10 
;  curb_4: car_1 car_14 
;  curb_5: car_4 car_15 
;  curb_6: car_7 car_2 
;  curb_7: car_0 car_9 
;  curb_8: 
; ========== /init =========== 

; =========== goal =========== 
;  curb_0: car_8 car_1 
;  curb_1: car_9 car_5 
;  curb_2: car_11 car_2 
;  curb_3: car_14 car_3 
;  curb_4: car_0 car_13 
;  curb_5: car_10 car_4 
;  curb_6: car_15 car_6 
;  curb_7: car_7 
;  curb_8: car_12 
; =========== /goal =========== 
