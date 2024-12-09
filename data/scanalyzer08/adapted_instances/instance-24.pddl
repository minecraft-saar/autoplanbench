(define (problem scanalyzer3d-51)
  (:domain scanalyzer3d)
  (:objects
    car_1 - car
    car_3 - car
    car_0 - car
    car_2 - car
    segment_1 - segment
    segment_3 - segment
    segment_2 - segment
    segment_0 - segment
  )
  (:init
    (cycle-4 segment_1 segment_3 segment_2 segment_0)
    (cycle-4-with-analysis segment_1 segment_3 segment_2 segment_0)
    (on car_1 segment_1)
    (on car_3 segment_3)
    (on car_0 segment_2)
    (on car_2 segment_0)
  )
  (:goal (and
    (analyzed car_1)
    (analyzed car_3)
    (analyzed car_0)
    (analyzed car_2)
    (on car_1 segment_0)
    (on car_3 segment_1)
    (on car_0 segment_3)
    (on car_2 segment_2)
  ))
  
)
