(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_0 - satellite
	instrument_1 - instrument
	instrument_0 - instrument
	instrument_2 - instrument
	mode_0 - mode
	mode_1 - mode
	mode_2 - mode
	direction_4 - direction
	direction_0 - direction
	direction_2 - direction
	direction_5 - direction
	direction_6 - direction
	direction_1 - direction
	direction_3 - direction
)
(:init
	(supports instrument_1 mode_1)
	(supports instrument_1 mode_0)
	(calibration_target instrument_1 direction_4)
	(supports instrument_0 mode_0)
	(supports instrument_0 mode_2)
	(calibration_target instrument_0 direction_0)
	(supports instrument_2 mode_1)
	(supports instrument_2 mode_2)
	(calibration_target instrument_2 direction_2)
	(on_board instrument_1 satellite_0)
	(on_board instrument_0 satellite_0)
	(on_board instrument_2 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 direction_4)
)
(:goal (and
	(have_image direction_5 mode_0)
	(have_image direction_6 mode_2)
	(have_image direction_1 mode_1)
	(have_image direction_3 mode_2)
))

)
