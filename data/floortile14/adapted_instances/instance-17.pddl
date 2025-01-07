(define (problem p03-542)
 (:domain floor-tile)
 (:objects tile_13 tile_15 tile_12 tile_7 
           tile_18 tile_5 tile_2 tile_8 
           tile_23 tile_0 tile_3 tile_14 
           tile_21 tile_10 tile_20 tile_19 
           tile_9 tile_1 tile_22 tile_11 
           tile_17 tile_4 tile_16 tile_6 - tile
           robot_0 robot_1 - robot
           color_0 color_1 - color
)
 (:init 
   (robot-at robot_0 tile_20)
   (robot-has robot_0 color_0)
   (robot-at robot_1 tile_21)
   (robot-has robot_1 color_1)
   (available-color color_0)
   (available-color color_1)
   (clear tile_13)
   (clear tile_15)
   (clear tile_12)
   (clear tile_7)
   (clear tile_18)
   (clear tile_5)
   (clear tile_2)
   (clear tile_8)
   (clear tile_23)
   (clear tile_0)
   (clear tile_3)
   (clear tile_14)
   (clear tile_10)
   (clear tile_19)
   (clear tile_9)
   (clear tile_1)
   (clear tile_22)
   (clear tile_11)
   (clear tile_17)
   (clear tile_4)
   (clear tile_16)
   (clear tile_6)
   (up tile_18 tile_13)
   (up tile_5 tile_15)
   (up tile_2 tile_12)
   (up tile_8 tile_7)
   (up tile_23 tile_18)
   (up tile_0 tile_5)
   (up tile_3 tile_2)
   (up tile_14 tile_8)
   (up tile_21 tile_23)
   (up tile_10 tile_0)
   (up tile_20 tile_3)
   (up tile_19 tile_14)
   (up tile_9 tile_21)
   (up tile_1 tile_10)
   (up tile_22 tile_20)
   (up tile_11 tile_19)
   (up tile_17 tile_9)
   (up tile_4 tile_1)
   (up tile_16 tile_22)
   (up tile_6 tile_11)
   (down tile_13 tile_18)
   (down tile_15 tile_5)
   (down tile_12 tile_2)
   (down tile_7 tile_8)
   (down tile_18 tile_23)
   (down tile_5 tile_0)
   (down tile_2 tile_3)
   (down tile_8 tile_14)
   (down tile_23 tile_21)
   (down tile_0 tile_10)
   (down tile_3 tile_20)
   (down tile_14 tile_19)
   (down tile_21 tile_9)
   (down tile_10 tile_1)
   (down tile_20 tile_22)
   (down tile_19 tile_11)
   (down tile_9 tile_17)
   (down tile_1 tile_4)
   (down tile_22 tile_16)
   (down tile_11 tile_6)
   (right tile_15 tile_13)
   (right tile_12 tile_15)
   (right tile_7 tile_12)
   (right tile_5 tile_18)
   (right tile_2 tile_5)
   (right tile_8 tile_2)
   (right tile_0 tile_23)
   (right tile_3 tile_0)
   (right tile_14 tile_3)
   (right tile_10 tile_21)
   (right tile_20 tile_10)
   (right tile_19 tile_20)
   (right tile_1 tile_9)
   (right tile_22 tile_1)
   (right tile_11 tile_22)
   (right tile_4 tile_17)
   (right tile_16 tile_4)
   (right tile_6 tile_16)
   (left tile_13 tile_15)
   (left tile_15 tile_12)
   (left tile_12 tile_7)
   (left tile_18 tile_5)
   (left tile_5 tile_2)
   (left tile_2 tile_8)
   (left tile_23 tile_0)
   (left tile_0 tile_3)
   (left tile_3 tile_14)
   (left tile_21 tile_10)
   (left tile_10 tile_20)
   (left tile_20 tile_19)
   (left tile_9 tile_1)
   (left tile_1 tile_22)
   (left tile_22 tile_11)
   (left tile_17 tile_4)
   (left tile_4 tile_16)
   (left tile_16 tile_6)
)
 (:goal (and
    (painted tile_18 color_0)
    (painted tile_5 color_1)
    (painted tile_2 color_0)
    (painted tile_8 color_1)
    (painted tile_23 color_1)
    (painted tile_0 color_0)
    (painted tile_3 color_1)
    (painted tile_14 color_0)
    (painted tile_21 color_0)
    (painted tile_10 color_1)
    (painted tile_20 color_0)
    (painted tile_19 color_1)
    (painted tile_9 color_1)
    (painted tile_1 color_0)
    (painted tile_22 color_1)
    (painted tile_11 color_0)
    (painted tile_17 color_0)
    (painted tile_4 color_1)
    (painted tile_16 color_0)
    (painted tile_6 color_1)
))
 
)