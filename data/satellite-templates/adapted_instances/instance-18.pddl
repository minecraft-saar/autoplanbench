(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_0 - satellite
	instrument_0 - instrument
	instrument_1 - instrument
	mode_1 - mode
	mode_2 - mode
	mode_0 - mode
	direction_6 - direction
	direction_2 - direction
	direction_5 - direction
	direction_4 - direction
	direction_3 - direction
	direction_1 - direction
	direction_0 - direction
)
(:init
	(supports instrument_0 mode_2)
	(supports instrument_0 mode_1)
	(supports instrument_0 mode_0)
	(calibration_target instrument_0 direction_5)
	(supports instrument_1 mode_1)
	(supports instrument_1 mode_2)
	(supports instrument_1 mode_0)
	(calibration_target instrument_1 direction_5)
	(on_board instrument_0 satellite_0)
	(on_board instrument_1 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 direction_5)
)
(:goal (and
	(have_image direction_4 mode_0)
	(have_image direction_3 mode_2)
	(have_image direction_1 mode_1)
	(have_image direction_0 mode_2)
))

)