(define (problem scanalyzer3d-52)
  (:domain scanalyzer3d)
  (:objects
    car_3 - car
    car_2 - car
    car_1 - car
    car_0 - car
    segment_3 - segment
    segment_2 - segment
    segment_0 - segment
    segment_1 - segment
  )
  (:init
    (cycle-4 segment_3 segment_2 segment_0 segment_1)
    (cycle-4-with-analysis segment_3 segment_2 segment_0 segment_1)
    (on car_3 segment_3)
    (on car_2 segment_2)
    (on car_1 segment_0)
    (on car_0 segment_1)
  )
  (:goal (and
    (analyzed car_3)
    (analyzed car_2)
    (analyzed car_1)
    (analyzed car_0)
    (on car_3 segment_1)
    (on car_2 segment_3)
    (on car_1 segment_2)
    (on car_0 segment_0)
  ))
  
)
