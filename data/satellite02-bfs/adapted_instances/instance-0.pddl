(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	object_1
	object_11
	object_5
	object_3
	object_8
	object_4
	object_0
	object_2
	object_10
	object_9
	object_6
	object_7
)
(:init
	(satellite object_1)
	(instrument object_11)
	(supports object_11 object_8)
	(calibration_target object_11 object_2)
	(on_board object_11 object_1)
	(power_avail object_1)
	(pointing object_1 object_7)
	(mode object_5)
	(mode object_3)
	(mode object_8)
	(direction object_4)
	(direction object_0)
	(direction object_2)
	(direction object_10)
	(direction object_9)
	(direction object_6)
	(direction object_7)
)
(:goal (and
	(have_image object_9 object_8)
	(have_image object_6 object_8)
	(have_image object_7 object_8)
))

)
