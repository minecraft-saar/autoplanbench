(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_1 - satellite
	instrument_4 - instrument
	instrument_1 - instrument
	instrument_2 - instrument
	instrument_3 - instrument
	satellite_0 - satellite
	instrument_0 - instrument
	mode_2 - mode
	mode_1 - mode
	mode_0 - mode
	direction_1 - direction
	direction_0 - direction
	direction_2 - direction
)
(:init
	(supports instrument_4 mode_0)
	(supports instrument_4 mode_2)
	(supports instrument_4 mode_1)
	(calibration_target instrument_4 direction_1)
	(supports instrument_1 mode_2)
	(supports instrument_1 mode_1)
	(supports instrument_1 mode_0)
	(calibration_target instrument_1 direction_1)
	(supports instrument_2 mode_2)
	(calibration_target instrument_2 direction_1)
	(supports instrument_3 mode_2)
	(supports instrument_3 mode_0)
	(supports instrument_3 mode_1)
	(calibration_target instrument_3 direction_1)
	(on_board instrument_4 satellite_1)
	(on_board instrument_1 satellite_1)
	(on_board instrument_2 satellite_1)
	(on_board instrument_3 satellite_1)
	(power_avail satellite_1)
	(pointing satellite_1 direction_2)
	(supports instrument_0 mode_1)
	(calibration_target instrument_0 direction_1)
	(on_board instrument_0 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 direction_1)
)
(:goal (and
	(have_image direction_0 mode_0)
	(have_image direction_2 mode_1)
))

)
