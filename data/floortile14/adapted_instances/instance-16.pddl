(define (problem p03-532)
 (:domain floor-tile)
 (:objects tile_14 tile_9 tile_5 
           tile_13 tile_12 tile_8 
           tile_4 tile_3 tile_17 
           tile_10 tile_16 tile_7 
           tile_6 tile_2 tile_11 
           tile_15 tile_0 tile_1 - tile
           robot_1 robot_0 - robot
           color_1 color_0 - color
)
 (:init 
   (robot-at robot_1 tile_10)
   (robot-has robot_1 color_1)
   (robot-at robot_0 tile_3)
   (robot-has robot_0 color_0)
   (available-color color_1)
   (available-color color_0)
   (clear tile_14)
   (clear tile_9)
   (clear tile_5)
   (clear tile_13)
   (clear tile_12)
   (clear tile_8)
   (clear tile_4)
   (clear tile_17)
   (clear tile_16)
   (clear tile_7)
   (clear tile_6)
   (clear tile_2)
   (clear tile_11)
   (clear tile_15)
   (clear tile_0)
   (clear tile_1)
   (up tile_13 tile_14)
   (up tile_12 tile_9)
   (up tile_8 tile_5)
   (up tile_4 tile_13)
   (up tile_3 tile_12)
   (up tile_17 tile_8)
   (up tile_10 tile_4)
   (up tile_16 tile_3)
   (up tile_7 tile_17)
   (up tile_6 tile_10)
   (up tile_2 tile_16)
   (up tile_11 tile_7)
   (up tile_15 tile_6)
   (up tile_0 tile_2)
   (up tile_1 tile_11)
   (down tile_14 tile_13)
   (down tile_9 tile_12)
   (down tile_5 tile_8)
   (down tile_13 tile_4)
   (down tile_12 tile_3)
   (down tile_8 tile_17)
   (down tile_4 tile_10)
   (down tile_3 tile_16)
   (down tile_17 tile_7)
   (down tile_10 tile_6)
   (down tile_16 tile_2)
   (down tile_7 tile_11)
   (down tile_6 tile_15)
   (down tile_2 tile_0)
   (down tile_11 tile_1)
   (right tile_9 tile_14)
   (right tile_5 tile_9)
   (right tile_12 tile_13)
   (right tile_8 tile_12)
   (right tile_3 tile_4)
   (right tile_17 tile_3)
   (right tile_16 tile_10)
   (right tile_7 tile_16)
   (right tile_2 tile_6)
   (right tile_11 tile_2)
   (right tile_0 tile_15)
   (right tile_1 tile_0)
   (left tile_14 tile_9)
   (left tile_9 tile_5)
   (left tile_13 tile_12)
   (left tile_12 tile_8)
   (left tile_4 tile_3)
   (left tile_3 tile_17)
   (left tile_10 tile_16)
   (left tile_16 tile_7)
   (left tile_6 tile_2)
   (left tile_2 tile_11)
   (left tile_15 tile_0)
   (left tile_0 tile_1)
)
 (:goal (and
    (painted tile_13 color_1)
    (painted tile_12 color_0)
    (painted tile_8 color_1)
    (painted tile_4 color_0)
    (painted tile_3 color_1)
    (painted tile_17 color_0)
    (painted tile_10 color_1)
    (painted tile_16 color_0)
    (painted tile_7 color_1)
    (painted tile_6 color_0)
    (painted tile_2 color_1)
    (painted tile_11 color_0)
    (painted tile_15 color_1)
    (painted tile_0 color_0)
    (painted tile_1 color_1)
))
 
)
