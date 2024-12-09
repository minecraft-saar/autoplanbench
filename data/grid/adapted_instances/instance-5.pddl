(define (problem grid-3-2-2-2-2)
    (:domain grid)
    (:objects
    object_6 object_5 object_2 object_8 object_1 object_0
    object_3 object_9
    object_7 object_4
    )

    (:init
       (arm-empty)

       (place object_6)
       (place object_5)
       (place object_2)
       (place object_8)
       (place object_1)
       (place object_0)
       (shape object_3)
       (shape object_9)
       (key object_7)
       (key object_4)

       (conn object_6 object_2)
       (conn object_6 object_5)
       (conn object_5 object_8)
       (conn object_5 object_6)
       (conn object_2 object_1)
       (conn object_2 object_8)
       (conn object_2 object_6)
       (conn object_8 object_0)
       (conn object_8 object_5)
       (conn object_8 object_2)
       (conn object_1 object_0)
       (conn object_1 object_2)
       (conn object_0 object_8)
       (conn object_0 object_1)
       (locked object_5)
       (locked object_6)
       (lock-shape  object_5 object_3)
       (lock-shape  object_6 object_9)
       (open object_2)
       (open object_8)
       (open object_1)
       (open object_0)

       (key-shape  object_7 object_3)
       (key-shape  object_4 object_9)
       (at object_7 object_2)
       (at object_4 object_8)
       (at-robot object_2)
    )

    (:goal (and
       (at object_7 object_8)
       (at object_4 object_2)
    )))
    
