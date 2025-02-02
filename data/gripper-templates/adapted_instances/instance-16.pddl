(define (problem gripper-2-3-4)
(:domain gripper-strips)
(:objects robot_0 robot_1 - robot
gripper_1 gripper_2 gripper_0 gripper_3 - gripper
room_0 room_1 room_2 - room
object_0 object_1 object_3 object_2 - object)
(:init
(at-robby robot_0 room_1)
(free robot_0 gripper_1)
(free robot_0 gripper_2)
(at-robby robot_1 room_1)
(free robot_1 gripper_0)
(free robot_1 gripper_3)
(at object_0 room_0)
(at object_1 room_1)
(at object_3 room_0)
(at object_2 room_1)
)
(:goal
(and
(at object_0 room_1)
(at object_1 room_1)
(at object_3 room_1)
(at object_2 room_0)
)
)
)
