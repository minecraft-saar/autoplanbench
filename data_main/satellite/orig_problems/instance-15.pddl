(define (problem strips-sat-x-1)
(:domain satellite)
(:objects
	satellite0 - satellite
	instrument0 - instrument
	instrument1 - instrument
	image2 - mode
	infrared1 - mode
	image0 - mode
	GroundStation1 - direction
	GroundStation2 - direction
	GroundStation0 - direction
	Planet3 - direction
	Star4 - direction
	Star5 - direction
)
(:init
	(supports instrument0 image0)
	(supports instrument0 infrared1)
	(supports instrument0 image2)
	(calibration_target instrument0 GroundStation0)
	(supports instrument1 infrared1)
	(supports instrument1 image2)
	(supports instrument1 image0)
	(calibration_target instrument1 GroundStation0)
	(on_board instrument0 satellite0)
	(on_board instrument1 satellite0)
	(power_avail satellite0)
	(pointing satellite0 GroundStation1)
)
(:goal (and
	(have_image Planet3 infrared1)
	(have_image Star4 infrared1)
	(have_image Star5 image0)
))

)
