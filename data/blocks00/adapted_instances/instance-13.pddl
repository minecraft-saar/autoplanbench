(define (problem blocks-15-0)
(:domain blocks)
(:objects object_1 object_6 object_0 object_3 object_9 object_5 object_13 object_14 object_11 object_2 object_12 object_10 object_7 object_4 object_8 )
(:init (clear object_8) (clear object_4) (clear object_7) (clear object_10) (clear object_12) (ontable object_2)
 (ontable object_11) (ontable object_14) (ontable object_13) (ontable object_5) (on object_8 object_9) (on object_9 object_3) (on object_3 object_0)
 (on object_0 object_6) (on object_6 object_2) (on object_4 object_11) (on object_7 object_1) (on object_1 object_14) (on object_10 object_13) (on object_12 object_5) (handempty))
(:goal (and (on object_2 object_14) (on object_14 object_5) (on object_5 object_13) (on object_13 object_4) (on object_4 object_10) (on object_10 object_8) (on object_8 object_1)
            (on object_1 object_7) (on object_7 object_0) (on object_0 object_9) (on object_9 object_3) (on object_3 object_11) (on object_11 object_12) (on object_12 object_6)))
)