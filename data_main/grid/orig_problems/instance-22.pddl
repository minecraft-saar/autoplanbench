(define (problem grid-2-3-1-2-3)
    (:domain grid)
    (:objects
    pos0-0 pos0-1 pos0-2 pos1-0 pos1-1 pos1-2
    shape0
    key0 key1
    )

    (:init
       (arm-empty)

       (place pos0-0)
       (place pos0-1)
       (place pos0-2)
       (place pos1-0)
       (place pos1-1)
       (place pos1-2)
       (shape shape0)
       (key key0)
       (key key1)

       (conn pos0-0 pos1-0)
       (conn pos0-0 pos0-1)
       (conn pos0-1 pos1-1)
       (conn pos0-1 pos0-2)
       (conn pos0-1 pos0-0)
       (conn pos0-2 pos1-2)
       (conn pos0-2 pos0-1)
       (conn pos1-0 pos1-1)
       (conn pos1-0 pos0-0)
       (conn pos1-1 pos1-2)
       (conn pos1-1 pos0-1)
       (conn pos1-1 pos1-0)
       (conn pos1-2 pos0-2)
       (conn pos1-2 pos1-1)
       (locked pos0-1)
       (locked pos0-0)
       (locked pos1-0)
       (lock-shape  pos0-1 shape0)
       (lock-shape  pos0-0 shape0)
       (lock-shape  pos1-0 shape0)
       (open pos0-2)
       (open pos1-1)
       (open pos1-2)

       (key-shape  key0 shape0)
       (key-shape  key1 shape0)
       (at key0 pos1-0)
       (at key1 pos0-2)
       (at-robot pos1-2)
    )

    (:goal (and
       (at key0 pos0-0)
    )))
    
