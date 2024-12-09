(define (problem scanalyzer3d-32)
  (:domain scanalyzer3d)
  (:objects
    car_0 - car
    car_6 - car
    car_3 - car
    car_11 - car
    car_5 - car
    car_9 - car
    car_13 - car
    car_10 - car
    car_8 - car
    car_7 - car
    car_4 - car
    car_1 - car
    car_2 - car
    car_12 - car
    segment_5 - segment
    segment_13 - segment
    segment_9 - segment
    segment_1 - segment
    segment_10 - segment
    segment_12 - segment
    segment_8 - segment
    segment_6 - segment
    segment_4 - segment
    segment_0 - segment
    segment_11 - segment
    segment_7 - segment
    segment_3 - segment
    segment_2 - segment
  )
  (:init
    (cycle-2 segment_5 segment_6)
    (cycle-2 segment_5 segment_4)
    (cycle-2 segment_5 segment_0)
    (cycle-2 segment_5 segment_11)
    (cycle-2 segment_5 segment_7)
    (cycle-2 segment_5 segment_3)
    (cycle-2 segment_5 segment_2)
    (cycle-2 segment_13 segment_6)
    (cycle-2 segment_13 segment_4)
    (cycle-2 segment_13 segment_0)
    (cycle-2 segment_13 segment_11)
    (cycle-2 segment_13 segment_7)
    (cycle-2 segment_13 segment_3)
    (cycle-2 segment_13 segment_2)
    (cycle-2 segment_9 segment_6)
    (cycle-2 segment_9 segment_4)
    (cycle-2 segment_9 segment_0)
    (cycle-2 segment_9 segment_11)
    (cycle-2 segment_9 segment_7)
    (cycle-2 segment_9 segment_3)
    (cycle-2 segment_9 segment_2)
    (cycle-2 segment_1 segment_6)
    (cycle-2 segment_1 segment_4)
    (cycle-2 segment_1 segment_0)
    (cycle-2 segment_1 segment_11)
    (cycle-2 segment_1 segment_7)
    (cycle-2 segment_1 segment_3)
    (cycle-2 segment_1 segment_2)
    (cycle-2 segment_10 segment_6)
    (cycle-2 segment_10 segment_4)
    (cycle-2 segment_10 segment_0)
    (cycle-2 segment_10 segment_11)
    (cycle-2 segment_10 segment_7)
    (cycle-2 segment_10 segment_3)
    (cycle-2 segment_10 segment_2)
    (cycle-2 segment_12 segment_6)
    (cycle-2 segment_12 segment_4)
    (cycle-2 segment_12 segment_0)
    (cycle-2 segment_12 segment_11)
    (cycle-2 segment_12 segment_7)
    (cycle-2 segment_12 segment_3)
    (cycle-2 segment_12 segment_2)
    (cycle-2 segment_8 segment_6)
    (cycle-2 segment_8 segment_4)
    (cycle-2 segment_8 segment_0)
    (cycle-2 segment_8 segment_11)
    (cycle-2 segment_8 segment_7)
    (cycle-2 segment_8 segment_3)
    (cycle-2 segment_8 segment_2)
    (cycle-2-with-analysis segment_5 segment_6)
    (cycle-2-with-analysis segment_13 segment_6)
    (cycle-2-with-analysis segment_9 segment_6)
    (cycle-2-with-analysis segment_1 segment_6)
    (cycle-2-with-analysis segment_10 segment_6)
    (cycle-2-with-analysis segment_12 segment_6)
    (cycle-2-with-analysis segment_8 segment_6)
    (on car_0 segment_5)
    (on car_6 segment_13)
    (on car_3 segment_9)
    (on car_11 segment_1)
    (on car_5 segment_10)
    (on car_9 segment_12)
    (on car_13 segment_8)
    (on car_10 segment_6)
    (on car_8 segment_4)
    (on car_7 segment_0)
    (on car_4 segment_11)
    (on car_1 segment_7)
    (on car_2 segment_3)
    (on car_12 segment_2)
  )
  (:goal (and
    (analyzed car_0)
    (analyzed car_6)
    (analyzed car_3)
    (analyzed car_11)
    (analyzed car_5)
    (analyzed car_9)
    (analyzed car_13)
    (analyzed car_10)
    (analyzed car_8)
    (analyzed car_7)
    (analyzed car_4)
    (analyzed car_1)
    (analyzed car_2)
    (analyzed car_12)
    (on car_0 segment_5)
    (on car_6 segment_13)
    (on car_3 segment_9)
    (on car_11 segment_1)
    (on car_5 segment_10)
    (on car_9 segment_12)
    (on car_13 segment_8)
    (on car_10 segment_6)
    (on car_8 segment_4)
    (on car_7 segment_0)
    (on car_4 segment_11)
    (on car_1 segment_7)
    (on car_2 segment_3)
    (on car_12 segment_2)
  ))
  
)
