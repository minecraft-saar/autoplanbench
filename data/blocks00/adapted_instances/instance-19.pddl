(define (problem blocks-4-1)
(:domain blocks)
(:objects object_3 object_2 object_0 object_1 )
(:init (clear object_1) (ontable object_0) (on object_1 object_2) (on object_2 object_3) (on object_3 object_0) (handempty))
(:goal (and (on object_0 object_2) (on object_2 object_3) (on object_3 object_1)))
)