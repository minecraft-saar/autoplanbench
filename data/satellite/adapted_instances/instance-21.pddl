(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_0 - satellite
	instrument_0 - instrument
	mode_2 - mode
	mode_1 - mode
	mode_0 - mode
	direction_3 - direction
	direction_0 - direction
	direction_6 - direction
	direction_1 - direction
	direction_5 - direction
	direction_4 - direction
	direction_2 - direction
)
(:init
	(supports instrument_0 mode_2)
	(supports instrument_0 mode_1)
	(supports instrument_0 mode_0)
	(calibration_target instrument_0 direction_6)
	(on_board instrument_0 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 direction_6)
)
(:goal (and
	(have_image direction_1 mode_1)
	(have_image direction_5 mode_2)
	(have_image direction_4 mode_2)
	(have_image direction_2 mode_1)
))

)
