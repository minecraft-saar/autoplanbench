(define (problem grid-3-3-3-3-3)
    (:domain grid)
    (:objects
    object_10 object_5 object_0 object_4 object_9 object_8 object_1 object_2 object_11
    object_12 object_7 object_14
    object_6 object_13 object_3
    )

    (:init
       (arm-empty)

       (place object_10)
       (place object_5)
       (place object_0)
       (place object_4)
       (place object_9)
       (place object_8)
       (place object_1)
       (place object_2)
       (place object_11)
       (shape object_12)
       (shape object_7)
       (shape object_14)
       (key object_6)
       (key object_13)
       (key object_3)

       (conn object_10 object_4)
       (conn object_10 object_5)
       (conn object_5 object_9)
       (conn object_5 object_0)
       (conn object_5 object_10)
       (conn object_0 object_8)
       (conn object_0 object_5)
       (conn object_4 object_1)
       (conn object_4 object_9)
       (conn object_4 object_10)
       (conn object_9 object_2)
       (conn object_9 object_8)
       (conn object_9 object_5)
       (conn object_9 object_4)
       (conn object_8 object_11)
       (conn object_8 object_0)
       (conn object_8 object_9)
       (conn object_1 object_2)
       (conn object_1 object_4)
       (conn object_2 object_11)
       (conn object_2 object_9)
       (conn object_2 object_1)
       (conn object_11 object_8)
       (conn object_11 object_2)
       (locked object_5)
       (locked object_8)
       (locked object_4)
       (lock-shape  object_5 object_12)
       (lock-shape  object_8 object_7)
       (lock-shape  object_4 object_14)
       (open object_10)
       (open object_0)
       (open object_9)
       (open object_1)
       (open object_2)
       (open object_11)

       (key-shape  object_6 object_12)
       (key-shape  object_13 object_7)
       (key-shape  object_3 object_14)
       (at object_6 object_10)
       (at object_13 object_0)
       (at object_3 object_2)
       (at-robot object_10)
    )

    (:goal (and
       (at object_6 object_2)
       (at object_13 object_4)
       (at object_3 object_1)
    )))
    
