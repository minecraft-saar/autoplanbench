(define (problem strips-gripper-x-5)
   (:domain gripper-strips)
   (:objects object_9 object_7 object_13 object_0 object_6 object_10 object_2 object_11 object_1
             object_4 object_3 object_15 object_12 object_8 object_5 object_14)
   (:init (room object_9)
          (room object_7)
          (ball object_13)
          (ball object_0)
          (ball object_6)
          (ball object_10)
          (ball object_2)
          (ball object_11)
          (ball object_1)
          (ball object_4)
          (ball object_3)
          (ball object_15)
          (ball object_12)
          (ball object_8)
          (at-robby object_9)
          (free object_5)
          (free object_14)
          (at object_13 object_9)
          (at object_0 object_9)
          (at object_6 object_9)
          (at object_10 object_9)
          (at object_2 object_9)
          (at object_11 object_9)
          (at object_1 object_9)
          (at object_4 object_9)
          (at object_3 object_9)
          (at object_15 object_9)
          (at object_12 object_9)
          (at object_8 object_9)
          (gripper object_5)
          (gripper object_14))
   (:goal (and (at object_13 object_7)
               (at object_0 object_7)
               (at object_6 object_7)
               (at object_10 object_7)
               (at object_2 object_7)
               (at object_11 object_7)
               (at object_1 object_7)
               (at object_4 object_7)
               (at object_3 object_7)
               (at object_15 object_7)
               (at object_12 object_7)
               (at object_8 object_7))))