(define (problem grid-2-3-1-2-3)
    (:domain grid)
    (:objects
    object_1 object_2 object_3 object_8 object_6 object_5
    object_0
    object_7 object_4
    )

    (:init
       (arm-empty)

       (place object_1)
       (place object_2)
       (place object_3)
       (place object_8)
       (place object_6)
       (place object_5)
       (shape object_0)
       (key object_7)
       (key object_4)

       (conn object_1 object_8)
       (conn object_1 object_2)
       (conn object_2 object_6)
       (conn object_2 object_3)
       (conn object_2 object_1)
       (conn object_3 object_5)
       (conn object_3 object_2)
       (conn object_8 object_6)
       (conn object_8 object_1)
       (conn object_6 object_5)
       (conn object_6 object_2)
       (conn object_6 object_8)
       (conn object_5 object_3)
       (conn object_5 object_6)
       (locked object_3)
       (locked object_8)
       (locked object_6)
       (lock-shape  object_3 object_0)
       (lock-shape  object_8 object_0)
       (lock-shape  object_6 object_0)
       (open object_1)
       (open object_2)
       (open object_5)

       (key-shape  object_7 object_0)
       (key-shape  object_4 object_0)
       (at object_7 object_3)
       (at object_4 object_2)
       (at-robot object_1)
    )

    (:goal (and
       (at object_4 object_8)
    )))
    
