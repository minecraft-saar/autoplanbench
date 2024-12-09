; woodworking task with 11 parts and 100% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 623538

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
    acolour_2 acolour_0 acolour_1 acolour_4 acolour_3 acolour_5 - acolour
    awood_2 awood_0 awood_1 - awood
    part_8 part_4 part_1 part_10 part_9 part_3 part_2 part_0 part_7 part_5 part_6 - part
    board_1 board_0 board_2 board_3 - board
    aboardsize_6 aboardsize_5 aboardsize_7 aboardsize_9 aboardsize_0 aboardsize_2 aboardsize_3 aboardsize_8 aboardsize_4 aboardsize_1 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_6 aboardsize_5)
    (boardsize-successor aboardsize_5 aboardsize_7)
    (boardsize-successor aboardsize_7 aboardsize_9)
    (boardsize-successor aboardsize_9 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_8)
    (boardsize-successor aboardsize_8 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_1)
    (has-colour glazer_0 acolour_0)
    (has-colour glazer_0 acolour_1)
    (has-colour glazer_0 natural)
    (has-colour glazer_0 acolour_2)
    (has-colour glazer_0 acolour_4)
    (has-colour immersion-varnisher_0 acolour_4)
    (has-colour immersion-varnisher_0 acolour_3)
    (has-colour immersion-varnisher_0 natural)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_4)
    (has-colour spray-varnisher_0 acolour_3)
    (has-colour spray-varnisher_0 natural)
    (unused part_8)
    (goalsize part_8 medium)
    (unused part_4)
    (goalsize part_4 medium)
    (unused part_1)
    (goalsize part_1 small)
    (unused part_10)
    (goalsize part_10 large)
    (unused part_9)
    (goalsize part_9 large)
    (unused part_3)
    (goalsize part_3 large)
    (available part_2)
    (colour part_2 natural)
    (wood part_2 awood_1)
    (surface-condition part_2 verysmooth)
    (treatment part_2 varnished)
    (goalsize part_2 large)
    (unused part_0)
    (goalsize part_0 medium)
    (unused part_7)
    (goalsize part_7 medium)
    (unused part_5)
    (goalsize part_5 medium)
    (unused part_6)
    (goalsize part_6 small)
    (boardsize board_1 aboardsize_1)
    (wood board_1 awood_2)
    (surface-condition board_1 rough)
    (available board_1)
    (boardsize board_0 aboardsize_6)
    (wood board_0 awood_2)
    (surface-condition board_0 rough)
    (available board_0)
    (boardsize board_2 aboardsize_4)
    (wood board_2 awood_0)
    (surface-condition board_2 rough)
    (available board_2)
    (boardsize board_3 aboardsize_0)
    (wood board_3 awood_1)
    (surface-condition board_3 rough)
    (available board_3)
  )
  (:goal
    (and
      (available part_8)
      (colour part_8 acolour_2)
      (wood part_8 awood_1)
      (treatment part_8 glazed)
      (available part_4)
      (colour part_4 acolour_0)
      (treatment part_4 glazed)
      (available part_1)
      (colour part_1 natural)
      (surface-condition part_1 verysmooth)
      (available part_10)
      (surface-condition part_10 verysmooth)
      (treatment part_10 varnished)
      (available part_9)
      (colour part_9 acolour_1)
      (treatment part_9 glazed)
      (available part_3)
      (colour part_3 acolour_3)
      (wood part_3 awood_0)
      (surface-condition part_3 smooth)
      (treatment part_3 varnished)
      (available part_2)
      (colour part_2 acolour_4)
      (wood part_2 awood_1)
      (available part_0)
      (surface-condition part_0 smooth)
      (treatment part_0 glazed)
      (available part_7)
      (wood part_7 awood_0)
      (surface-condition part_7 verysmooth)
      (treatment part_7 varnished)
      (available part_5)
      (surface-condition part_5 smooth)
      (treatment part_5 varnished)
      (available part_6)
      (wood part_6 awood_1)
      (surface-condition part_6 smooth)
    )
  )
  
)
