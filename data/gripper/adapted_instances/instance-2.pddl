(define (problem gripper-1-2-5)
(:domain gripper-strips)
(:objects robot_0 - robot
gripper_1 gripper_0 - gripper
room_0 room_1 - room
object_2 object_3 object_4 object_1 object_0 - object)
(:init
(at-robby robot_0 room_0)
(free robot_0 gripper_1)
(free robot_0 gripper_0)
(at object_2 room_1)
(at object_3 room_1)
(at object_4 room_1)
(at object_1 room_1)
(at object_0 room_1)
)
(:goal
(and
(at object_2 room_1)
(at object_3 room_1)
(at object_4 room_1)
(at object_1 room_0)
(at object_0 room_0)
)
)
)
