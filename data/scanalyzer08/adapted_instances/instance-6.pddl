(define (problem scanalyzer3d-16)
  (:domain scanalyzer3d)
  (:objects
    car_7 - car
    car_0 - car
    car_4 - car
    car_2 - car
    car_3 - car
    car_1 - car
    car_5 - car
    car_6 - car
    segment_4 - segment
    segment_0 - segment
    segment_6 - segment
    segment_2 - segment
    segment_7 - segment
    segment_1 - segment
    segment_3 - segment
    segment_5 - segment
  )
  (:init
    (cycle-2 segment_4 segment_7)
    (cycle-2 segment_4 segment_1)
    (cycle-2 segment_4 segment_3)
    (cycle-2 segment_4 segment_5)
    (cycle-2 segment_0 segment_7)
    (cycle-2 segment_0 segment_1)
    (cycle-2 segment_0 segment_3)
    (cycle-2 segment_0 segment_5)
    (cycle-2 segment_6 segment_7)
    (cycle-2 segment_6 segment_1)
    (cycle-2 segment_6 segment_3)
    (cycle-2 segment_6 segment_5)
    (cycle-2 segment_2 segment_7)
    (cycle-2 segment_2 segment_1)
    (cycle-2 segment_2 segment_3)
    (cycle-2 segment_2 segment_5)
    (cycle-2-with-analysis segment_4 segment_7)
    (on car_7 segment_4)
    (on car_0 segment_0)
    (on car_4 segment_6)
    (on car_2 segment_2)
    (on car_3 segment_7)
    (on car_1 segment_1)
    (on car_5 segment_3)
    (on car_6 segment_5)
  )
  (:goal (and
    (analyzed car_7)
    (analyzed car_0)
    (analyzed car_4)
    (analyzed car_2)
    (analyzed car_3)
    (analyzed car_1)
    (analyzed car_5)
    (analyzed car_6)
    (on car_7 segment_4)
    (on car_0 segment_0)
    (on car_4 segment_6)
    (on car_2 segment_2)
    (on car_3 segment_7)
    (on car_1 segment_1)
    (on car_5 segment_3)
    (on car_6 segment_5)
  ))
  
)
