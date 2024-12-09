(define   (problem parking)
  (:domain parking)
  (:objects
     car_2  car_5  car_11  car_4  car_0  car_6  car_12  car_7  car_13  car_3  car_8  car_9  car_10  car_1 - car
     curb_3 curb_7 curb_6 curb_1 curb_4 curb_5 curb_2 curb_0 - curb
  )
  (:init
    (at-curb car_12)
    (at-curb-num car_12 curb_3)
    (behind-car car_0 car_12)
    (car-clear car_0)
    (at-curb car_11)
    (at-curb-num car_11 curb_7)
    (behind-car car_13 car_11)
    (car-clear car_13)
    (at-curb car_7)
    (at-curb-num car_7 curb_6)
    (behind-car car_8 car_7)
    (car-clear car_8)
    (at-curb car_9)
    (at-curb-num car_9 curb_1)
    (behind-car car_4 car_9)
    (car-clear car_4)
    (at-curb car_5)
    (at-curb-num car_5 curb_4)
    (behind-car car_3 car_5)
    (car-clear car_3)
    (at-curb car_10)
    (at-curb-num car_10 curb_5)
    (behind-car car_1 car_10)
    (car-clear car_1)
    (at-curb car_6)
    (at-curb-num car_6 curb_2)
    (behind-car car_2 car_6)
    (car-clear car_2)
    (curb-clear curb_0)
  )
  (:goal
    (and
      (at-curb-num car_2 curb_3)
      (behind-car car_13 car_2)
      (at-curb-num car_5 curb_7)
      (behind-car car_3 car_5)
      (at-curb-num car_11 curb_6)
      (behind-car car_8 car_11)
      (at-curb-num car_4 curb_1)
      (behind-car car_9 car_4)
      (at-curb-num car_0 curb_4)
      (behind-car car_10 car_0)
      (at-curb-num car_6 curb_5)
      (behind-car car_1 car_6)
      (at-curb-num car_12 curb_2)
      (at-curb-num car_7 curb_0)
    )
  )

)
; =========== init =========== 
;  curb_0: car_12 car_0 
;  curb_1: car_11 car_13 
;  curb_2: car_7 car_8 
;  curb_3: car_9 car_4 
;  curb_4: car_5 car_3 
;  curb_5: car_10 car_1 
;  curb_6: car_6 car_2 
;  curb_7: 
; ========== /init =========== 

; =========== goal =========== 
;  curb_0: car_2 car_13 
;  curb_1: car_5 car_3 
;  curb_2: car_11 car_8 
;  curb_3: car_4 car_9 
;  curb_4: car_0 car_10 
;  curb_5: car_6 car_1 
;  curb_6: car_12 
;  curb_7: car_7 
; =========== /goal =========== 
