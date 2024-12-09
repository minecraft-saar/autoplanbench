(define (problem scanalyzer3d-17)
  (:domain scanalyzer3d)
  (:objects
    car_6 - car
    car_4 - car
    car_3 - car
    car_5 - car
    car_1 - car
    car_7 - car
    car_2 - car
    car_0 - car
    segment_6 - segment
    segment_5 - segment
    segment_7 - segment
    segment_3 - segment
    segment_1 - segment
    segment_2 - segment
    segment_0 - segment
    segment_4 - segment
  )
  (:init
    (cycle-2 segment_6 segment_1)
    (cycle-2 segment_6 segment_2)
    (cycle-2 segment_6 segment_0)
    (cycle-2 segment_6 segment_4)
    (cycle-2 segment_5 segment_1)
    (cycle-2 segment_5 segment_2)
    (cycle-2 segment_5 segment_0)
    (cycle-2 segment_5 segment_4)
    (cycle-2 segment_7 segment_1)
    (cycle-2 segment_7 segment_2)
    (cycle-2 segment_7 segment_0)
    (cycle-2 segment_7 segment_4)
    (cycle-2 segment_3 segment_1)
    (cycle-2 segment_3 segment_2)
    (cycle-2 segment_3 segment_0)
    (cycle-2 segment_3 segment_4)
    (cycle-2-with-analysis segment_6 segment_1)
    (cycle-2-with-analysis segment_5 segment_1)
    (cycle-2-with-analysis segment_7 segment_1)
    (cycle-2-with-analysis segment_3 segment_1)
    (on car_6 segment_6)
    (on car_4 segment_5)
    (on car_3 segment_7)
    (on car_5 segment_3)
    (on car_1 segment_1)
    (on car_7 segment_2)
    (on car_2 segment_0)
    (on car_0 segment_4)
  )
  (:goal (and
    (analyzed car_6)
    (analyzed car_4)
    (analyzed car_3)
    (analyzed car_5)
    (analyzed car_1)
    (analyzed car_7)
    (analyzed car_2)
    (analyzed car_0)
    (on car_6 segment_6)
    (on car_4 segment_5)
    (on car_3 segment_7)
    (on car_5 segment_3)
    (on car_1 segment_1)
    (on car_7 segment_2)
    (on car_2 segment_0)
    (on car_0 segment_4)
  ))
  
)
