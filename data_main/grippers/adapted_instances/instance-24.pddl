(define (problem gripper-3-5-5)
(:domain gripper-strips)
(:objects robot_0 robot_1 robot_2 - robot
gripper_0 gripper_1 gripper_2 gripper_3 gripper_4 gripper_5 - gripper
room_0 room_1 room_2 room_3 room_4 - room
object_0 object_1 object_2 object_3 object_4 - object)
(:init
(at-robby robot_0 room_3)
(free robot_0 gripper_0)
(free robot_0 gripper_1)
(at-robby robot_1 room_4)
(free robot_1 gripper_2)
(free robot_1 gripper_3)
(at-robby robot_2 room_1)
(free robot_2 gripper_4)
(free robot_2 gripper_5)
(at object_0 room_2)
(at object_1 room_1)
(at object_2 room_0)
(at object_3 room_3)
(at object_4 room_2)
)
(:goal
(and
(at object_0 room_2)
(at object_1 room_2)
(at object_2 room_4)
(at object_3 room_2)
(at object_4 room_4)
)
)
)
