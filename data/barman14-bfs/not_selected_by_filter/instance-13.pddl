(define (problem prob)
 (:domain barman)
 (:objects 
     shaker_0 - shaker
     hand_0 hand_1 - hand
     shot_8 shot_5 shot_2 shot_0 shot_1 shot_6 shot_3 shot_4 shot_7 - shot
     ingredient_1 ingredient_2 ingredient_0 - ingredient
     cocktail_0 cocktail_6 cocktail_2 cocktail_5 cocktail_4 cocktail_3 cocktail_7 cocktail_1 - cocktail
     dispenser_2 dispenser_0 dispenser_1 - dispenser
     level_2 level_1 level_0 - level
)
 (:init 
  (ontable shaker_0)
  (ontable shot_8)
  (ontable shot_5)
  (ontable shot_2)
  (ontable shot_0)
  (ontable shot_1)
  (ontable shot_6)
  (ontable shot_3)
  (ontable shot_4)
  (ontable shot_7)
  (dispenses dispenser_2 ingredient_1)
  (dispenses dispenser_0 ingredient_2)
  (dispenses dispenser_1 ingredient_0)
  (clean shaker_0)
  (clean shot_8)
  (clean shot_5)
  (clean shot_2)
  (clean shot_0)
  (clean shot_1)
  (clean shot_6)
  (clean shot_3)
  (clean shot_4)
  (clean shot_7)
  (empty shaker_0)
  (empty shot_8)
  (empty shot_5)
  (empty shot_2)
  (empty shot_0)
  (empty shot_1)
  (empty shot_6)
  (empty shot_3)
  (empty shot_4)
  (empty shot_7)
  (handempty hand_0)
  (handempty hand_1)
  (shaker-empty-level shaker_0 level_2)
  (shaker-level shaker_0 level_2)
  (next level_2 level_1)
  (next level_1 level_0)
  (cocktail-part1 cocktail_0 ingredient_1)
  (cocktail-part2 cocktail_0 ingredient_0)
  (cocktail-part1 cocktail_6 ingredient_1)
  (cocktail-part2 cocktail_6 ingredient_2)
  (cocktail-part1 cocktail_2 ingredient_2)
  (cocktail-part2 cocktail_2 ingredient_1)
  (cocktail-part1 cocktail_5 ingredient_0)
  (cocktail-part2 cocktail_5 ingredient_1)
  (cocktail-part1 cocktail_4 ingredient_1)
  (cocktail-part2 cocktail_4 ingredient_0)
  (cocktail-part1 cocktail_3 ingredient_1)
  (cocktail-part2 cocktail_3 ingredient_0)
  (cocktail-part1 cocktail_7 ingredient_2)
  (cocktail-part2 cocktail_7 ingredient_0)
  (cocktail-part1 cocktail_1 ingredient_2)
  (cocktail-part2 cocktail_1 ingredient_1)
)
 (:goal
  (and
     (contains shot_8 cocktail_1)
     (contains shot_5 cocktail_2)
     (contains shot_2 cocktail_0)
     (contains shot_0 cocktail_4)
     (contains shot_1 cocktail_5)
     (contains shot_6 cocktail_3)
     (contains shot_3 cocktail_6)
     (contains shot_4 cocktail_7)
)))
