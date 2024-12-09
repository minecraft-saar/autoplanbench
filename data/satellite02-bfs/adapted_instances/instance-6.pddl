(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	object_11
	object_6
	object_19
	object_15
	object_3
	object_14
	object_7
	object_10
	object_0
	object_5
	object_20
	object_21
	object_16
	object_17
	object_1
	object_18
	object_8
	object_4
	object_13
	object_12
	object_9
	object_22
	object_2
)
(:init
	(satellite object_11)
	(instrument object_6)
	(supports object_6 object_20)
	(supports object_6 object_5)
	(calibration_target object_6 object_17)
	(on_board object_6 object_11)
	(power_avail object_11)
	(pointing object_11 object_9)
	(satellite object_19)
	(instrument object_15)
	(supports object_15 object_21)
	(calibration_target object_15 object_1)
	(instrument object_3)
	(supports object_3 object_20)
	(supports object_3 object_21)
	(supports object_3 object_0)
	(calibration_target object_3 object_1)
	(instrument object_14)
	(supports object_14 object_20)
	(supports object_14 object_21)
	(supports object_14 object_5)
	(calibration_target object_14 object_1)
	(on_board object_15 object_19)
	(on_board object_3 object_19)
	(on_board object_14 object_19)
	(power_avail object_19)
	(pointing object_19 object_13)
	(satellite object_7)
	(instrument object_10)
	(supports object_10 object_21)
	(calibration_target object_10 object_18)
	(on_board object_10 object_7)
	(power_avail object_7)
	(pointing object_7 object_13)
	(mode object_0)
	(mode object_5)
	(mode object_20)
	(mode object_21)
	(direction object_16)
	(direction object_17)
	(direction object_1)
	(direction object_18)
	(direction object_8)
	(direction object_4)
	(direction object_13)
	(direction object_12)
	(direction object_9)
	(direction object_22)
	(direction object_2)
)
(:goal (and
	(have_image object_8 object_0)
	(have_image object_4 object_5)
	(have_image object_13 object_0)
	(have_image object_12 object_21)
	(have_image object_9 object_5)
	(have_image object_22 object_20)
	(have_image object_2 object_21)
))

)
