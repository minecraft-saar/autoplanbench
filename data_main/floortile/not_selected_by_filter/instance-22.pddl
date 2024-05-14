(define (problem floortile-3-3-2)
 (:domain floor-tile)
 (:objects tile_0 tile_1 tile_2 
           tile_3 tile_4 tile_5 
           tile_6 tile_7 tile_8 
           tile_9 tile_10 tile_11 - tile
           robot_0 robot_1 - robot
           color_0 color_1 - color
)
 (:init 
   (robot-at robot_0 tile_11)
   (robot-has robot_0 color_0)
   (robot-at robot_1 tile_6)
   (robot-has robot_1 color_1)
   (available-color color_0)
   (available-color color_1)
   (clear tile_0)
   (clear tile_1)
   (clear tile_2)
   (clear tile_3)
   (clear tile_4)
   (clear tile_5)
   (clear tile_7)
   (clear tile_8)
   (clear tile_9)
   (clear tile_10)
   (up tile_3 tile_0)
   (up tile_4 tile_1)
   (up tile_5 tile_2)
   (up tile_6 tile_3)
   (up tile_7 tile_4)
   (up tile_8 tile_5)
   (up tile_9 tile_6)
   (up tile_10 tile_7)
   (up tile_11 tile_8)
   (down tile_0 tile_3)
   (down tile_1 tile_4)
   (down tile_2 tile_5)
   (down tile_3 tile_6)
   (down tile_4 tile_7)
   (down tile_5 tile_8)
   (down tile_6 tile_9)
   (down tile_7 tile_10)
   (down tile_8 tile_11)
   (right tile_1 tile_0)
   (right tile_2 tile_1)
   (right tile_4 tile_3)
   (right tile_5 tile_4)
   (right tile_7 tile_6)
   (right tile_8 tile_7)
   (right tile_10 tile_9)
   (right tile_11 tile_10)
   (left tile_0 tile_1)
   (left tile_1 tile_2)
   (left tile_3 tile_4)
   (left tile_4 tile_5)
   (left tile_6 tile_7)
   (left tile_7 tile_8)
   (left tile_9 tile_10)
   (left tile_10 tile_11)
)
 (:goal (and
    (painted tile_3 color_0)
    (painted tile_4 color_1)
    (painted tile_5 color_0)
    (painted tile_6 color_1)
    (painted tile_7 color_0)
    (painted tile_8 color_1)
    (painted tile_9 color_0)
    (painted tile_10 color_1)
    (painted tile_11 color_0)
))
)
