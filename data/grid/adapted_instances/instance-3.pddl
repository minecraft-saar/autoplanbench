(define (problem grid-3-2-2-2-2)
    (:domain grid)
    (:objects
    object_9 object_1 object_5 object_4 object_6 object_2
    object_3 object_7
    object_0 object_8
    )

    (:init
       (arm-empty)

       (place object_9)
       (place object_1)
       (place object_5)
       (place object_4)
       (place object_6)
       (place object_2)
       (shape object_3)
       (shape object_7)
       (key object_0)
       (key object_8)

       (conn object_9 object_5)
       (conn object_9 object_1)
       (conn object_1 object_4)
       (conn object_1 object_9)
       (conn object_5 object_6)
       (conn object_5 object_4)
       (conn object_5 object_9)
       (conn object_4 object_2)
       (conn object_4 object_1)
       (conn object_4 object_5)
       (conn object_6 object_2)
       (conn object_6 object_5)
       (conn object_2 object_4)
       (conn object_2 object_6)
       (locked object_5)
       (locked object_2)
       (lock-shape  object_5 object_3)
       (lock-shape  object_2 object_7)
       (open object_9)
       (open object_1)
       (open object_4)
       (open object_6)

       (key-shape  object_0 object_3)
       (key-shape  object_8 object_7)
       (at object_0 object_1)
       (at object_8 object_6)
       (at-robot object_1)
    )

    (:goal (and
       (at object_8 object_2)
    )))
    
