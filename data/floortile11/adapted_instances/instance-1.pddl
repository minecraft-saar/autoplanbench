(define (problem prob001)
 (:domain floor-tile)
 (:objects tile_8 tile_1 tile_7 
           tile_3 tile_9 tile_5 
           tile_4 tile_10 tile_2 
           tile_11 tile_6 tile_0 - tile
           robot_0 robot_1 - robot
           color_0 color_1 - color
)
 (:init 
   (robot-at robot_0 tile_8)
   (robot-has robot_0 color_0)
   (robot-at robot_1 tile_10)
   (robot-has robot_1 color_1)
   (available-color color_0)
   (available-color color_1)
   (clear tile_1)
   (clear tile_7)
   (clear tile_3)
   (clear tile_9)
   (clear tile_5)
   (clear tile_4)
   (clear tile_2)
   (clear tile_11)
   (clear tile_6)
   (clear tile_0)
   (up tile_3 tile_8)
   (up tile_9 tile_1)
   (up tile_5 tile_7)
   (up tile_4 tile_3)
   (up tile_10 tile_9)
   (up tile_2 tile_5)
   (up tile_11 tile_4)
   (up tile_6 tile_10)
   (up tile_0 tile_2)
   (down tile_8 tile_3)
   (down tile_1 tile_9)
   (down tile_7 tile_5)
   (down tile_3 tile_4)
   (down tile_9 tile_10)
   (down tile_5 tile_2)
   (down tile_4 tile_11)
   (down tile_10 tile_6)
   (down tile_2 tile_0)
   (right tile_1 tile_8)
   (right tile_7 tile_1)
   (right tile_9 tile_3)
   (right tile_5 tile_9)
   (right tile_10 tile_4)
   (right tile_2 tile_10)
   (right tile_6 tile_11)
   (right tile_0 tile_6)
   (left tile_8 tile_1)
   (left tile_1 tile_7)
   (left tile_3 tile_9)
   (left tile_9 tile_5)
   (left tile_4 tile_10)
   (left tile_10 tile_2)
   (left tile_11 tile_6)
   (left tile_6 tile_0)
)
 (:goal (and
    (painted tile_3 color_0)
    (painted tile_9 color_1)
    (painted tile_5 color_0)
    (painted tile_4 color_1)
    (painted tile_10 color_0)
    (painted tile_2 color_1)
    (painted tile_11 color_0)
    (painted tile_6 color_1)
    (painted tile_0 color_0)
))
 
)
