
(define (problem network1new_all_8_5_instance)
  (:domain pipesworld_strips)
  (:objects

    	batch-atom_0 batch-atom_7 batch-atom_5 batch-atom_2 batch-atom_3 batch-atom_6 batch-atom_1 batch-atom_4 - batch-atom
	area_1 area_2 area_0 - area
	pipe_1 pipe_0 - pipe
	

  )
  (:init

    ;; all pipelines segments are in normal state
    		(normal pipe_1)
		(normal pipe_0)

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
    	(connect area_1 area_2 pipe_1)
	(connect area_1 area_0 pipe_0)
	

    ;; batch-atoms products
    	(is-product batch-atom_0 rat-a)
	(is-product batch-atom_7 gasoleo)
	(is-product batch-atom_5 gasoleo)
	(is-product batch-atom_2 lco)
	(is-product batch-atom_3 oca1)
	(is-product batch-atom_6 oca1)
	(is-product batch-atom_1 rat-a)
	(is-product batch-atom_4 gasoleo)
	

    ;; batch-atoms initially located in areas
    	(on batch-atom_0 area_1)
	(on batch-atom_7 area_0)
	(on batch-atom_5 area_2)
	(on batch-atom_2 area_0)
	(on batch-atom_3 area_1)
	(on batch-atom_6 area_1)
	

    ;; batch-atoms initially located in pipes
    	(first batch-atom_4 pipe_1)
	(last batch-atom_4 pipe_1)
	(first batch-atom_1 pipe_0)
	(last batch-atom_1 pipe_0)
	
    ;; unitary pipeline segments
    		(unitary pipe_1)
		(unitary pipe_0)

  )
  (:goal (and
    	(on batch-atom_0 area_0)
	(on batch-atom_7 area_1)
	(on batch-atom_2 area_2)
	(on batch-atom_1 area_0)
	(on batch-atom_4 area_2)
	
  ))
)