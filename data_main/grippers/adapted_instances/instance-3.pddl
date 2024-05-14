(define (problem gripper-1-3-3)
(:domain gripper-strips)
(:objects robot_0 - robot
gripper_0 gripper_1 - gripper
room_0 room_1 room_2 - room
object_0 object_1 object_2 - object)
(:init
(at-robby robot_0 room_0)
(free robot_0 gripper_0)
(free robot_0 gripper_1)
(at object_0 room_0)
(at object_1 room_2)
(at object_2 room_1)
)
(:goal
(and
(at object_0 room_0)
(at object_1 room_1)
(at object_2 room_0)
)
)
)
