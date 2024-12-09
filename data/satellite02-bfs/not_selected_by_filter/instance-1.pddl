(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	object_4
	object_11
	object_8
	object_9
	object_7
	object_3
	object_10
	object_5
	object_2
	object_0
	object_1
	object_6
)
(:init
	(satellite object_4)
	(instrument object_11)
	(supports object_11 object_7)
	(calibration_target object_11 object_5)
	(on_board object_11 object_4)
	(power_avail object_4)
	(pointing object_4 object_6)
	(mode object_8)
	(mode object_9)
	(mode object_7)
	(direction object_3)
	(direction object_10)
	(direction object_5)
	(direction object_2)
	(direction object_0)
	(direction object_1)
	(direction object_6)
)
(:goal (and
	(have_image object_0 object_7)
	(have_image object_1 object_7)
	(have_image object_6 object_7)
))

)
