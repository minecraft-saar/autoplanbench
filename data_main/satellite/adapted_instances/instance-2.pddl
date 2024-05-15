(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_0 - satellite
	instrument_0 - instrument
	instrument_1 - instrument
	mode_0 - mode
	Star0 - direction
	Star1 - direction
	Planet2 - direction
)
(:init
	(supports instrument_0 mode_0)
	(calibration_target instrument_0 Star1)
	(supports instrument_1 mode_0)
	(calibration_target instrument_1 Star1)
	(on_board instrument_0 satellite_0)
	(on_board instrument_1 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 Star1)
)
(:goal (and
	(have_image Planet2 mode_0)
))

)
