(define (problem grid-2-6-3-3-4)
    (:domain grid)
    (:objects
    object_15 object_13 object_10 object_9 object_7 object_2 object_4 object_1 object_0 object_14 object_8 object_6
    object_17 object_11 object_5
    object_12 object_16 object_3
    )

    (:init
       (arm-empty)

       (place object_15)
       (place object_13)
       (place object_10)
       (place object_9)
       (place object_7)
       (place object_2)
       (place object_4)
       (place object_1)
       (place object_0)
       (place object_14)
       (place object_8)
       (place object_6)
       (shape object_17)
       (shape object_11)
       (shape object_5)
       (key object_12)
       (key object_16)
       (key object_3)

       (conn object_15 object_4)
       (conn object_15 object_13)
       (conn object_13 object_1)
       (conn object_13 object_10)
       (conn object_13 object_15)
       (conn object_10 object_0)
       (conn object_10 object_9)
       (conn object_10 object_13)
       (conn object_9 object_14)
       (conn object_9 object_7)
       (conn object_9 object_10)
       (conn object_7 object_8)
       (conn object_7 object_2)
       (conn object_7 object_9)
       (conn object_2 object_6)
       (conn object_2 object_7)
       (conn object_4 object_1)
       (conn object_4 object_15)
       (conn object_1 object_0)
       (conn object_1 object_13)
       (conn object_1 object_4)
       (conn object_0 object_14)
       (conn object_0 object_10)
       (conn object_0 object_1)
       (conn object_14 object_8)
       (conn object_14 object_9)
       (conn object_14 object_0)
       (conn object_8 object_6)
       (conn object_8 object_7)
       (conn object_8 object_14)
       (conn object_6 object_2)
       (conn object_6 object_8)
       (locked object_2)
       (locked object_6)
       (locked object_4)
       (locked object_9)
       (lock-shape  object_2 object_17)
       (lock-shape  object_6 object_11)
       (lock-shape  object_4 object_5)
       (lock-shape  object_9 object_11)
       (open object_15)
       (open object_13)
       (open object_10)
       (open object_7)
       (open object_1)
       (open object_0)
       (open object_14)
       (open object_8)

       (key-shape  object_12 object_17)
       (key-shape  object_16 object_11)
       (key-shape  object_3 object_5)
       (at object_12 object_1)
       (at object_16 object_14)
       (at object_3 object_10)
       (at-robot object_13)
    )

    (:goal (and
       (at object_12 object_14)
    )))
    
