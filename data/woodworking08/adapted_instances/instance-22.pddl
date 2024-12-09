; woodworking task with 4 parts and 100% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 938703

(define (problem wood-prob)
  (:domain woodworking)
  (:objects
    grinder_0 - grinder
    glazer_0 - glazer
    immersion-varnisher_0 - immersion-varnisher
    planer_0 - planer
    highspeed-saw_0 - highspeed-saw
    spray-varnisher_0 - spray-varnisher
    saw_0 - saw
    acolour_1 acolour_2 acolour_0 - acolour
    awood_1 awood_0 - awood
    part_0 part_1 part_2 part_3 - part
    board_0 board_1 - board
    aboardsize_3 aboardsize_5 aboardsize_0 aboardsize_4 aboardsize_2 aboardsize_1 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_3 aboardsize_5)
    (boardsize-successor aboardsize_5 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_1)
    (has-colour glazer_0 acolour_2)
    (has-colour glazer_0 natural)
    (has-colour immersion-varnisher_0 acolour_2)
    (has-colour immersion-varnisher_0 natural)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_2)
    (has-colour spray-varnisher_0 natural)
    (unused part_0)
    (goalsize part_0 medium)
    (unused part_1)
    (goalsize part_1 large)
    (unused part_2)
    (goalsize part_2 medium)
    (unused part_3)
    (goalsize part_3 large)
    (boardsize board_0 aboardsize_1)
    (wood board_0 awood_0)
    (surface-condition board_0 rough)
    (available board_0)
    (boardsize board_1 aboardsize_1)
    (wood board_1 awood_1)
    (surface-condition board_1 rough)
    (available board_1)
  )
  (:goal
    (and
      (available part_0)
      (colour part_0 acolour_2)
      (wood part_0 awood_0)
      (available part_1)
      (wood part_1 awood_1)
      (surface-condition part_1 smooth)
      (available part_2)
      (wood part_2 awood_1)
      (treatment part_2 varnished)
      (available part_3)
      (colour part_3 natural)
      (wood part_3 awood_0)
    )
  )
  
)
