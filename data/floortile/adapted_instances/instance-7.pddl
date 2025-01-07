(define (problem floortile-2-3-3)
 (:domain floor-tile)
 (:objects tile_8 tile_7 tile_6 
           tile_2 tile_5 tile_0 
           tile_4 tile_3 tile_1 - tile
           robot_2 robot_1 robot_0 - robot
           color_1 color_0 - color
)
 (:init 
   (robot-at robot_2 tile_8)
   (robot-has robot_2 color_1)
   (robot-at robot_1 tile_5)
   (robot-has robot_1 color_0)
   (robot-at robot_0 tile_0)
   (robot-has robot_0 color_1)
   (available-color color_1)
   (available-color color_0)
   (clear tile_7)
   (clear tile_6)
   (clear tile_2)
   (clear tile_4)
   (clear tile_3)
   (clear tile_1)
   (up tile_2 tile_8)
   (up tile_5 tile_7)
   (up tile_0 tile_6)
   (up tile_4 tile_2)
   (up tile_3 tile_5)
   (up tile_1 tile_0)
   (down tile_8 tile_2)
   (down tile_7 tile_5)
   (down tile_6 tile_0)
   (down tile_2 tile_4)
   (down tile_5 tile_3)
   (down tile_0 tile_1)
   (right tile_7 tile_8)
   (right tile_6 tile_7)
   (right tile_5 tile_2)
   (right tile_0 tile_5)
   (right tile_3 tile_4)
   (right tile_1 tile_3)
   (left tile_8 tile_7)
   (left tile_7 tile_6)
   (left tile_2 tile_5)
   (left tile_5 tile_0)
   (left tile_4 tile_3)
   (left tile_3 tile_1)
)
 (:goal (and
    (painted tile_2 color_1)
    (painted tile_5 color_0)
    (painted tile_0 color_1)
    (painted tile_4 color_0)
    (painted tile_3 color_1)
    (painted tile_1 color_0)
))
)