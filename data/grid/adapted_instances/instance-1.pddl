(define (problem grid-2-2-1-1-1)
    (:domain grid)
    (:objects
    object_2 object_5 object_3 object_4
    object_0
    object_1
    )

    (:init
       (arm-empty)

       (place object_2)
       (place object_5)
       (place object_3)
       (place object_4)
       (shape object_0)
       (key object_1)

       (conn object_2 object_3)
       (conn object_2 object_5)
       (conn object_5 object_4)
       (conn object_5 object_2)
       (conn object_3 object_4)
       (conn object_3 object_2)
       (conn object_4 object_5)
       (conn object_4 object_3)
       (locked object_4)
       (lock-shape  object_4 object_0)
       (open object_2)
       (open object_5)
       (open object_3)

       (key-shape  object_1 object_0)
       (at object_1 object_3)
       (at-robot object_3)
    )

    (:goal (and
       (at object_1 object_4)
    )))
    
