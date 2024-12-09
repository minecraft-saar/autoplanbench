(define   (problem parking)
  (:domain parking)
  (:objects
     car_5  car_11  car_8  car_6  car_4  car_0  car_7  car_2  car_13  car_12  car_1  car_9  car_10  car_3 - car
     curb_5 curb_6 curb_7 curb_2 curb_0 curb_1 curb_4 curb_3 - curb
  )
  (:init
    (at-curb car_10)
    (at-curb-num car_10 curb_5)
    (behind-car car_11 car_10)
    (car-clear car_11)
    (at-curb car_5)
    (at-curb-num car_5 curb_6)
    (behind-car car_6 car_5)
    (car-clear car_6)
    (at-curb car_13)
    (at-curb-num car_13 curb_7)
    (behind-car car_3 car_13)
    (car-clear car_3)
    (at-curb car_4)
    (at-curb-num car_4 curb_2)
    (behind-car car_12 car_4)
    (car-clear car_12)
    (at-curb car_7)
    (at-curb-num car_7 curb_0)
    (behind-car car_8 car_7)
    (car-clear car_8)
    (at-curb car_0)
    (at-curb-num car_0 curb_1)
    (behind-car car_9 car_0)
    (car-clear car_9)
    (at-curb car_1)
    (at-curb-num car_1 curb_4)
    (behind-car car_2 car_1)
    (car-clear car_2)
    (curb-clear curb_3)
  )
  (:goal
    (and
      (at-curb-num car_5 curb_5)
      (behind-car car_13 car_5)
      (at-curb-num car_11 curb_6)
      (behind-car car_12 car_11)
      (at-curb-num car_8 curb_7)
      (behind-car car_1 car_8)
      (at-curb-num car_6 curb_2)
      (behind-car car_9 car_6)
      (at-curb-num car_4 curb_0)
      (behind-car car_10 car_4)
      (at-curb-num car_0 curb_1)
      (behind-car car_3 car_0)
      (at-curb-num car_7 curb_4)
      (at-curb-num car_2 curb_3)
    )
  )

)
; =========== init =========== 
;  curb_0: car_10 car_11 
;  curb_1: car_5 car_6 
;  curb_2: car_13 car_3 
;  curb_3: car_4 car_12 
;  curb_4: car_7 car_8 
;  curb_5: car_0 car_9 
;  curb_6: car_1 car_2 
;  curb_7: 
; ========== /init =========== 

; =========== goal =========== 
;  curb_0: car_5 car_13 
;  curb_1: car_11 car_12 
;  curb_2: car_8 car_1 
;  curb_3: car_6 car_9 
;  curb_4: car_4 car_10 
;  curb_5: car_0 car_3 
;  curb_6: car_7 
;  curb_7: car_2 
; =========== /goal =========== 
