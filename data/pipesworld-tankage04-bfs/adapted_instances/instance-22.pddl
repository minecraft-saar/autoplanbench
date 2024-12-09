
(define (problem p21-net3-b12-g2_rt0_instance)
  (:domain pipesworld_strips)
  (:objects

    	batch-atom_3 batch-atom_1 batch-atom_5 batch-atom_10 batch-atom_6 batch-atom_2 batch-atom_7 batch-atom_8 batch-atom_4 batch-atom_9 batch-atom_11 batch-atom_0 - batch-atom
	area_3 area_1 area_2 area_0 - area
	pipe_1 pipe_2 pipe_0 - pipe
	tank-slot_0 - tank-slot
	tank-slot_2 tank-slot_9 - tank-slot
	tank-slot_20 tank-slot_6 - tank-slot
	tank-slot_15 - tank-slot
	tank-slot_19 - tank-slot
	tank-slot_4 - tank-slot
	tank-slot_18 tank-slot_14 - tank-slot
	tank-slot_21 tank-slot_7 - tank-slot
	tank-slot_26 - tank-slot
	tank-slot_27 - tank-slot
	tank-slot_13 - tank-slot
	tank-slot_25 tank-slot_12 - tank-slot
	tank-slot_17 tank-slot_1 - tank-slot
	tank-slot_24 - tank-slot
	tank-slot_16 - tank-slot
	tank-slot_22 - tank-slot
	tank-slot_11 tank-slot_5 - tank-slot
	tank-slot_8 tank-slot_23 - tank-slot
	tank-slot_3 - tank-slot
	tank-slot_10 - tank-slot
	

  )
  (:init

    ;; all pipelines segments are in normal state
    		(normal pipe_1)
		(normal pipe_2)
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
    	(connect area_3 area_1 pipe_1)
	(connect area_3 area_2 pipe_2)
	(connect area_2 area_0 pipe_0)
	

    ;; specify tank location
    	(tank-slot-product-location tank-slot_0 lco area_3)
	(tank-slot-product-location tank-slot_2 gasoleo area_3)
	(tank-slot-product-location tank-slot_9 gasoleo area_3)
	(tank-slot-product-location tank-slot_20 rat-a area_3)
	(tank-slot-product-location tank-slot_6 rat-a area_3)
	(tank-slot-product-location tank-slot_15 oca1 area_3)
	(tank-slot-product-location tank-slot_19 oc1b area_3)
	(tank-slot-product-location tank-slot_4 lco area_1)
	(tank-slot-product-location tank-slot_18 gasoleo area_1)
	(tank-slot-product-location tank-slot_14 gasoleo area_1)
	(tank-slot-product-location tank-slot_21 rat-a area_1)
	(tank-slot-product-location tank-slot_7 rat-a area_1)
	(tank-slot-product-location tank-slot_26 oca1 area_1)
	(tank-slot-product-location tank-slot_27 oc1b area_1)
	(tank-slot-product-location tank-slot_13 lco area_2)
	(tank-slot-product-location tank-slot_25 gasoleo area_2)
	(tank-slot-product-location tank-slot_12 gasoleo area_2)
	(tank-slot-product-location tank-slot_17 rat-a area_2)
	(tank-slot-product-location tank-slot_1 rat-a area_2)
	(tank-slot-product-location tank-slot_24 oca1 area_2)
	(tank-slot-product-location tank-slot_16 oc1b area_2)
	(tank-slot-product-location tank-slot_22 lco area_0)
	(tank-slot-product-location tank-slot_11 gasoleo area_0)
	(tank-slot-product-location tank-slot_5 gasoleo area_0)
	(tank-slot-product-location tank-slot_8 rat-a area_0)
	(tank-slot-product-location tank-slot_23 rat-a area_0)
	(tank-slot-product-location tank-slot_3 oca1 area_0)
	(tank-slot-product-location tank-slot_10 oc1b area_0)
	

    ;; specify tank maximum capacity
    	

    ;; specify tank product
    	

    ;; batch-atoms products
    	(is-product batch-atom_3 oc1b)
	(is-product batch-atom_1 lco)
	(is-product batch-atom_5 gasoleo)
	(is-product batch-atom_10 rat-a)
	(is-product batch-atom_6 rat-a)
	(is-product batch-atom_2 lco)
	(is-product batch-atom_7 gasoleo)
	(is-product batch-atom_8 gasoleo)
	(is-product batch-atom_4 oca1)
	(is-product batch-atom_9 rat-a)
	(is-product batch-atom_11 gasoleo)
	(is-product batch-atom_0 oc1b)
	

    ;; specify tank current volume
    	

    ;; batch-atoms initially located in areas
    	(on batch-atom_3 area_0)
	(occupied tank-slot_10)
	
	(on batch-atom_5 area_3)
	(occupied tank-slot_9)
	
	(on batch-atom_6 area_3)
	(occupied tank-slot_6)
	
	(on batch-atom_8 area_0)
	(occupied tank-slot_5)
	
	(on batch-atom_4 area_0)
	(occupied tank-slot_3)
	
	(on batch-atom_9 area_1)
	(occupied tank-slot_7)
	
	(on batch-atom_11 area_1)
	(occupied tank-slot_14)
	
	(not-occupied tank-slot_0)
	(not-occupied tank-slot_2)
	(not-occupied tank-slot_20)
	(not-occupied tank-slot_15)
	(not-occupied tank-slot_19)
	(not-occupied tank-slot_4)
	(not-occupied tank-slot_18)
	(not-occupied tank-slot_21)
	(not-occupied tank-slot_26)
	(not-occupied tank-slot_27)
	(not-occupied tank-slot_13)
	(not-occupied tank-slot_12)
	(not-occupied tank-slot_25)
	(not-occupied tank-slot_1)
	(not-occupied tank-slot_17)
	(not-occupied tank-slot_24)
	(not-occupied tank-slot_16)
	(not-occupied tank-slot_22)
	(not-occupied tank-slot_11)
	(not-occupied tank-slot_23)
	(not-occupied tank-slot_8)
	

    ;; batch-atoms initially located in pipes
    	(first batch-atom_0 pipe_1)
	(follow batch-atom_1 batch-atom_0)
	(last batch-atom_1 pipe_1)
	(first batch-atom_2 pipe_2)
	(follow batch-atom_7 batch-atom_2)
	(last batch-atom_7 pipe_2)
	(first batch-atom_10 pipe_0)
	(last batch-atom_10 pipe_0)
	
    ;; unitary pipeline segments
    		(not-unitary pipe_1)
		(not-unitary pipe_2)
		(unitary pipe_0)

  )
  (:goal (and
    	(on batch-atom_6 area_1)
	(on batch-atom_11 area_3)
			(normal pipe_1)
		(normal pipe_2)
		(normal pipe_0)

  ))
)
