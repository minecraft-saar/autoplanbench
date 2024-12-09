(define (problem grid-3-2-2-2-2)
    (:domain grid)
    (:objects
    object_5 object_2 object_0 object_4 object_3 object_7
    object_9 object_8
    object_1 object_6
    )

    (:init
       (arm-empty)

       (place object_5)
       (place object_2)
       (place object_0)
       (place object_4)
       (place object_3)
       (place object_7)
       (shape object_9)
       (shape object_8)
       (key object_1)
       (key object_6)

       (conn object_5 object_0)
       (conn object_5 object_2)
       (conn object_2 object_4)
       (conn object_2 object_5)
       (conn object_0 object_3)
       (conn object_0 object_4)
       (conn object_0 object_5)
       (conn object_4 object_7)
       (conn object_4 object_2)
       (conn object_4 object_0)
       (conn object_3 object_7)
       (conn object_3 object_0)
       (conn object_7 object_4)
       (conn object_7 object_3)
       (locked object_4)
       (locked object_3)
       (lock-shape  object_4 object_9)
       (lock-shape  object_3 object_8)
       (open object_5)
       (open object_2)
       (open object_0)
       (open object_7)

       (key-shape  object_1 object_9)
       (key-shape  object_6 object_8)
       (at object_1 object_0)
       (at object_6 object_7)
       (at-robot object_7)
    )

    (:goal (and
       (at object_6 object_4)
    )))
    
