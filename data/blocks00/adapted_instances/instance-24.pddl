(define (problem blocks-6-0)
(:domain blocks)
(:objects object_4 object_3 object_2 object_1 object_5 object_0 )
(:init (clear object_0) (clear object_5) (ontable object_1) (ontable object_2) (on object_0 object_3) (on object_3 object_1) (on object_5 object_4)
 (on object_4 object_2) (handempty))
(:goal (and (on object_1 object_2) (on object_2 object_3) (on object_3 object_4) (on object_4 object_5) (on object_5 object_0)))
)