(define (problem depotprob7654) (:domain depot)
(:objects
	object_8 object_3 object_7 object_12 object_9 object_15 object_22 object_16 object_25 object_1 object_24 object_6 object_11 object_13 object_2 object_0 object_23 object_14 object_21 object_20 object_17 object_10 object_4 object_19 object_18 object_5 )
(:init
	(pallet object_25)
	(surface object_25)
	(at object_25 object_8)
	(clear object_0)
	(pallet object_1)
	(surface object_1)
	(at object_1 object_3)
	(clear object_2)
	(pallet object_24)
	(surface object_24)
	(at object_24 object_7)
	(clear object_21)
	(pallet object_6)
	(surface object_6)
	(at object_6 object_12)
	(clear object_20)
	(pallet object_11)
	(surface object_11)
	(at object_11 object_9)
	(clear object_11)
	(pallet object_13)
	(surface object_13)
	(at object_13 object_15)
	(clear object_14)
	(truck object_22)
	(at object_22 object_3)
	(truck object_16)
	(at object_16 object_7)
	(hoist object_17)
	(at object_17 object_8)
	(available object_17)
	(hoist object_10)
	(at object_10 object_3)
	(available object_10)
	(hoist object_4)
	(at object_4 object_7)
	(available object_4)
	(hoist object_19)
	(at object_19 object_12)
	(available object_19)
	(hoist object_18)
	(at object_18 object_9)
	(available object_18)
	(hoist object_5)
	(at object_5 object_15)
	(available object_5)
	(crate object_2)
	(surface object_2)
	(at object_2 object_3)
	(on object_2 object_1)
	(crate object_0)
	(surface object_0)
	(at object_0 object_8)
	(on object_0 object_25)
	(crate object_23)
	(surface object_23)
	(at object_23 object_15)
	(on object_23 object_13)
	(crate object_14)
	(surface object_14)
	(at object_14 object_15)
	(on object_14 object_23)
	(crate object_21)
	(surface object_21)
	(at object_21 object_7)
	(on object_21 object_24)
	(crate object_20)
	(surface object_20)
	(at object_20 object_12)
	(on object_20 object_6)
	(place object_8)
	(place object_3)
	(place object_7)
	(place object_12)
	(place object_9)
	(place object_15)
)

(:goal (and
		(on object_2 object_21)
		(on object_23 object_6)
		(on object_14 object_25)
		(on object_21 object_13)
	)
))
