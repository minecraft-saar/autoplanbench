(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	object_5
	object_17
	object_11
	object_10
	object_2
	object_0
	object_6
	object_12
	object_13
	object_4
	object_9
	object_3
	object_7
	object_15
	object_16
	object_1
	object_8
	object_14
)
(:init
	(satellite object_5)
	(instrument object_17)
	(supports object_17 object_12)
	(supports object_17 object_0)
	(calibration_target object_17 object_4)
	(on_board object_17 object_5)
	(power_avail object_5)
	(pointing object_5 object_16)
	(satellite object_11)
	(instrument object_10)
	(supports object_10 object_0)
	(supports object_10 object_12)
	(supports object_10 object_6)
	(calibration_target object_10 object_9)
	(instrument object_2)
	(supports object_2 object_12)
	(supports object_2 object_6)
	(calibration_target object_2 object_9)
	(on_board object_10 object_11)
	(on_board object_2 object_11)
	(power_avail object_11)
	(pointing object_11 object_4)
	(mode object_0)
	(mode object_6)
	(mode object_12)
	(direction object_13)
	(direction object_4)
	(direction object_9)
	(direction object_3)
	(direction object_7)
	(direction object_15)
	(direction object_16)
	(direction object_1)
	(direction object_8)
	(direction object_14)
)
(:goal (and
	(pointing object_11 object_15)
	(have_image object_3 object_6)
	(have_image object_7 object_6)
	(have_image object_15 object_12)
	(have_image object_16 object_6)
	(have_image object_1 object_0)
	(have_image object_8 object_12)
	(have_image object_14 object_0)
))

)
