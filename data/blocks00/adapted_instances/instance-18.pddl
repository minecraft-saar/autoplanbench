(define (problem blocks-4-0)
(:domain blocks)
(:objects object_1 object_3 object_0 object_2 )
(:init (clear object_2) (clear object_0) (clear object_3) (clear object_1) (ontable object_2) (ontable object_0)
 (ontable object_3) (ontable object_1) (handempty))
(:goal (and (on object_1 object_2) (on object_2 object_3) (on object_3 object_0)))
)