
(define (problem network5new_all_22_2_instance)
  (:domain pipesworld_strips)
  (:objects

    	batch-atom_11 batch-atom_20 batch-atom_0 batch-atom_5 batch-atom_2 batch-atom_13 batch-atom_21 batch-atom_17 batch-atom_16 batch-atom_9 batch-atom_15 batch-atom_6 batch-atom_8 batch-atom_18 batch-atom_14 batch-atom_7 batch-atom_4 batch-atom_3 batch-atom_19 batch-atom_12 batch-atom_1 batch-atom_10 - batch-atom
	area_3 area_0 area_1 area_4 area_2 - area
	pipe_1 pipe_3 pipe_0 pipe_4 pipe_2 - pipe
	

  )
  (:init

    ;; all pipelines segments are in normal state
    		(normal pipe_1)
		(normal pipe_3)
		(normal pipe_0)
		(normal pipe_4)
		(normal pipe_2)

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
    	(connect area_3 area_0 pipe_1)
	(connect area_3 area_1 pipe_3)
	(connect area_1 area_4 pipe_0)
	(connect area_0 area_1 pipe_4)
	(connect area_3 area_2 pipe_2)
	

    ;; batch-atoms products
    	(is-product batch-atom_11 gasoleo)
	(is-product batch-atom_20 rat-a)
	(is-product batch-atom_0 oca1)
	(is-product batch-atom_5 lco)
	(is-product batch-atom_2 oc1b)
	(is-product batch-atom_13 gasoleo)
	(is-product batch-atom_21 gasoleo)
	(is-product batch-atom_17 lco)
	(is-product batch-atom_16 oca1)
	(is-product batch-atom_9 gasoleo)
	(is-product batch-atom_15 rat-a)
	(is-product batch-atom_6 lco)
	(is-product batch-atom_8 gasoleo)
	(is-product batch-atom_18 oca1)
	(is-product batch-atom_14 rat-a)
	(is-product batch-atom_7 gasoleo)
	(is-product batch-atom_4 oca1)
	(is-product batch-atom_3 oca1)
	(is-product batch-atom_19 oc1b)
	(is-product batch-atom_12 gasoleo)
	(is-product batch-atom_1 oc1b)
	(is-product batch-atom_10 oca1)
	

    ;; batch-atoms initially located in areas
    	(on batch-atom_11 area_3)
	(on batch-atom_0 area_4)
	(on batch-atom_2 area_2)
	(on batch-atom_21 area_4)
	(on batch-atom_17 area_2)
	(on batch-atom_16 area_1)
	(on batch-atom_6 area_4)
	(on batch-atom_18 area_1)
	(on batch-atom_14 area_4)
	(on batch-atom_4 area_1)
	

    ;; batch-atoms initially located in pipes
    	(first batch-atom_20 pipe_1)
	(follow batch-atom_8 batch-atom_20)
	(last batch-atom_8 pipe_1)
	(first batch-atom_9 pipe_3)
	(follow batch-atom_15 batch-atom_9)
	(last batch-atom_15 pipe_3)
	(first batch-atom_7 pipe_0)
	(last batch-atom_7 pipe_0)
	(first batch-atom_13 pipe_4)
	(follow batch-atom_19 batch-atom_13)
	(follow batch-atom_10 batch-atom_19)
	(last batch-atom_10 pipe_4)
	(first batch-atom_5 pipe_2)
	(follow batch-atom_12 batch-atom_5)
	(follow batch-atom_3 batch-atom_12)
	(follow batch-atom_1 batch-atom_3)
	(last batch-atom_1 pipe_2)
	
    ;; unitary pipeline segments
    		(not-unitary pipe_1)
		(not-unitary pipe_3)
		(unitary pipe_0)
		(not-unitary pipe_4)
		(not-unitary pipe_2)

  )
  (:goal (and
    	(on batch-atom_11 area_1)
	(on batch-atom_12 area_3)
	
  ))
)
