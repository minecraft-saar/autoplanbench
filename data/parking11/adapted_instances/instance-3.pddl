(define   (problem parking)
  (:domain parking)
  (:objects
     car_4  car_0  car_12  car_1  car_9  car_10  car_5  car_8  car_11  car_6  car_13  car_3  car_2  car_7 - car
     curb_3 curb_0 curb_6 curb_4 curb_5 curb_1 curb_7 curb_2 - curb
  )
  (:init
    (at-curb car_13)
    (at-curb-num car_13 curb_3)
    (behind-car car_12 car_13)
    (car-clear car_12)
    (at-curb car_10)
    (at-curb-num car_10 curb_0)
    (behind-car car_2 car_10)
    (car-clear car_2)
    (at-curb car_7)
    (at-curb-num car_7 curb_6)
    (behind-car car_8 car_7)
    (car-clear car_8)
    (at-curb car_5)
    (at-curb-num car_5 curb_4)
    (behind-car car_1 car_5)
    (car-clear car_1)
    (at-curb car_0)
    (at-curb-num car_0 curb_5)
    (behind-car car_9 car_0)
    (car-clear car_9)
    (at-curb car_11)
    (at-curb-num car_11 curb_1)
    (behind-car car_4 car_11)
    (car-clear car_4)
    (at-curb car_3)
    (at-curb-num car_3 curb_7)
    (car-clear car_3)
    (at-curb car_6)
    (at-curb-num car_6 curb_2)
    (car-clear car_6)
  )
  (:goal
    (and
      (at-curb-num car_4 curb_3)
      (behind-car car_11 car_4)
      (at-curb-num car_0 curb_0)
      (behind-car car_6 car_0)
      (at-curb-num car_12 curb_6)
      (behind-car car_13 car_12)
      (at-curb-num car_1 curb_4)
      (behind-car car_3 car_1)
      (at-curb-num car_9 curb_5)
      (behind-car car_2 car_9)
      (at-curb-num car_10 curb_1)
      (behind-car car_7 car_10)
      (at-curb-num car_5 curb_7)
      (at-curb-num car_8 curb_2)
    )
  )

)
; =========== init =========== 
;  curb_0: car_13 car_12 
;  curb_1: car_10 car_2 
;  curb_2: car_7 car_8 
;  curb_3: car_5 car_1 
;  curb_4: car_0 car_9 
;  curb_5: car_11 car_4 
;  curb_6: car_3 
;  curb_7: car_6 
; ========== /init =========== 

; =========== goal =========== 
;  curb_0: car_4 car_11 
;  curb_1: car_0 car_6 
;  curb_2: car_12 car_13 
;  curb_3: car_1 car_3 
;  curb_4: car_9 car_2 
;  curb_5: car_10 car_7 
;  curb_6: car_5 
;  curb_7: car_8 
; =========== /goal =========== 
