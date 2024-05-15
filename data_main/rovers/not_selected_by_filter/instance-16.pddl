(define (problem roverprob7) (:domain Rover)
(:objects
	lander_0 - Lander
	mode_0 mode_1 mode_2 - Mode
	rover_0 - Rover
	store_0 - Store
	waypoint_0 waypoint_1 waypoint_2 - Waypoint
	camera_0 camera_1 camera_2 - Camera
	objective_0 objective_1 - Objective
	)
(:init
	(visible waypoint_0 waypoint_1)
	(visible waypoint_1 waypoint_0)
	(visible waypoint_1 waypoint_2)
	(visible waypoint_2 waypoint_1)
	(visible waypoint_2 waypoint_0)
	(visible waypoint_0 waypoint_2)
	(at_soil_sample waypoint_0)
	(at_soil_sample waypoint_1)
	(at_rock_sample waypoint_1)
	(at_soil_sample waypoint_2)
	(at_rock_sample waypoint_2)
	(at_lander lander_0 waypoint_1)
	(channel_free lander_0)
	(at rover_0 waypoint_2)
	(available rover_0)
	(store_of store_0 rover_0)
	(empty store_0)
	(equipped_for_rock_analysis rover_0)
	(equipped_for_imaging rover_0)
	(can_traverse rover_0 waypoint_2 waypoint_0)
	(can_traverse rover_0 waypoint_0 waypoint_2)
	(can_traverse rover_0 waypoint_2 waypoint_1)
	(can_traverse rover_0 waypoint_1 waypoint_2)
	(on_board camera_0 rover_0)
	(calibration_target camera_0 objective_1)
	(supports camera_0 mode_1)
	(on_board camera_1 rover_0)
	(calibration_target camera_1 objective_1)
	(supports camera_1 mode_2)
	(on_board camera_2 rover_0)
	(calibration_target camera_2 objective_0)
	(supports camera_2 mode_1)
	(visible_from objective_0 waypoint_1)
	(visible_from objective_1 waypoint_0)
	(visible_from objective_1 waypoint_1)
)

(:goal (and
(communicated_rock_data waypoint_2)
(communicated_rock_data waypoint_1)
(communicated_image_data objective_1 mode_2)
(communicated_image_data objective_1 mode_1)
	)
)
)
