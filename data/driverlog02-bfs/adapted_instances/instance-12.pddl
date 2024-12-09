(define (problem dlog-2-2-3)
	(:domain driverlog)
	(:objects
	object_8
	object_0
	object_1
	object_9
	object_2
	object_4
	object_13
	object_7
	object_10
	object_5
	object_6
	object_3
	object_11
	object_12
	)
	(:init
	(at object_8 object_7)
	(driver object_8)
	(at object_0 object_7)
	(driver object_0)
	(at object_1 object_7)
	(empty object_1)
	(truck object_1)
	(at object_9 object_10)
	(empty object_9)
	(truck object_9)
	(at object_2 object_5)
	(obj object_2)
	(at object_4 object_10)
	(obj object_4)
	(at object_13 object_10)
	(obj object_13)
	(location object_7)
	(location object_10)
	(location object_5)
	(location object_6)
	(location object_3)
	(location object_11)
	(location object_12)
	(path object_7 object_6)
	(path object_6 object_7)
	(path object_10 object_6)
	(path object_6 object_10)
	(path object_7 object_3)
	(path object_3 object_7)
	(path object_5 object_3)
	(path object_3 object_5)
	(path object_5 object_12)
	(path object_12 object_5)
	(path object_10 object_12)
	(path object_12 object_10)
	(link object_7 object_5)
	(link object_5 object_7)
	(link object_10 object_7)
	(link object_7 object_10)
	(link object_10 object_5)
	(link object_5 object_10)
)
	(:goal (and
	(at object_8 object_10)
	(at object_0 object_10)
	(at object_1 object_5)
	(at object_9 object_7)
	(at object_2 object_7)
	(at object_4 object_5)
	(at object_13 object_7)
	))


)
