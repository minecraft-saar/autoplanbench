(define (problem grid-2-2-1-1-1)
    (:domain grid)
    (:objects
    object_2 object_1 object_3 object_5
    object_4
    object_0
    )

    (:init
       (arm-empty)

       (place object_2)
       (place object_1)
       (place object_3)
       (place object_5)
       (shape object_4)
       (key object_0)

       (conn object_2 object_3)
       (conn object_2 object_1)
       (conn object_1 object_5)
       (conn object_1 object_2)
       (conn object_3 object_5)
       (conn object_3 object_2)
       (conn object_5 object_1)
       (conn object_5 object_3)
       (locked object_3)
       (lock-shape  object_3 object_4)
       (open object_2)
       (open object_1)
       (open object_5)

       (key-shape  object_0 object_4)
       (at object_0 object_1)
       (at-robot object_5)
    )

    (:goal (and
       (at object_0 object_3)
    )))
    
