(define (problem prob)
 (:domain barman)
 (:objects 
     shaker_0 - shaker
     hand_0 hand_1 - hand
     shot_1 shot_2 shot_3 shot_0 - shot
     ingredient_2 ingredient_0 ingredient_1 - ingredient
     cocktail_0 cocktail_2 cocktail_1 - cocktail
     dispenser_2 dispenser_0 dispenser_1 - dispenser
     level_1 level_2 level_0 - level
)
 (:init 
  (ontable shaker_0)
  (ontable shot_1)
  (ontable shot_2)
  (ontable shot_3)
  (ontable shot_0)
  (dispenses dispenser_2 ingredient_2)
  (dispenses dispenser_0 ingredient_0)
  (dispenses dispenser_1 ingredient_1)
  (clean shaker_0)
  (clean shot_1)
  (clean shot_2)
  (clean shot_3)
  (clean shot_0)
  (empty shaker_0)
  (empty shot_1)
  (empty shot_2)
  (empty shot_3)
  (empty shot_0)
  (handempty hand_0)
  (handempty hand_1)
  (shaker-empty-level shaker_0 level_1)
  (shaker-level shaker_0 level_1)
  (next level_1 level_2)
  (next level_2 level_0)
  (cocktail-part1 cocktail_0 ingredient_2)
  (cocktail-part2 cocktail_0 ingredient_0)
  (cocktail-part1 cocktail_2 ingredient_0)
  (cocktail-part2 cocktail_2 ingredient_1)
  (cocktail-part1 cocktail_1 ingredient_2)
  (cocktail-part2 cocktail_1 ingredient_0)
)
 (:goal
  (and
     (contains shot_1 cocktail_0)
     (contains shot_2 cocktail_2)
     (contains shot_3 cocktail_1)
))
)