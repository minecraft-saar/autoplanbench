(define (problem depot-3-1-3-4-4-3) (:domain depots)
(:objects
	depot_2 depot_0 depot_1 - depot
	distributor_0 - distributor
	truck_0 truck_2 truck_1 - truck
	pallet_3 pallet_0 pallet_2 pallet_1 - pallet
	crate_0 crate_2 crate_1 - crate
	hoist_0 hoist_2 hoist_3 hoist_1 - hoist)
(:init
	(at pallet_3 depot_2)
	(clear crate_2)
	(at pallet_0 depot_0)
	(clear pallet_0)
	(at pallet_2 depot_1)
	(clear crate_1)
	(at pallet_1 distributor_0)
	(clear pallet_1)
	(at truck_0 depot_2)
	(at truck_2 depot_0)
	(at truck_1 depot_2)
	(at hoist_0 depot_2)
	(available hoist_0)
	(at hoist_2 depot_0)
	(available hoist_2)
	(at hoist_3 depot_1)
	(available hoist_3)
	(at hoist_1 distributor_0)
	(available hoist_1)
	(at crate_0 depot_2)
	(on crate_0 pallet_3)
	(at crate_2 depot_2)
	(on crate_2 crate_0)
	(at crate_1 depot_1)
	(on crate_1 pallet_2)
)

(:goal (and
		(on crate_0 pallet_1)
		(on crate_2 pallet_3)
		(on crate_1 crate_0)
	)
))
