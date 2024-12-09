(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_0 - satellite
	instrument_0 - instrument
	instrument_1 - instrument
	mode_1 - mode
	mode_0 - mode
	mode_2 - mode
	direction_3 - direction
	direction_4 - direction
	direction_1 - direction
	direction_0 - direction
	direction_2 - direction
	direction_5 - direction
)
(:init
	(supports instrument_0 mode_2)
	(supports instrument_0 mode_0)
	(supports instrument_0 mode_1)
	(calibration_target instrument_0 direction_1)
	(supports instrument_1 mode_0)
	(supports instrument_1 mode_1)
	(supports instrument_1 mode_2)
	(calibration_target instrument_1 direction_1)
	(on_board instrument_0 satellite_0)
	(on_board instrument_1 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 direction_3)
)
(:goal (and
	(have_image direction_0 mode_0)
	(have_image direction_2 mode_0)
	(have_image direction_5 mode_2)
))

)
