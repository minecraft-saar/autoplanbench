(define (problem depotprob4321) (:domain depot)
(:objects
	object_0 object_18 object_22 object_16 object_10 object_14 object_12 object_15 object_11 object_17 object_7 object_19 object_21 object_9 object_4 object_23 object_5 object_6 object_2 object_3 object_20 object_1 object_13 object_8 )
(:init
	(pallet object_14)
	(surface object_14)
	(at object_14 object_0)
	(clear object_9)
	(pallet object_12)
	(surface object_12)
	(at object_12 object_18)
	(clear object_6)
	(pallet object_15)
	(surface object_15)
	(at object_15 object_22)
	(clear object_20)
	(pallet object_11)
	(surface object_11)
	(at object_11 object_22)
	(clear object_2)
	(pallet object_17)
	(surface object_17)
	(at object_17 object_18)
	(clear object_19)
	(pallet object_7)
	(surface object_7)
	(at object_7 object_18)
	(clear object_3)
	(truck object_16)
	(at object_16 object_18)
	(truck object_10)
	(at object_10 object_18)
	(hoist object_1)
	(at object_1 object_0)
	(available object_1)
	(hoist object_13)
	(at object_13 object_18)
	(available object_13)
	(hoist object_8)
	(at object_8 object_22)
	(available object_8)
	(crate object_19)
	(surface object_19)
	(at object_19 object_18)
	(on object_19 object_17)
	(crate object_21)
	(surface object_21)
	(at object_21 object_18)
	(on object_21 object_12)
	(crate object_9)
	(surface object_9)
	(at object_9 object_0)
	(on object_9 object_14)
	(crate object_4)
	(surface object_4)
	(at object_4 object_18)
	(on object_4 object_7)
	(crate object_23)
	(surface object_23)
	(at object_23 object_22)
	(on object_23 object_11)
	(crate object_5)
	(surface object_5)
	(at object_5 object_18)
	(on object_5 object_21)
	(crate object_6)
	(surface object_6)
	(at object_6 object_18)
	(on object_6 object_5)
	(crate object_2)
	(surface object_2)
	(at object_2 object_22)
	(on object_2 object_23)
	(crate object_3)
	(surface object_3)
	(at object_3 object_18)
	(on object_3 object_4)
	(crate object_20)
	(surface object_20)
	(at object_20 object_22)
	(on object_20 object_15)
	(place object_0)
	(place object_18)
	(place object_22)
)

(:goal (and
		(on object_19 object_11)
		(on object_21 object_19)
		(on object_4 object_3)
		(on object_6 object_15)
		(on object_2 object_12)
		(on object_3 object_17)
		(on object_20 object_14)
	)
))
