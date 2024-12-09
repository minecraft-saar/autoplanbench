(define   (problem parking)
  (:domain parking)
  (:objects
     car_3  car_11  car_5  car_6  car_8  car_9  car_4  car_13  car_7  car_0  car_2  car_1  car_10  car_12 - car
     curb_7 curb_0 curb_1 curb_3 curb_5 curb_4 curb_6 curb_2 - curb
  )
  (:init
    (at-curb car_6)
    (at-curb-num car_6 curb_7)
    (behind-car car_5 car_6)
    (car-clear car_5)
    (at-curb car_9)
    (at-curb-num car_9 curb_0)
    (behind-car car_1 car_9)
    (car-clear car_1)
    (at-curb car_4)
    (at-curb-num car_4 curb_1)
    (behind-car car_2 car_4)
    (car-clear car_2)
    (at-curb car_3)
    (at-curb-num car_3 curb_3)
    (behind-car car_7 car_3)
    (car-clear car_7)
    (at-curb car_8)
    (at-curb-num car_8 curb_5)
    (behind-car car_12 car_8)
    (car-clear car_12)
    (at-curb car_0)
    (at-curb-num car_0 curb_4)
    (behind-car car_13 car_0)
    (car-clear car_13)
    (at-curb car_10)
    (at-curb-num car_10 curb_6)
    (behind-car car_11 car_10)
    (car-clear car_11)
    (curb-clear curb_2)
  )
  (:goal
    (and
      (at-curb-num car_3 curb_7)
      (behind-car car_7 car_3)
      (at-curb-num car_11 curb_0)
      (behind-car car_0 car_11)
      (at-curb-num car_5 curb_1)
      (behind-car car_2 car_5)
      (at-curb-num car_6 curb_3)
      (behind-car car_1 car_6)
      (at-curb-num car_8 curb_5)
      (behind-car car_10 car_8)
      (at-curb-num car_9 curb_4)
      (behind-car car_12 car_9)
      (at-curb-num car_4 curb_6)
      (at-curb-num car_13 curb_2)
    )
  )

)
; =========== init =========== 
;  curb_0: car_6 car_5 
;  curb_1: car_9 car_1 
;  curb_2: car_4 car_2 
;  curb_3: car_3 car_7 
;  curb_4: car_8 car_12 
;  curb_5: car_0 car_13 
;  curb_6: car_10 car_11 
;  curb_7: 
; ========== /init =========== 

; =========== goal =========== 
;  curb_0: car_3 car_7 
;  curb_1: car_11 car_0 
;  curb_2: car_5 car_2 
;  curb_3: car_6 car_1 
;  curb_4: car_8 car_10 
;  curb_5: car_9 car_12 
;  curb_6: car_4 
;  curb_7: car_13 
; =========== /goal =========== 
