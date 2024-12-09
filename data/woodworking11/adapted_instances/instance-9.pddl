; woodworking task with 7 parts and 140% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 42617

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
    acolour_3 acolour_4 acolour_0 acolour_2 acolour_1 - acolour
    awood_0 awood_1 - awood
    part_4 part_5 part_1 part_2 part_3 part_6 part_0 - part
    board_0 board_1 board_2 - board
    aboardsize_0 aboardsize_1 aboardsize_3 aboardsize_6 aboardsize_5 aboardsize_4 aboardsize_7 aboardsize_8 aboardsize_2 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_0 aboardsize_1)
    (boardsize-successor aboardsize_1 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_6)
    (boardsize-successor aboardsize_6 aboardsize_5)
    (boardsize-successor aboardsize_5 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_7)
    (boardsize-successor aboardsize_7 aboardsize_8)
    (boardsize-successor aboardsize_8 aboardsize_2)
    (has-colour glazer_0 acolour_3)
    (has-colour glazer_0 acolour_2)
    (has-colour glazer_0 natural)
    (has-colour glazer_0 acolour_1)
    (has-colour immersion-varnisher_0 acolour_1)
    (has-colour immersion-varnisher_0 acolour_4)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_1)
    (has-colour spray-varnisher_0 acolour_4)
    (unused part_4)
    (goalsize part_4 large)
    (unused part_5)
    (goalsize part_5 large)
    (unused part_1)
    (goalsize part_1 small)
    (unused part_2)
    (goalsize part_2 small)
    (unused part_3)
    (goalsize part_3 small)
    (available part_6)
    (colour part_6 acolour_0)
    (wood part_6 awood_1)
    (surface-condition part_6 rough)
    (treatment part_6 varnished)
    (goalsize part_6 large)
    (unused part_0)
    (goalsize part_0 medium)
    (boardsize board_0 aboardsize_6)
    (wood board_0 awood_1)
    (surface-condition board_0 rough)
    (available board_0)
    (boardsize board_1 aboardsize_2)
    (wood board_1 awood_0)
    (surface-condition board_1 rough)
    (available board_1)
    (boardsize board_2 aboardsize_4)
    (wood board_2 awood_0)
    (surface-condition board_2 smooth)
    (available board_2)
  )
  (:goal
    (and
      (available part_4)
      (wood part_4 awood_0)
      (treatment part_4 glazed)
      (available part_5)
      (surface-condition part_5 smooth)
      (treatment part_5 varnished)
      (available part_1)
      (colour part_1 acolour_2)
      (wood part_1 awood_1)
      (treatment part_1 glazed)
      (available part_2)
      (colour part_2 acolour_3)
      (wood part_2 awood_0)
      (surface-condition part_2 verysmooth)
      (treatment part_2 glazed)
      (available part_3)
      (colour part_3 acolour_4)
      (wood part_3 awood_1)
      (surface-condition part_3 smooth)
      (treatment part_3 varnished)
      (available part_6)
      (colour part_6 natural)
      (treatment part_6 glazed)
      (available part_0)
      (colour part_0 acolour_1)
      (wood part_0 awood_0)
    )
  )
  
)
