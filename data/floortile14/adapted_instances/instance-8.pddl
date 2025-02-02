(define (problem p02-442)
 (:domain floor-tile)
 (:objects tile_0 tile_12 tile_8 tile_5 
           tile_17 tile_19 tile_18 tile_14 
           tile_4 tile_1 tile_11 tile_6 
           tile_9 tile_7 tile_2 tile_13 
           tile_16 tile_10 tile_3 tile_15 - tile
           robot_0 robot_1 - robot
           color_0 color_1 - color
)
 (:init 
   (robot-at robot_0 tile_12)
   (robot-has robot_0 color_0)
   (robot-at robot_1 tile_17)
   (robot-has robot_1 color_1)
   (available-color color_0)
   (available-color color_1)
   (clear tile_0)
   (clear tile_8)
   (clear tile_5)
   (clear tile_19)
   (clear tile_18)
   (clear tile_14)
   (clear tile_4)
   (clear tile_1)
   (clear tile_11)
   (clear tile_6)
   (clear tile_9)
   (clear tile_7)
   (clear tile_2)
   (clear tile_13)
   (clear tile_16)
   (clear tile_10)
   (clear tile_3)
   (clear tile_15)
   (up tile_17 tile_0)
   (up tile_19 tile_12)
   (up tile_18 tile_8)
   (up tile_14 tile_5)
   (up tile_4 tile_17)
   (up tile_1 tile_19)
   (up tile_11 tile_18)
   (up tile_6 tile_14)
   (up tile_9 tile_4)
   (up tile_7 tile_1)
   (up tile_2 tile_11)
   (up tile_13 tile_6)
   (up tile_16 tile_9)
   (up tile_10 tile_7)
   (up tile_3 tile_2)
   (up tile_15 tile_13)
   (down tile_0 tile_17)
   (down tile_12 tile_19)
   (down tile_8 tile_18)
   (down tile_5 tile_14)
   (down tile_17 tile_4)
   (down tile_19 tile_1)
   (down tile_18 tile_11)
   (down tile_14 tile_6)
   (down tile_4 tile_9)
   (down tile_1 tile_7)
   (down tile_11 tile_2)
   (down tile_6 tile_13)
   (down tile_9 tile_16)
   (down tile_7 tile_10)
   (down tile_2 tile_3)
   (down tile_13 tile_15)
   (right tile_12 tile_0)
   (right tile_8 tile_12)
   (right tile_5 tile_8)
   (right tile_19 tile_17)
   (right tile_18 tile_19)
   (right tile_14 tile_18)
   (right tile_1 tile_4)
   (right tile_11 tile_1)
   (right tile_6 tile_11)
   (right tile_7 tile_9)
   (right tile_2 tile_7)
   (right tile_13 tile_2)
   (right tile_10 tile_16)
   (right tile_3 tile_10)
   (right tile_15 tile_3)
   (left tile_0 tile_12)
   (left tile_12 tile_8)
   (left tile_8 tile_5)
   (left tile_17 tile_19)
   (left tile_19 tile_18)
   (left tile_18 tile_14)
   (left tile_4 tile_1)
   (left tile_1 tile_11)
   (left tile_11 tile_6)
   (left tile_9 tile_7)
   (left tile_7 tile_2)
   (left tile_2 tile_13)
   (left tile_16 tile_10)
   (left tile_10 tile_3)
   (left tile_3 tile_15)
)
 (:goal (and
    (painted tile_17 color_0)
    (painted tile_19 color_1)
    (painted tile_18 color_0)
    (painted tile_14 color_1)
    (painted tile_4 color_1)
    (painted tile_1 color_0)
    (painted tile_11 color_1)
    (painted tile_6 color_0)
    (painted tile_9 color_0)
    (painted tile_7 color_1)
    (painted tile_2 color_0)
    (painted tile_13 color_1)
    (painted tile_16 color_1)
    (painted tile_10 color_0)
    (painted tile_3 color_1)
    (painted tile_15 color_0)
))
 
)
