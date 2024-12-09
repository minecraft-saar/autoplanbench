
(define (problem network2new_all_10_2_instance)
  (:domain pipesworld_strips)
  (:objects

    	batch-atom_0 batch-atom_6 batch-atom_8 batch-atom_5 batch-atom_3 batch-atom_7 batch-atom_1 batch-atom_4 batch-atom_9 batch-atom_2 - batch-atom
	area_2 area_0 area_1 - area
	pipe_0 pipe_1 - pipe
	

  )
  (:init

    ;; all pipelines segments are in normal state
    		(normal pipe_0)
		(normal pipe_1)

    ;; interfaces restrictions
    	(may-interface lco lco)
	(may-interface gasoleo gasoleo)
	(may-interface rat-a rat-a)
	(may-interface oca1 oca1)
	(may-interface oc1b oc1b)
	(may-interface lco gasoleo)
	(may-interface gasoleo lco)
	(may-interface lco oca1)
	(may-interface oca1 lco)
	(may-interface lco oc1b)
	(may-interface oc1b lco)
	(may-interface lco rat-a)
	(may-interface rat-a lco)
	(may-interface gasoleo rat-a)
	(may-interface rat-a gasoleo)
	(may-interface gasoleo oca1)
	(may-interface oca1 gasoleo)
	(may-interface gasoleo oc1b)
	(may-interface oc1b gasoleo)
	(may-interface oca1 oc1b)
	(may-interface oc1b oca1)
	

    ;; network topology definition
    	(connect area_2 area_0 pipe_0)
	(connect area_2 area_1 pipe_1)
	

    ;; batch-atoms products
    	(is-product batch-atom_0 gasoleo)
	(is-product batch-atom_6 rat-a)
	(is-product batch-atom_8 gasoleo)
	(is-product batch-atom_5 gasoleo)
	(is-product batch-atom_3 gasoleo)
	(is-product batch-atom_7 lco)
	(is-product batch-atom_1 lco)
	(is-product batch-atom_4 gasoleo)
	(is-product batch-atom_9 rat-a)
	(is-product batch-atom_2 gasoleo)
	

    ;; batch-atoms initially located in areas
    	(on batch-atom_0 area_2)
	(on batch-atom_8 area_0)
	(on batch-atom_1 area_1)
	(on batch-atom_4 area_1)
	(on batch-atom_9 area_1)
	(on batch-atom_2 area_2)
	

    ;; batch-atoms initially located in pipes
    	(first batch-atom_7 pipe_0)
	(follow batch-atom_6 batch-atom_7)
	(last batch-atom_6 pipe_0)
	(first batch-atom_3 pipe_1)
	(follow batch-atom_5 batch-atom_3)
	(last batch-atom_5 pipe_1)
	
    ;; unitary pipeline segments
    		(not-unitary pipe_0)
		(not-unitary pipe_1)

  )
  (:goal (and
    	(on batch-atom_0 area_0)
	(on batch-atom_7 area_1)
	
  ))
)
