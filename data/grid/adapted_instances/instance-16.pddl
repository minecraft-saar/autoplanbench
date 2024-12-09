(define (problem grid-2-6-3-3-4)
    (:domain grid)
    (:objects
    object_13 object_7 object_1 object_8 object_5 object_3 object_16 object_6 object_11 object_15 object_10 object_2
    object_12 object_0 object_17
    object_4 object_9 object_14
    )

    (:init
       (arm-empty)

       (place object_13)
       (place object_7)
       (place object_1)
       (place object_8)
       (place object_5)
       (place object_3)
       (place object_16)
       (place object_6)
       (place object_11)
       (place object_15)
       (place object_10)
       (place object_2)
       (shape object_12)
       (shape object_0)
       (shape object_17)
       (key object_4)
       (key object_9)
       (key object_14)

       (conn object_13 object_16)
       (conn object_13 object_7)
       (conn object_7 object_6)
       (conn object_7 object_1)
       (conn object_7 object_13)
       (conn object_1 object_11)
       (conn object_1 object_8)
       (conn object_1 object_7)
       (conn object_8 object_15)
       (conn object_8 object_5)
       (conn object_8 object_1)
       (conn object_5 object_10)
       (conn object_5 object_3)
       (conn object_5 object_8)
       (conn object_3 object_2)
       (conn object_3 object_5)
       (conn object_16 object_6)
       (conn object_16 object_13)
       (conn object_6 object_11)
       (conn object_6 object_7)
       (conn object_6 object_16)
       (conn object_11 object_15)
       (conn object_11 object_1)
       (conn object_11 object_6)
       (conn object_15 object_10)
       (conn object_15 object_8)
       (conn object_15 object_11)
       (conn object_10 object_2)
       (conn object_10 object_5)
       (conn object_10 object_15)
       (conn object_2 object_3)
       (conn object_2 object_10)
       (locked object_7)
       (locked object_5)
       (locked object_16)
       (locked object_8)
       (lock-shape  object_7 object_12)
       (lock-shape  object_5 object_0)
       (lock-shape  object_16 object_17)
       (lock-shape  object_8 object_0)
       (open object_13)
       (open object_1)
       (open object_3)
       (open object_6)
       (open object_11)
       (open object_15)
       (open object_10)
       (open object_2)

       (key-shape  object_4 object_12)
       (key-shape  object_9 object_0)
       (key-shape  object_14 object_17)
       (at object_4 object_1)
       (at object_9 object_1)
       (at object_14 object_8)
       (at-robot object_2)
    )

    (:goal (and
       (at object_9 object_11)
    )))
    
