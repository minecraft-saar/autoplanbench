(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_0 - satellite
	instrument_0 - instrument
	instrument_1 - instrument
	mode_0 - mode
	Star0 - direction
	Phenomenon1 - direction
	Planet2 - direction
)
(:init
	(supports instrument_0 mode_0)
	(calibration_target instrument_0 Star0)
	(supports instrument_1 mode_0)
	(calibration_target instrument_1 Star0)
	(on_board instrument_0 satellite_0)
	(on_board instrument_1 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 Star0)
)
(:goal (and
	(have_image Phenomenon1 mode_0)
	(have_image Planet2 mode_0)
))

)
