
(define (problem p04-net1-b8-g5_rt0_instance)
  (:domain pipesworld_strips)
  (:objects

    	batch-atom_1 batch-atom_7 batch-atom_4 batch-atom_3 batch-atom_6 batch-atom_0 batch-atom_2 batch-atom_5 - batch-atom
	area_2 area_0 area_1 - area
	pipe_0 pipe_1 - pipe
	tank-slot_18 - tank-slot
	tank-slot_2 tank-slot_8 - tank-slot
	tank-slot_4 tank-slot_3 - tank-slot
	tank-slot_10 tank-slot_19 - tank-slot
	tank-slot_14 - tank-slot
	tank-slot_20 tank-slot_11 - tank-slot
	tank-slot_16 tank-slot_0 - tank-slot
	tank-slot_7 tank-slot_6 - tank-slot
	tank-slot_9 - tank-slot
	tank-slot_1 tank-slot_17 - tank-slot
	tank-slot_12 tank-slot_13 - tank-slot
	tank-slot_15 tank-slot_5 - tank-slot
	

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
	

    ;; specify tank location
    	(tank-slot-product-location tank-slot_18 lco area_2)
	(tank-slot-product-location tank-slot_2 gasoleo area_2)
	(tank-slot-product-location tank-slot_8 gasoleo area_2)
	(tank-slot-product-location tank-slot_4 rat-a area_2)
	(tank-slot-product-location tank-slot_3 rat-a area_2)
	(tank-slot-product-location tank-slot_10 oca1 area_2)
	(tank-slot-product-location tank-slot_19 oca1 area_2)
	(tank-slot-product-location tank-slot_14 lco area_0)
	(tank-slot-product-location tank-slot_20 gasoleo area_0)
	(tank-slot-product-location tank-slot_11 gasoleo area_0)
	(tank-slot-product-location tank-slot_16 rat-a area_0)
	(tank-slot-product-location tank-slot_0 rat-a area_0)
	(tank-slot-product-location tank-slot_7 oca1 area_0)
	(tank-slot-product-location tank-slot_6 oca1 area_0)
	(tank-slot-product-location tank-slot_9 lco area_1)
	(tank-slot-product-location tank-slot_1 gasoleo area_1)
	(tank-slot-product-location tank-slot_17 gasoleo area_1)
	(tank-slot-product-location tank-slot_12 rat-a area_1)
	(tank-slot-product-location tank-slot_13 rat-a area_1)
	(tank-slot-product-location tank-slot_15 oca1 area_1)
	(tank-slot-product-location tank-slot_5 oca1 area_1)
	

    ;; specify tank maximum capacity
    	

    ;; specify tank product
    	

    ;; batch-atoms products
    	(is-product batch-atom_1 rat-a)
	(is-product batch-atom_7 gasoleo)
	(is-product batch-atom_4 gasoleo)
	(is-product batch-atom_3 lco)
	(is-product batch-atom_6 oca1)
	(is-product batch-atom_0 oca1)
	(is-product batch-atom_2 rat-a)
	(is-product batch-atom_5 gasoleo)
	

    ;; specify tank current volume
    	

    ;; batch-atoms initially located in areas
    	(on batch-atom_1 area_2)
	(occupied tank-slot_3)
	
	(on batch-atom_7 area_1)
	(occupied tank-slot_17)
	
	(on batch-atom_4 area_0)
	(occupied tank-slot_11)
	
	(on batch-atom_3 area_1)
	(occupied tank-slot_9)
	
	(on batch-atom_6 area_2)
	(occupied tank-slot_19)
	
	(on batch-atom_0 area_2)
	(occupied tank-slot_10)
	
	(not-occupied tank-slot_18)
	(not-occupied tank-slot_8)
	(not-occupied tank-slot_2)
	(not-occupied tank-slot_4)
	(not-occupied tank-slot_14)
	(not-occupied tank-slot_20)
	(not-occupied tank-slot_0)
	(not-occupied tank-slot_16)
	(not-occupied tank-slot_6)
	(not-occupied tank-slot_7)
	(not-occupied tank-slot_1)
	(not-occupied tank-slot_13)
	(not-occupied tank-slot_12)
	(not-occupied tank-slot_5)
	(not-occupied tank-slot_15)
	

    ;; batch-atoms initially located in pipes
    	(first batch-atom_5 pipe_0)
	(last batch-atom_5 pipe_0)
	(first batch-atom_2 pipe_1)
	(last batch-atom_2 pipe_1)
	
    ;; unitary pipeline segments
    		(unitary pipe_0)
		(unitary pipe_1)

  )
  (:goal (and
    	(on batch-atom_1 area_1)
	(on batch-atom_7 area_2)
	(on batch-atom_3 area_0)
	(on batch-atom_2 area_1)
	(on batch-atom_5 area_0)
			(normal pipe_0)
		(normal pipe_1)

  ))
)