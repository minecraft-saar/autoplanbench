(define (problem grid-2-6-3-3-4)
    (:domain grid)
    (:objects
    object_13 object_7 object_2 object_14 object_12 object_6 object_1 object_10 object_9 object_3 object_11 object_0
    object_17 object_16 object_5
    object_4 object_8 object_15
    )

    (:init
       (arm-empty)

       (place object_13)
       (place object_7)
       (place object_2)
       (place object_14)
       (place object_12)
       (place object_6)
       (place object_1)
       (place object_10)
       (place object_9)
       (place object_3)
       (place object_11)
       (place object_0)
       (shape object_17)
       (shape object_16)
       (shape object_5)
       (key object_4)
       (key object_8)
       (key object_15)

       (conn object_13 object_1)
       (conn object_13 object_7)
       (conn object_7 object_10)
       (conn object_7 object_2)
       (conn object_7 object_13)
       (conn object_2 object_9)
       (conn object_2 object_14)
       (conn object_2 object_7)
       (conn object_14 object_3)
       (conn object_14 object_12)
       (conn object_14 object_2)
       (conn object_12 object_11)
       (conn object_12 object_6)
       (conn object_12 object_14)
       (conn object_6 object_0)
       (conn object_6 object_12)
       (conn object_1 object_10)
       (conn object_1 object_13)
       (conn object_10 object_9)
       (conn object_10 object_7)
       (conn object_10 object_1)
       (conn object_9 object_3)
       (conn object_9 object_2)
       (conn object_9 object_10)
       (conn object_3 object_11)
       (conn object_3 object_14)
       (conn object_3 object_9)
       (conn object_11 object_0)
       (conn object_11 object_12)
       (conn object_11 object_3)
       (conn object_0 object_6)
       (conn object_0 object_11)
       (locked object_6)
       (locked object_0)
       (locked object_1)
       (locked object_14)
       (lock-shape  object_6 object_17)
       (lock-shape  object_0 object_16)
       (lock-shape  object_1 object_5)
       (lock-shape  object_14 object_16)
       (open object_13)
       (open object_7)
       (open object_2)
       (open object_12)
       (open object_10)
       (open object_9)
       (open object_3)
       (open object_11)

       (key-shape  object_4 object_17)
       (key-shape  object_8 object_16)
       (key-shape  object_15 object_5)
       (at object_4 object_10)
       (at object_8 object_3)
       (at object_15 object_2)
       (at-robot object_7)
    )

    (:goal (and
       (at object_4 object_3)
    )))
    
