(define (problem gripper-2-3-4)
(:domain gripper-strips)
(:objects robot_1 robot_0 - robot
gripper_3 gripper_0 gripper_1 gripper_2 - gripper
room_2 room_0 room_1 - room
object_0 object_1 object_2 object_3 - object)
(:init
(at-robby robot_1 room_0)
(free robot_1 gripper_3)
(free robot_1 gripper_0)
(at-robby robot_0 room_2)
(free robot_0 gripper_1)
(free robot_0 gripper_2)
(at object_0 room_2)
(at object_1 room_1)
(at object_2 room_1)
(at object_3 room_2)
)
(:goal
(and
(at object_0 room_2)
(at object_1 room_0)
(at object_2 room_0)
(at object_3 room_1)
)
)
)
