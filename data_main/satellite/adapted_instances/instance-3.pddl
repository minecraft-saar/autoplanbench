(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite_0 - satellite
	instrument_0 - instrument
	mode_0 - mode
	Star0 - direction
	Star1 - direction
	Star2 - direction
)
(:init
	(supports instrument_0 mode_0)
	(calibration_target instrument_0 Star0)
	(on_board instrument_0 satellite_0)
	(power_avail satellite_0)
	(pointing satellite_0 Star2)
)
(:goal (and
	(have_image Star1 mode_0)
	(have_image Star2 mode_0)
))

)
