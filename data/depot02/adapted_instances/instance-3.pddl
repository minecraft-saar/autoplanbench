(define (problem depotprob8765) (:domain depot)
(:objects
	object_17 object_12 object_5 object_15 object_11 object_26 object_4 object_9 object_25 object_22 object_23 object_29 object_24 object_21 object_27 object_18 object_10 object_3 object_0 object_1 object_20 object_8 object_19 object_7 object_13 object_16 object_6 object_2 object_28 object_14 )
(:init
	(pallet object_25)
	(surface object_25)
	(at object_25 object_17)
	(clear object_18)
	(pallet object_22)
	(surface object_22)
	(at object_22 object_12)
	(clear object_3)
	(pallet object_23)
	(surface object_23)
	(at object_23 object_5)
	(clear object_7)
	(pallet object_29)
	(surface object_29)
	(at object_29 object_15)
	(clear object_29)
	(pallet object_24)
	(surface object_24)
	(at object_24 object_11)
	(clear object_24)
	(pallet object_21)
	(surface object_21)
	(at object_21 object_26)
	(clear object_19)
	(truck object_4)
	(at object_4 object_5)
	(truck object_9)
	(at object_9 object_15)
	(hoist object_13)
	(at object_13 object_17)
	(available object_13)
	(hoist object_16)
	(at object_16 object_12)
	(available object_16)
	(hoist object_6)
	(at object_6 object_5)
	(available object_6)
	(hoist object_2)
	(at object_2 object_15)
	(available object_2)
	(hoist object_28)
	(at object_28 object_11)
	(available object_28)
	(hoist object_14)
	(at object_14 object_26)
	(available object_14)
	(crate object_27)
	(surface object_27)
	(at object_27 object_12)
	(on object_27 object_22)
	(crate object_18)
	(surface object_18)
	(at object_18 object_17)
	(on object_18 object_25)
	(crate object_10)
	(surface object_10)
	(at object_10 object_5)
	(on object_10 object_23)
	(crate object_3)
	(surface object_3)
	(at object_3 object_12)
	(on object_3 object_27)
	(crate object_0)
	(surface object_0)
	(at object_0 object_5)
	(on object_0 object_10)
	(crate object_1)
	(surface object_1)
	(at object_1 object_5)
	(on object_1 object_0)
	(crate object_20)
	(surface object_20)
	(at object_20 object_26)
	(on object_20 object_21)
	(crate object_8)
	(surface object_8)
	(at object_8 object_26)
	(on object_8 object_20)
	(crate object_19)
	(surface object_19)
	(at object_19 object_26)
	(on object_19 object_8)
	(crate object_7)
	(surface object_7)
	(at object_7 object_5)
	(on object_7 object_1)
	(place object_17)
	(place object_12)
	(place object_5)
	(place object_15)
	(place object_11)
	(place object_26)
)

(:goal (and
		(on object_27 object_8)
		(on object_18 object_24)
		(on object_10 object_21)
		(on object_3 object_7)
		(on object_0 object_25)
		(on object_1 object_23)
		(on object_20 object_1)
		(on object_8 object_18)
		(on object_19 object_29)
		(on object_7 object_10)
	)
))
