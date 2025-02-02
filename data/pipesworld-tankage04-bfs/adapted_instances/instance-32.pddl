
(define (problem p31-net4-b14-g3_rt0_instance)
  (:domain pipesworld_strips)
  (:objects

    	batch-atom_5 batch-atom_4 batch-atom_6 batch-atom_9 batch-atom_0 batch-atom_7 batch-atom_13 batch-atom_1 batch-atom_3 batch-atom_10 batch-atom_8 batch-atom_12 batch-atom_11 batch-atom_2 - batch-atom
	area_3 area_1 area_2 area_0 - area
	pipe_2 pipe_3 pipe_0 pipe_1 - pipe
	tank-slot_6 - tank-slot
	tank-slot_5 - tank-slot
	tank-slot_7 - tank-slot
	tank-slot_3 - tank-slot
	tank-slot_8 - tank-slot
	tank-slot_2 - tank-slot
	tank-slot_4 - tank-slot
	tank-slot_0 - tank-slot
	tank-slot_1 - tank-slot
	tank-slot_9 - tank-slot
	

  )
  (:init

    ;; all pipelines segments are in normal state
    		(normal pipe_2)
		(normal pipe_3)
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
    	(connect area_3 area_1 pipe_2)
	(connect area_3 area_2 pipe_3)
	(connect area_2 area_0 pipe_0)
	(connect area_1 area_2 pipe_1)
	

    ;; specify tank location
    	(tank-slot-product-location tank-slot_6 lco area_3)
	(tank-slot-product-location tank-slot_5 gasoleo area_3)
	(tank-slot-product-location tank-slot_7 oc1b area_3)
	(tank-slot-product-location tank-slot_3 gasoleo area_1)
	(tank-slot-product-location tank-slot_8 oc1b area_1)
	(tank-slot-product-location tank-slot_2 gasoleo area_2)
	(tank-slot-product-location tank-slot_4 oc1b area_2)
	(tank-slot-product-location tank-slot_0 gasoleo area_0)
	(tank-slot-product-location tank-slot_1 oca1 area_0)
	(tank-slot-product-location tank-slot_9 oc1b area_0)
	

    ;; specify tank maximum capacity
    	

    ;; specify tank product
    	

    ;; batch-atoms products
    	(is-product batch-atom_5 oca1)
	(is-product batch-atom_4 oca1)
	(is-product batch-atom_6 gasoleo)
	(is-product batch-atom_9 oc1b)
	(is-product batch-atom_0 gasoleo)
	(is-product batch-atom_7 oc1b)
	(is-product batch-atom_13 gasoleo)
	(is-product batch-atom_1 oc1b)
	(is-product batch-atom_3 gasoleo)
	(is-product batch-atom_10 lco)
	(is-product batch-atom_8 lco)
	(is-product batch-atom_12 rat-a)
	(is-product batch-atom_11 gasoleo)
	(is-product batch-atom_2 rat-a)
	

    ;; specify tank current volume
    	

    ;; batch-atoms initially located in areas
    	(on batch-atom_4 area_0)
	(occupied tank-slot_1)
	
	(on batch-atom_6 area_3)
	(occupied tank-slot_5)
	
	(on batch-atom_9 area_3)
	(occupied tank-slot_7)
	
	(on batch-atom_0 area_2)
	(occupied tank-slot_2)
	
	(on batch-atom_13 area_1)
	(occupied tank-slot_3)
	
	(on batch-atom_8 area_3)
	(occupied tank-slot_6)
	
	(not-occupied tank-slot_8)
	(not-occupied tank-slot_4)
	(not-occupied tank-slot_0)
	(not-occupied tank-slot_9)
	

    ;; batch-atoms initially located in pipes
    	(first batch-atom_2 pipe_2)
	(follow batch-atom_7 batch-atom_2)
	(last batch-atom_7 pipe_2)
	(first batch-atom_5 pipe_3)
	(follow batch-atom_1 batch-atom_5)
	(last batch-atom_1 pipe_3)
	(first batch-atom_3 pipe_0)
	(last batch-atom_3 pipe_0)
	(first batch-atom_12 pipe_1)
	(follow batch-atom_10 batch-atom_12)
	(follow batch-atom_11 batch-atom_10)
	(last batch-atom_11 pipe_1)
	
    ;; unitary pipeline segments
    		(not-unitary pipe_2)
		(not-unitary pipe_3)
		(unitary pipe_0)
		(not-unitary pipe_1)

  )
  (:goal (and
    	(on batch-atom_6 area_1)
	(on batch-atom_9 area_0)
	(on batch-atom_11 area_3)
			(normal pipe_2)
		(normal pipe_3)
		(normal pipe_0)
		(normal pipe_1)

  ))
)
