(define (problem gripper-2-4-5)
(:domain gripper-strips)
(:objects robot_0 robot_1 - robot
gripper_2 gripper_1 gripper_3 gripper_0 - gripper
room_1 room_0 room_3 room_2 - room
object_2 object_1 object_4 object_0 object_3 - object)
(:init
(at-robby robot_0 room_2)
(free robot_0 gripper_2)
(free robot_0 gripper_1)
(at-robby robot_1 room_3)
(free robot_1 gripper_3)
(free robot_1 gripper_0)
(at object_2 room_3)
(at object_1 room_3)
(at object_4 room_2)
(at object_0 room_3)
(at object_3 room_1)
)
(:goal
(and
(at object_2 room_3)
(at object_1 room_0)
(at object_4 room_1)
(at object_0 room_0)
(at object_3 room_3)
)
)
)
