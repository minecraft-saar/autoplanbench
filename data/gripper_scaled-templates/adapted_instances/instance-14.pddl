(define (problem gripper-1-2-14)
(:domain gripper-strips)
(:objects robot_0 - robot
gripper_0 gripper_1 - gripper
room_0 room_1 - room
object_13 object_7 object_2 object_0 object_3 object_6 object_1 object_9 object_11 object_5 object_10 object_4 object_8 object_12 - object)
(:init
(at-robby robot_0 room_0)
(free robot_0 gripper_0)
(free robot_0 gripper_1)
(at object_13 room_0)
(at object_7 room_0)
(at object_2 room_0)
(at object_0 room_0)
(at object_3 room_0)
(at object_6 room_0)
(at object_1 room_0)
(at object_9 room_0)
(at object_11 room_0)
(at object_5 room_0)
(at object_10 room_0)
(at object_4 room_0)
(at object_8 room_0)
(at object_12 room_0)
)
(:goal
(and
(at object_13 room_1)
(at object_7 room_1)
(at object_2 room_1)
(at object_0 room_1)
(at object_3 room_1)
(at object_6 room_1)
(at object_1 room_1)
(at object_9 room_1)
(at object_11 room_1)
(at object_5 room_1)
(at object_10 room_1)
(at object_4 room_1)
(at object_8 room_1)
(at object_12 room_1)
)
)
)
