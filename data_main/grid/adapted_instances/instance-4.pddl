(define (problem grid-3-2-2-2-2)
    (:domain grid)
    (:objects
    object_0 object_1 object_2 object_3 object_4 object_5
    object_6 object_7
    object_8 object_9
    )

    (:init
       (arm-empty)

       (place object_0)
       (place object_1)
       (place object_2)
       (place object_3)
       (place object_4)
       (place object_5)
       (shape object_6)
       (shape object_7)
       (key object_8)
       (key object_9)

       (conn object_0 object_2)
       (conn object_0 object_1)
       (conn object_1 object_3)
       (conn object_1 object_0)
       (conn object_2 object_4)
       (conn object_2 object_3)
       (conn object_2 object_0)
       (conn object_3 object_5)
       (conn object_3 object_1)
       (conn object_3 object_2)
       (conn object_4 object_5)
       (conn object_4 object_2)
       (conn object_5 object_3)
       (conn object_5 object_4)
       (locked object_3)
       (locked object_4)
       (lock-shape  object_3 object_6)
       (lock-shape  object_4 object_7)
       (open object_0)
       (open object_1)
       (open object_2)
       (open object_5)

       (key-shape  object_8 object_6)
       (key-shape  object_9 object_7)
       (at object_8 object_2)
       (at object_9 object_5)
       (at-robot object_5)
    )

    (:goal (and
       (at object_9 object_3)
    )))
    
