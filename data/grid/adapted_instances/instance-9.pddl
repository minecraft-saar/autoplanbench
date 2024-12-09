(define (problem grid-3-3-2-2-2)
    (:domain grid)
    (:objects
    object_10 object_12 object_9 object_11 object_3 object_6 object_8 object_2 object_0
    object_7 object_5
    object_4 object_1
    )

    (:init
       (arm-empty)

       (place object_10)
       (place object_12)
       (place object_9)
       (place object_11)
       (place object_3)
       (place object_6)
       (place object_8)
       (place object_2)
       (place object_0)
       (shape object_7)
       (shape object_5)
       (key object_4)
       (key object_1)

       (conn object_10 object_11)
       (conn object_10 object_12)
       (conn object_12 object_3)
       (conn object_12 object_9)
       (conn object_12 object_10)
       (conn object_9 object_6)
       (conn object_9 object_12)
       (conn object_11 object_8)
       (conn object_11 object_3)
       (conn object_11 object_10)
       (conn object_3 object_2)
       (conn object_3 object_6)
       (conn object_3 object_12)
       (conn object_3 object_11)
       (conn object_6 object_0)
       (conn object_6 object_9)
       (conn object_6 object_3)
       (conn object_8 object_2)
       (conn object_8 object_11)
       (conn object_2 object_0)
       (conn object_2 object_3)
       (conn object_2 object_8)
       (conn object_0 object_6)
       (conn object_0 object_2)
       (locked object_8)
       (locked object_6)
       (lock-shape  object_8 object_7)
       (lock-shape  object_6 object_5)
       (open object_10)
       (open object_12)
       (open object_9)
       (open object_11)
       (open object_3)
       (open object_2)
       (open object_0)

       (key-shape  object_4 object_7)
       (key-shape  object_1 object_5)
       (at object_4 object_0)
       (at object_1 object_2)
       (at-robot object_12)
    )

    (:goal (and
       (at object_4 object_11)
    )))
    
