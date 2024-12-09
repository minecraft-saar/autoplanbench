; woodworking task with 8 parts and 100% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 960077

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
    acolour_4 acolour_5 acolour_3 acolour_2 acolour_1 acolour_0 - acolour
    awood_1 awood_0 - awood
    part_5 part_0 part_4 part_2 part_7 part_3 part_1 part_6 - part
    board_2 board_1 board_0 - board
    aboardsize_6 aboardsize_1 aboardsize_5 aboardsize_3 aboardsize_7 aboardsize_4 aboardsize_2 aboardsize_0 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_6 aboardsize_1)
    (boardsize-successor aboardsize_1 aboardsize_5)
    (boardsize-successor aboardsize_5 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_7)
    (boardsize-successor aboardsize_7 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_0)
    (has-colour glazer_0 acolour_3)
    (has-colour glazer_0 acolour_5)
    (has-colour immersion-varnisher_0 acolour_3)
    (has-colour immersion-varnisher_0 acolour_5)
    (has-colour immersion-varnisher_0 acolour_2)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_3)
    (has-colour spray-varnisher_0 acolour_5)
    (has-colour spray-varnisher_0 acolour_2)
    (unused part_5)
    (goalsize part_5 large)
    (unused part_0)
    (goalsize part_0 small)
    (unused part_4)
    (goalsize part_4 small)
    (unused part_2)
    (goalsize part_2 medium)
    (available part_7)
    (colour part_7 acolour_1)
    (wood part_7 awood_1)
    (surface-condition part_7 rough)
    (treatment part_7 colourfragments)
    (goalsize part_7 small)
    (unused part_3)
    (goalsize part_3 large)
    (unused part_1)
    (goalsize part_1 medium)
    (unused part_6)
    (goalsize part_6 medium)
    (boardsize board_2 aboardsize_0)
    (wood board_2 awood_1)
    (surface-condition board_2 smooth)
    (available board_2)
    (boardsize board_1 aboardsize_7)
    (wood board_1 awood_1)
    (surface-condition board_1 rough)
    (available board_1)
    (boardsize board_0 aboardsize_3)
    (wood board_0 awood_0)
    (surface-condition board_0 rough)
    (available board_0)
  )
  (:goal
    (and
      (available part_5)
      (wood part_5 awood_1)
      (surface-condition part_5 smooth)
      (available part_0)
      (wood part_0 awood_1)
      (surface-condition part_0 smooth)
      (treatment part_0 varnished)
      (available part_4)
      (colour part_4 acolour_2)
      (wood part_4 awood_1)
      (treatment part_4 varnished)
      (available part_2)
      (colour part_2 acolour_3)
      (wood part_2 awood_1)
      (surface-condition part_2 smooth)
      (treatment part_2 glazed)
      (available part_7)
      (colour part_7 acolour_5)
      (wood part_7 awood_1)
      (surface-condition part_7 smooth)
      (available part_3)
      (wood part_3 awood_0)
      (treatment part_3 varnished)
      (available part_1)
      (wood part_1 awood_1)
      (surface-condition part_1 verysmooth)
      (available part_6)
      (colour part_6 acolour_3)
      (treatment part_6 varnished)
    )
  )
  
)
