(define (problem blocks-8-0)
(:domain blocks)
(:objects object_4 object_5 object_6 object_1 object_3 object_7 object_2 object_0 )
(:init (clear object_0) (clear object_2) (clear object_7) (clear object_3) (ontable object_1) (ontable object_6)
 (ontable object_7) (ontable object_3) (on object_0 object_5) (on object_5 object_1) (on object_2 object_4) (on object_4 object_6) (handempty))
(:goal (and (on object_2 object_6) (on object_6 object_1) (on object_1 object_4) (on object_4 object_3) (on object_3 object_0) (on object_0 object_5) (on object_5 object_7)))
)