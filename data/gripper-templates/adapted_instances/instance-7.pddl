(define (problem gripper-1-4-3)
(:domain gripper-strips)
(:objects robot_0 - robot
gripper_1 gripper_0 - gripper
room_0 room_2 room_3 room_1 - room
object_0 object_2 object_1 - object)
(:init
(at-robby robot_0 room_3)
(free robot_0 gripper_1)
(free robot_0 gripper_0)
(at object_0 room_2)
(at object_2 room_1)
(at object_1 room_2)
)
(:goal
(and
(at object_0 room_2)
(at object_2 room_3)
(at object_1 room_2)
)
)
)
