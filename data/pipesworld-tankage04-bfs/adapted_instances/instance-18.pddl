
(define (problem p17-net2-b16-g5_rt0_instance)
  (:domain pipesworld_strips)
  (:objects

    	batch-atom_10 batch-atom_8 batch-atom_15 batch-atom_11 batch-atom_14 batch-atom_3 batch-atom_6 batch-atom_12 batch-atom_7 batch-atom_5 batch-atom_9 batch-atom_4 batch-atom_0 batch-atom_1 batch-atom_2 batch-atom_13 - batch-atom
	area_0 area_1 area_2 - area
	pipe_1 pipe_0 - pipe
	tank-slot_1 - tank-slot
	tank-slot_14 - tank-slot
	tank-slot_2 - tank-slot
	tank-slot_7 - tank-slot
	tank-slot_4 - tank-slot
	tank-slot_3 - tank-slot
	tank-slot_0 tank-slot_13 - tank-slot
	tank-slot_10 tank-slot_11 - tank-slot
	tank-slot_12 - tank-slot
	tank-slot_9 tank-slot_15 - tank-slot
	tank-slot_6 - tank-slot
	tank-slot_8 - tank-slot
	tank-slot_5 - tank-slot
	

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
    	(connect area_0 area_1 pipe_1)
	(connect area_0 area_2 pipe_0)
	

    ;; specify tank location
    	(tank-slot-product-location tank-slot_1 lco area_0)
	(tank-slot-product-location tank-slot_14 rat-a area_0)
	(tank-slot-product-location tank-slot_2 oca1 area_0)
	(tank-slot-product-location tank-slot_7 oc1b area_0)
	(tank-slot-product-location tank-slot_4 lco area_1)
	(tank-slot-product-location tank-slot_3 gasoleo area_1)
	(tank-slot-product-location tank-slot_0 rat-a area_1)
	(tank-slot-product-location tank-slot_13 rat-a area_1)
	(tank-slot-product-location tank-slot_10 oca1 area_1)
	(tank-slot-product-location tank-slot_11 oca1 area_1)
	(tank-slot-product-location tank-slot_12 oc1b area_1)
	(tank-slot-product-location tank-slot_9 lco area_2)
	(tank-slot-product-location tank-slot_15 lco area_2)
	(tank-slot-product-location tank-slot_6 rat-a area_2)
	(tank-slot-product-location tank-slot_8 oca1 area_2)
	(tank-slot-product-location tank-slot_5 oc1b area_2)
	

    ;; specify tank maximum capacity
    	

    ;; specify tank product
    	

    ;; batch-atoms products
    	(is-product batch-atom_10 oca1)
	(is-product batch-atom_8 oca1)
	(is-product batch-atom_15 rat-a)
	(is-product batch-atom_11 lco)
	(is-product batch-atom_14 gasoleo)
	(is-product batch-atom_3 gasoleo)
	(is-product batch-atom_6 oc1b)
	(is-product batch-atom_12 lco)
	(is-product batch-atom_7 lco)
	(is-product batch-atom_5 oc1b)
	(is-product batch-atom_9 oc1b)
	(is-product batch-atom_4 rat-a)
	(is-product batch-atom_0 oca1)
	(is-product batch-atom_1 oca1)
	(is-product batch-atom_2 rat-a)
	(is-product batch-atom_13 oca1)
	

    ;; specify tank current volume
    	

    ;; batch-atoms initially located in areas
    	(on batch-atom_8 area_1)
	(occupied tank-slot_11)
	
	(on batch-atom_15 area_1)
	(occupied tank-slot_13)
	
	(on batch-atom_11 area_0)
	(occupied tank-slot_1)
	
	(on batch-atom_3 area_1)
	(occupied tank-slot_3)
	
	(on batch-atom_6 area_1)
	(occupied tank-slot_12)
	
	(on batch-atom_12 area_2)
	(occupied tank-slot_15)
	
	(on batch-atom_7 area_2)
	(occupied tank-slot_9)
	
	(on batch-atom_5 area_2)
	(occupied tank-slot_5)
	
	(on batch-atom_9 area_0)
	(occupied tank-slot_7)
	
	(on batch-atom_0 area_1)
	(occupied tank-slot_10)
	
	(on batch-atom_1 area_2)
	(occupied tank-slot_8)
	
	(on batch-atom_2 area_1)
	(occupied tank-slot_0)
	
	(not-occupied tank-slot_14)
	(not-occupied tank-slot_2)
	(not-occupied tank-slot_4)
	(not-occupied tank-slot_6)
	

    ;; batch-atoms initially located in pipes
    	(first batch-atom_4 pipe_1)
	(follow batch-atom_14 batch-atom_4)
	(last batch-atom_14 pipe_1)
	(first batch-atom_10 pipe_0)
	(follow batch-atom_13 batch-atom_10)
	(last batch-atom_13 pipe_0)
	
    ;; unitary pipeline segments
    		(not-unitary pipe_1)
		(not-unitary pipe_0)

  )
  (:goal (and
    	(on batch-atom_10 area_2)
	(on batch-atom_8 area_0)
	(on batch-atom_14 area_0)
	(on batch-atom_9 area_1)
	(on batch-atom_4 area_0)
			(normal pipe_1)
		(normal pipe_0)

  ))
)
