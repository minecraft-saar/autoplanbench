(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_0 - satellite
	instrument_1 - instrument
	instrument_0 - instrument
	mode_0 - mode
	direction_2 - direction
	direction_0 - direction
	direction_1 - direction
)
(:init
	(supports instrument_1 mode_0)
	(calibration_target instrument_1 direction_0)
	(supports instrument_0 mode_0)
	(calibration_target instrument_0 direction_0)
	(on_board instrument_1 satellite_0)
	(on_board instrument_0 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 direction_1)
)
(:goal (and
	(have_image direction_1 mode_0)
))

)
