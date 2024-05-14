(define (problem grid-3-2-2-2-2)
    (:domain grid)
    (:objects
    pos0-0 pos0-1 pos1-0 pos1-1 pos2-0 pos2-1
    shape0 shape1
    key0 key1
    )

    (:init
       (arm-empty)

       (place pos0-0)
       (place pos0-1)
       (place pos1-0)
       (place pos1-1)
       (place pos2-0)
       (place pos2-1)
       (shape shape0)
       (shape shape1)
       (key key0)
       (key key1)

       (conn pos0-0 pos1-0)
       (conn pos0-0 pos0-1)
       (conn pos0-1 pos1-1)
       (conn pos0-1 pos0-0)
       (conn pos1-0 pos2-0)
       (conn pos1-0 pos1-1)
       (conn pos1-0 pos0-0)
       (conn pos1-1 pos2-1)
       (conn pos1-1 pos0-1)
       (conn pos1-1 pos1-0)
       (conn pos2-0 pos2-1)
       (conn pos2-0 pos1-0)
       (conn pos2-1 pos1-1)
       (conn pos2-1 pos2-0)
       (locked pos0-1)
       (locked pos0-0)
       (lock-shape  pos0-1 shape0)
       (lock-shape  pos0-0 shape1)
       (open pos1-0)
       (open pos1-1)
       (open pos2-0)
       (open pos2-1)

       (key-shape  key0 shape0)
       (key-shape  key1 shape1)
       (at key0 pos1-0)
       (at key1 pos1-1)
       (at-robot pos1-0)
    )

    (:goal (and
       (at key0 pos1-1)
       (at key1 pos1-0)
    )))
    
