(define (problem gripper-3-5-5)
(:domain gripper-strips)
(:objects robot_1 robot_2 robot_0 - robot
gripper_2 gripper_4 gripper_3 gripper_0 gripper_1 gripper_5 - gripper
room_1 room_2 room_4 room_3 room_0 - room
object_2 object_3 object_4 object_0 object_1 - object)
(:init
(at-robby robot_1 room_3)
(free robot_1 gripper_2)
(free robot_1 gripper_4)
(at-robby robot_2 room_0)
(free robot_2 gripper_3)
(free robot_2 gripper_0)
(at-robby robot_0 room_2)
(free robot_0 gripper_1)
(free robot_0 gripper_5)
(at object_2 room_4)
(at object_3 room_2)
(at object_4 room_1)
(at object_0 room_3)
(at object_1 room_4)
)
(:goal
(and
(at object_2 room_4)
(at object_3 room_4)
(at object_4 room_0)
(at object_0 room_4)
(at object_1 room_0)
)
)
)
