(define (problem grid-2-2-1-1-1)
    (:domain grid)
    (:objects
    object_0 object_1 object_2 object_3
    object_4
    object_5
    )

    (:init
       (arm-empty)

       (place object_0)
       (place object_1)
       (place object_2)
       (place object_3)
       (shape object_4)
       (key object_5)

       (conn object_0 object_2)
       (conn object_0 object_1)
       (conn object_1 object_3)
       (conn object_1 object_0)
       (conn object_2 object_3)
       (conn object_2 object_0)
       (conn object_3 object_1)
       (conn object_3 object_2)
       (locked object_3)
       (lock-shape  object_3 object_4)
       (open object_0)
       (open object_1)
       (open object_2)

       (key-shape  object_5 object_4)
       (at object_5 object_2)
       (at-robot object_2)
    )

    (:goal (and
       (at object_5 object_3)
    )))
    
