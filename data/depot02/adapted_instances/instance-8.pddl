(define (problem depotprob4398) (:domain depot)
(:objects
	object_4 object_12 object_21 object_13 object_6 object_15 object_2 object_8 object_16 object_17 object_25 object_23 object_26 object_1 object_9 object_28 object_14 object_3 object_5 object_20 object_11 object_27 object_7 object_19 object_22 object_24 object_18 object_10 object_0 object_29 )
(:init
	(pallet object_16)
	(surface object_16)
	(at object_16 object_4)
	(clear object_27)
	(pallet object_17)
	(surface object_17)
	(at object_17 object_12)
	(clear object_20)
	(pallet object_25)
	(surface object_25)
	(at object_25 object_21)
	(clear object_11)
	(pallet object_23)
	(surface object_23)
	(at object_23 object_13)
	(clear object_23)
	(pallet object_26)
	(surface object_26)
	(at object_26 object_12)
	(clear object_14)
	(pallet object_1)
	(surface object_1)
	(at object_1 object_13)
	(clear object_1)
	(pallet object_9)
	(surface object_9)
	(at object_9 object_12)
	(clear object_9)
	(pallet object_28)
	(surface object_28)
	(at object_28 object_21)
	(clear object_28)
	(truck object_6)
	(at object_6 object_12)
	(truck object_15)
	(at object_15 object_12)
	(truck object_2)
	(at object_2 object_4)
	(truck object_8)
	(at object_8 object_13)
	(hoist object_7)
	(at object_7 object_4)
	(available object_7)
	(hoist object_19)
	(at object_19 object_12)
	(available object_19)
	(hoist object_22)
	(at object_22 object_21)
	(available object_22)
	(hoist object_24)
	(at object_24 object_13)
	(available object_24)
	(hoist object_18)
	(at object_18 object_13)
	(available object_18)
	(hoist object_10)
	(at object_10 object_12)
	(available object_10)
	(hoist object_0)
	(at object_0 object_12)
	(available object_0)
	(hoist object_29)
	(at object_29 object_13)
	(available object_29)
	(crate object_14)
	(surface object_14)
	(at object_14 object_12)
	(on object_14 object_26)
	(crate object_3)
	(surface object_3)
	(at object_3 object_12)
	(on object_3 object_17)
	(crate object_5)
	(surface object_5)
	(at object_5 object_4)
	(on object_5 object_16)
	(crate object_20)
	(surface object_20)
	(at object_20 object_12)
	(on object_20 object_3)
	(crate object_11)
	(surface object_11)
	(at object_11 object_21)
	(on object_11 object_25)
	(crate object_27)
	(surface object_27)
	(at object_27 object_4)
	(on object_27 object_5)
	(place object_4)
	(place object_12)
	(place object_21)
	(place object_13)
)

(:goal (and
		(on object_14 object_23)
		(on object_5 object_17)
		(on object_20 object_16)
		(on object_11 object_20)
		(on object_27 object_25)
	)
))