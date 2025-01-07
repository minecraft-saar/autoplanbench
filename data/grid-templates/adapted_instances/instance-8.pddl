(define (problem grid-3-3-2-2-2)
    (:domain grid)
    (:objects
    object_12 object_3 object_6 object_0 object_4 object_1 object_11 object_5 object_2
    object_8 object_7
    object_10 object_9
    )

    (:init
       (arm-empty)

       (place object_12)
       (place object_3)
       (place object_6)
       (place object_0)
       (place object_4)
       (place object_1)
       (place object_11)
       (place object_5)
       (place object_2)
       (shape object_8)
       (shape object_7)
       (key object_10)
       (key object_9)

       (conn object_12 object_0)
       (conn object_12 object_3)
       (conn object_3 object_4)
       (conn object_3 object_6)
       (conn object_3 object_12)
       (conn object_6 object_1)
       (conn object_6 object_3)
       (conn object_0 object_11)
       (conn object_0 object_4)
       (conn object_0 object_12)
       (conn object_4 object_5)
       (conn object_4 object_1)
       (conn object_4 object_3)
       (conn object_4 object_0)
       (conn object_1 object_2)
       (conn object_1 object_6)
       (conn object_1 object_4)
       (conn object_11 object_5)
       (conn object_11 object_0)
       (conn object_5 object_2)
       (conn object_5 object_4)
       (conn object_5 object_11)
       (conn object_2 object_1)
       (conn object_2 object_5)
       (locked object_6)
       (locked object_11)
       (lock-shape  object_6 object_8)
       (lock-shape  object_11 object_7)
       (open object_12)
       (open object_3)
       (open object_0)
       (open object_4)
       (open object_1)
       (open object_5)
       (open object_2)

       (key-shape  object_10 object_8)
       (key-shape  object_9 object_7)
       (at object_10 object_4)
       (at object_9 object_1)
       (at-robot object_5)
    )

    (:goal (and
       (at object_9 object_12)
    )))
    