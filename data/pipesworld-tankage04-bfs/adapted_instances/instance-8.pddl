
(define (problem p07-net1-b12-g5_rt0_instance)
  (:domain pipesworld_strips)
  (:objects

    	batch-atom_3 batch-atom_4 batch-atom_10 batch-atom_7 batch-atom_11 batch-atom_9 batch-atom_8 batch-atom_1 batch-atom_0 batch-atom_5 batch-atom_2 batch-atom_6 - batch-atom
	area_1 area_0 area_2 - area
	pipe_1 pipe_0 - pipe
	tank-slot_16 tank-slot_2 tank-slot_17 - tank-slot
	tank-slot_13 tank-slot_12 - tank-slot
	tank-slot_18 tank-slot_23 - tank-slot
	tank-slot_15 tank-slot_10 - tank-slot
	tank-slot_4 tank-slot_3 tank-slot_8 - tank-slot
	tank-slot_21 tank-slot_1 - tank-slot
	tank-slot_14 tank-slot_19 - tank-slot
	tank-slot_26 tank-slot_22 - tank-slot
	tank-slot_6 tank-slot_11 tank-slot_9 - tank-slot
	tank-slot_5 tank-slot_24 - tank-slot
	tank-slot_0 tank-slot_7 - tank-slot
	tank-slot_25 tank-slot_20 - tank-slot
	

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
    	(connect area_1 area_0 pipe_1)
	(connect area_1 area_2 pipe_0)
	

    ;; specify tank location
    	(tank-slot-product-location tank-slot_16 lco area_1)
	(tank-slot-product-location tank-slot_2 lco area_1)
	(tank-slot-product-location tank-slot_17 lco area_1)
	(tank-slot-product-location tank-slot_13 gasoleo area_1)
	(tank-slot-product-location tank-slot_12 gasoleo area_1)
	(tank-slot-product-location tank-slot_18 rat-a area_1)
	(tank-slot-product-location tank-slot_23 rat-a area_1)
	(tank-slot-product-location tank-slot_15 oc1b area_1)
	(tank-slot-product-location tank-slot_10 oc1b area_1)
	(tank-slot-product-location tank-slot_4 lco area_0)
	(tank-slot-product-location tank-slot_3 lco area_0)
	(tank-slot-product-location tank-slot_8 lco area_0)
	(tank-slot-product-location tank-slot_21 gasoleo area_0)
	(tank-slot-product-location tank-slot_1 gasoleo area_0)
	(tank-slot-product-location tank-slot_14 rat-a area_0)
	(tank-slot-product-location tank-slot_19 rat-a area_0)
	(tank-slot-product-location tank-slot_26 oc1b area_0)
	(tank-slot-product-location tank-slot_22 oc1b area_0)
	(tank-slot-product-location tank-slot_6 lco area_2)
	(tank-slot-product-location tank-slot_11 lco area_2)
	(tank-slot-product-location tank-slot_9 lco area_2)
	(tank-slot-product-location tank-slot_5 gasoleo area_2)
	(tank-slot-product-location tank-slot_24 gasoleo area_2)
	(tank-slot-product-location tank-slot_0 rat-a area_2)
	(tank-slot-product-location tank-slot_7 rat-a area_2)
	(tank-slot-product-location tank-slot_25 oc1b area_2)
	(tank-slot-product-location tank-slot_20 oc1b area_2)
	

    ;; specify tank maximum capacity
    	

    ;; specify tank product
    	

    ;; batch-atoms products
    	(is-product batch-atom_3 gasoleo)
	(is-product batch-atom_4 lco)
	(is-product batch-atom_10 oc1b)
	(is-product batch-atom_7 lco)
	(is-product batch-atom_11 lco)
	(is-product batch-atom_9 rat-a)
	(is-product batch-atom_8 lco)
	(is-product batch-atom_1 gasoleo)
	(is-product batch-atom_0 oc1b)
	(is-product batch-atom_5 rat-a)
	(is-product batch-atom_2 gasoleo)
	(is-product batch-atom_6 rat-a)
	

    ;; specify tank current volume
    	

    ;; batch-atoms initially located in areas
    	(on batch-atom_3 area_1)
	(occupied tank-slot_12)
	
	(on batch-atom_4 area_1)
	(occupied tank-slot_17)
	
	(on batch-atom_7 area_0)
	(occupied tank-slot_8)
	
	(on batch-atom_11 area_2)
	(occupied tank-slot_9)
	
	(on batch-atom_9 area_2)
	(occupied tank-slot_7)
	
	(on batch-atom_8 area_0)
	(occupied tank-slot_3)
	
	(on batch-atom_1 area_2)
	(occupied tank-slot_24)
	
	(on batch-atom_5 area_0)
	(occupied tank-slot_19)
	
	(on batch-atom_2 area_2)
	(occupied tank-slot_5)
	
	(on batch-atom_6 area_0)
	(occupied tank-slot_14)
	
	(not-occupied tank-slot_2)
	(not-occupied tank-slot_16)
	(not-occupied tank-slot_13)
	(not-occupied tank-slot_23)
	(not-occupied tank-slot_18)
	(not-occupied tank-slot_10)
	(not-occupied tank-slot_15)
	(not-occupied tank-slot_4)
	(not-occupied tank-slot_1)
	(not-occupied tank-slot_21)
	(not-occupied tank-slot_22)
	(not-occupied tank-slot_26)
	(not-occupied tank-slot_11)
	(not-occupied tank-slot_6)
	(not-occupied tank-slot_0)
	(not-occupied tank-slot_20)
	(not-occupied tank-slot_25)
	

    ;; batch-atoms initially located in pipes
    	(first batch-atom_0 pipe_1)
	(last batch-atom_0 pipe_1)
	(first batch-atom_10 pipe_0)
	(last batch-atom_10 pipe_0)
	
    ;; unitary pipeline segments
    		(unitary pipe_1)
		(unitary pipe_0)

  )
  (:goal (and
    	(on batch-atom_10 area_0)
	(on batch-atom_7 area_1)
	(on batch-atom_9 area_1)
	(on batch-atom_8 area_1)
	(on batch-atom_2 area_1)
			(normal pipe_1)
		(normal pipe_0)

  ))
)
