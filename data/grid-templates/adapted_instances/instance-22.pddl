(define (problem grid-2-3-1-2-3)
    (:domain grid)
    (:objects
    object_2 object_3 object_0 object_7 object_6 object_1
    object_5
    object_4 object_8
    )

    (:init
       (arm-empty)

       (place object_2)
       (place object_3)
       (place object_0)
       (place object_7)
       (place object_6)
       (place object_1)
       (shape object_5)
       (key object_4)
       (key object_8)

       (conn object_2 object_7)
       (conn object_2 object_3)
       (conn object_3 object_6)
       (conn object_3 object_0)
       (conn object_3 object_2)
       (conn object_0 object_1)
       (conn object_0 object_3)
       (conn object_7 object_6)
       (conn object_7 object_2)
       (conn object_6 object_1)
       (conn object_6 object_3)
       (conn object_6 object_7)
       (conn object_1 object_0)
       (conn object_1 object_6)
       (locked object_3)
       (locked object_2)
       (locked object_7)
       (lock-shape  object_3 object_5)
       (lock-shape  object_2 object_5)
       (lock-shape  object_7 object_5)
       (open object_0)
       (open object_6)
       (open object_1)

       (key-shape  object_4 object_5)
       (key-shape  object_8 object_5)
       (at object_4 object_7)
       (at object_8 object_0)
       (at-robot object_1)
    )

    (:goal (and
       (at object_4 object_2)
    )))
    
