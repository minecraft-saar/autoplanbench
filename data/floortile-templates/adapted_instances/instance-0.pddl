(define (problem floortile-2-2-2)
 (:domain floor-tile)
 (:objects tile_1 tile_4 
           tile_5 tile_0 
           tile_2 tile_3 - tile
           robot_0 robot_1 - robot
           color_0 color_1 - color
)
 (:init 
   (robot-at robot_0 tile_0)
   (robot-has robot_0 color_0)
   (robot-at robot_1 tile_5)
   (robot-has robot_1 color_1)
   (available-color color_0)
   (available-color color_1)
   (clear tile_1)
   (clear tile_4)
   (clear tile_2)
   (clear tile_3)
   (up tile_5 tile_1)
   (up tile_0 tile_4)
   (up tile_2 tile_5)
   (up tile_3 tile_0)
   (down tile_1 tile_5)
   (down tile_4 tile_0)
   (down tile_5 tile_2)
   (down tile_0 tile_3)
   (right tile_4 tile_1)
   (right tile_0 tile_5)
   (right tile_3 tile_2)
   (left tile_1 tile_4)
   (left tile_5 tile_0)
   (left tile_2 tile_3)
)
 (:goal (and
    (painted tile_5 color_0)
    (painted tile_0 color_1)
    (painted tile_2 color_1)
    (painted tile_3 color_0)
))
)
