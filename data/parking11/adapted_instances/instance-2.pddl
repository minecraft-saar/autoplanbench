(define   (problem parking)
  (:domain parking)
  (:objects
     car_5  car_0  car_7  car_10  car_11  car_2  car_3  car_6  car_8  car_9  car_1  car_4 - car
     curb_0 curb_3 curb_6 curb_2 curb_4 curb_1 curb_5 - curb
  )
  (:init
    (at-curb car_3)
    (at-curb-num car_3 curb_0)
    (behind-car car_10 car_3)
    (car-clear car_10)
    (at-curb car_7)
    (at-curb-num car_7 curb_3)
    (behind-car car_5 car_7)
    (car-clear car_5)
    (at-curb car_6)
    (at-curb-num car_6 curb_6)
    (behind-car car_1 car_6)
    (car-clear car_1)
    (at-curb car_11)
    (at-curb-num car_11 curb_2)
    (behind-car car_2 car_11)
    (car-clear car_2)
    (at-curb car_8)
    (at-curb-num car_8 curb_4)
    (behind-car car_9 car_8)
    (car-clear car_9)
    (at-curb car_0)
    (at-curb-num car_0 curb_1)
    (behind-car car_4 car_0)
    (car-clear car_4)
    (curb-clear curb_5)
  )
  (:goal
    (and
      (at-curb-num car_5 curb_0)
      (behind-car car_6 car_5)
      (at-curb-num car_0 curb_3)
      (behind-car car_8 car_0)
      (at-curb-num car_7 curb_6)
      (behind-car car_9 car_7)
      (at-curb-num car_10 curb_2)
      (behind-car car_1 car_10)
      (at-curb-num car_11 curb_4)
      (behind-car car_4 car_11)
      (at-curb-num car_2 curb_1)
      (at-curb-num car_3 curb_5)
    )
  )

)
; =========== init =========== 
;  curb_0: car_3 car_10 
;  curb_1: car_7 car_5 
;  curb_2: car_6 car_1 
;  curb_3: car_11 car_2 
;  curb_4: car_8 car_9 
;  curb_5: car_0 car_4 
;  curb_6: 
; ========== /init =========== 

; =========== goal =========== 
;  curb_0: car_5 car_6 
;  curb_1: car_0 car_8 
;  curb_2: car_7 car_9 
;  curb_3: car_10 car_1 
;  curb_4: car_11 car_4 
;  curb_5: car_2 
;  curb_6: car_3 
; =========== /goal =========== 
