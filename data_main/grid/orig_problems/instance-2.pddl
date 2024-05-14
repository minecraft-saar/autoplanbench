(define (problem grid-2-2-1-1-1)
    (:domain grid)
    (:objects
    pos0-0 pos0-1 pos1-0 pos1-1
    shape0
    key0
    )

    (:init
       (arm-empty)

       (place pos0-0)
       (place pos0-1)
       (place pos1-0)
       (place pos1-1)
       (shape shape0)
       (key key0)

       (conn pos0-0 pos1-0)
       (conn pos0-0 pos0-1)
       (conn pos0-1 pos1-1)
       (conn pos0-1 pos0-0)
       (conn pos1-0 pos1-1)
       (conn pos1-0 pos0-0)
       (conn pos1-1 pos0-1)
       (conn pos1-1 pos1-0)
       (locked pos1-0)
       (lock-shape  pos1-0 shape0)
       (open pos0-0)
       (open pos0-1)
       (open pos1-1)

       (key-shape  key0 shape0)
       (at key0 pos0-1)
       (at-robot pos1-1)
    )

    (:goal (and
       (at key0 pos1-0)
    )))
    
