(define (problem blocks-16-2)
(:domain blocks)
(:objects object_8 object_4 object_12 object_14 object_11 object_1 object_7 object_3 object_9 object_5 object_10 object_15 object_6 object_13 object_2 object_0 )
(:init (clear object_0) (clear object_2) (ontable object_13) (ontable object_6) (on object_0 object_15) (on object_15 object_10) (on object_10 object_5)
 (on object_5 object_9) (on object_9 object_3) (on object_3 object_7) (on object_7 object_1) (on object_1 object_11) (on object_11 object_14) (on object_14 object_12) (on object_12 object_4)
 (on object_4 object_8) (on object_8 object_13) (on object_2 object_6) (handempty))
(:goal (and (on object_4 object_7) (on object_7 object_10) (on object_10 object_15) (on object_15 object_5) (on object_5 object_8) (on object_8 object_13) (on object_13 object_12)
            (on object_12 object_0) (on object_0 object_9) (on object_9 object_2) (on object_2 object_3) (on object_3 object_14) (on object_14 object_1) (on object_1 object_11)
            (on object_11 object_6)))
)