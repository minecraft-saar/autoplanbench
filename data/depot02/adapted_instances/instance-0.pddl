(define (problem depotprob1818) (:domain depot)
(:objects
	object_4 object_7 object_8 object_11 object_9 object_6 object_0 object_2 object_12 object_1 object_3 object_5 object_10 )
(:init
	(pallet object_6)
	(surface object_6)
	(at object_6 object_4)
	(clear object_1)
	(pallet object_0)
	(surface object_0)
	(at object_0 object_7)
	(clear object_12)
	(pallet object_2)
	(surface object_2)
	(at object_2 object_8)
	(clear object_2)
	(truck object_11)
	(at object_11 object_8)
	(truck object_9)
	(at object_9 object_4)
	(hoist object_3)
	(at object_3 object_4)
	(available object_3)
	(hoist object_5)
	(at object_5 object_7)
	(available object_5)
	(hoist object_10)
	(at object_10 object_8)
	(available object_10)
	(crate object_12)
	(surface object_12)
	(at object_12 object_7)
	(on object_12 object_0)
	(crate object_1)
	(surface object_1)
	(at object_1 object_4)
	(on object_1 object_6)
	(place object_4)
	(place object_7)
	(place object_8)
)

(:goal (and
		(on object_12 object_2)
		(on object_1 object_0)
	)
))
