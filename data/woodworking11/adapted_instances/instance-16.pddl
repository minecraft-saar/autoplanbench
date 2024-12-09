; woodworking task with 9 parts and 140% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 166664

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
    acolour_1 acolour_3 acolour_5 acolour_4 acolour_0 acolour_2 - acolour
    awood_1 awood_0 - awood
    part_7 part_2 part_5 part_4 part_3 part_0 part_6 part_1 part_8 - part
    board_2 board_0 board_1 - board
    aboardsize_3 aboardsize_4 aboardsize_7 aboardsize_6 aboardsize_1 aboardsize_2 aboardsize_0 aboardsize_5 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_3 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_7)
    (boardsize-successor aboardsize_7 aboardsize_6)
    (boardsize-successor aboardsize_6 aboardsize_1)
    (boardsize-successor aboardsize_1 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_5)
    (has-colour glazer_0 acolour_5)
    (has-colour glazer_0 acolour_2)
    (has-colour glazer_0 acolour_1)
    (has-colour immersion-varnisher_0 acolour_0)
    (has-colour immersion-varnisher_0 acolour_5)
    (has-colour immersion-varnisher_0 acolour_2)
    (has-colour immersion-varnisher_0 acolour_1)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_0)
    (has-colour spray-varnisher_0 acolour_5)
    (has-colour spray-varnisher_0 acolour_2)
    (has-colour spray-varnisher_0 acolour_1)
    (unused part_7)
    (goalsize part_7 large)
    (unused part_2)
    (goalsize part_2 medium)
    (unused part_5)
    (goalsize part_5 small)
    (available part_4)
    (colour part_4 acolour_3)
    (wood part_4 awood_0)
    (surface-condition part_4 rough)
    (treatment part_4 glazed)
    (goalsize part_4 small)
    (available part_3)
    (colour part_3 natural)
    (wood part_3 awood_0)
    (surface-condition part_3 verysmooth)
    (treatment part_3 varnished)
    (goalsize part_3 large)
    (unused part_0)
    (goalsize part_0 small)
    (unused part_6)
    (goalsize part_6 large)
    (available part_1)
    (colour part_1 natural)
    (wood part_1 awood_1)
    (surface-condition part_1 smooth)
    (treatment part_1 colourfragments)
    (goalsize part_1 small)
    (unused part_8)
    (goalsize part_8 large)
    (boardsize board_2 aboardsize_0)
    (wood board_2 awood_0)
    (surface-condition board_2 rough)
    (available board_2)
    (boardsize board_0 aboardsize_5)
    (wood board_0 awood_1)
    (surface-condition board_0 rough)
    (available board_0)
    (boardsize board_1 aboardsize_0)
    (wood board_1 awood_1)
    (surface-condition board_1 rough)
    (available board_1)
  )
  (:goal
    (and
      (available part_7)
      (colour part_7 acolour_5)
      (surface-condition part_7 smooth)
      (available part_2)
      (colour part_2 acolour_1)
      (wood part_2 awood_1)
      (treatment part_2 glazed)
      (available part_5)
      (wood part_5 awood_0)
      (surface-condition part_5 verysmooth)
      (treatment part_5 varnished)
      (available part_4)
      (colour part_4 acolour_1)
      (surface-condition part_4 verysmooth)
      (available part_3)
      (colour part_3 acolour_2)
      (wood part_3 awood_0)
      (surface-condition part_3 smooth)
      (available part_0)
      (colour part_0 acolour_5)
      (wood part_0 awood_1)
      (available part_6)
      (colour part_6 acolour_2)
      (wood part_6 awood_0)
      (surface-condition part_6 smooth)
      (treatment part_6 glazed)
      (available part_1)
      (colour part_1 acolour_0)
      (wood part_1 awood_1)
      (surface-condition part_1 smooth)
      (treatment part_1 varnished)
      (available part_8)
      (colour part_8 acolour_2)
      (surface-condition part_8 smooth)
    )
  )
  
)
