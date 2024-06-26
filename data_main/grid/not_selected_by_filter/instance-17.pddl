(define (problem grid-2-6-3-3-4)
    (:domain grid)
    (:objects
    object_0 object_1 object_2 object_3 object_4 object_5 object_6 object_7 object_8 object_9 object_10 object_11
    object_12 object_13 object_14
    object_15 object_16 object_17
    )

    (:init
       (arm-empty)

       (place object_0)
       (place object_1)
       (place object_2)
       (place object_3)
       (place object_4)
       (place object_5)
       (place object_6)
       (place object_7)
       (place object_8)
       (place object_9)
       (place object_10)
       (place object_11)
       (shape object_12)
       (shape object_13)
       (shape object_14)
       (key object_15)
       (key object_16)
       (key object_17)

       (conn object_0 object_6)
       (conn object_0 object_1)
       (conn object_1 object_7)
       (conn object_1 object_2)
       (conn object_1 object_0)
       (conn object_2 object_8)
       (conn object_2 object_3)
       (conn object_2 object_1)
       (conn object_3 object_9)
       (conn object_3 object_4)
       (conn object_3 object_2)
       (conn object_4 object_10)
       (conn object_4 object_5)
       (conn object_4 object_3)
       (conn object_5 object_11)
       (conn object_5 object_4)
       (conn object_6 object_7)
       (conn object_6 object_0)
       (conn object_7 object_8)
       (conn object_7 object_1)
       (conn object_7 object_6)
       (conn object_8 object_9)
       (conn object_8 object_2)
       (conn object_8 object_7)
       (conn object_9 object_10)
       (conn object_9 object_3)
       (conn object_9 object_8)
       (conn object_10 object_11)
       (conn object_10 object_4)
       (conn object_10 object_9)
       (conn object_11 object_5)
       (conn object_11 object_10)
       (locked object_8)
       (locked object_5)
       (locked object_2)
       (locked object_11)
       (lock-shape  object_8 object_12)
       (lock-shape  object_5 object_13)
       (lock-shape  object_2 object_14)
       (lock-shape  object_11 object_14)
       (open object_0)
       (open object_1)
       (open object_3)
       (open object_4)
       (open object_6)
       (open object_7)
       (open object_9)
       (open object_10)

       (key-shape  object_15 object_12)
       (key-shape  object_16 object_13)
       (key-shape  object_17 object_14)
       (at object_15 object_4)
       (at object_16 object_10)
       (at object_17 object_7)
       (at-robot object_6)
    )

    (:goal (and
       (at object_15 object_9)
       (at object_16 object_3)
       (at object_17 object_6)
    )))
    
