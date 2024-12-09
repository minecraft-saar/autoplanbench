; woodworking task with 8 parts and 140% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 592815

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
    acolour_2 acolour_1 acolour_0 acolour_4 acolour_5 acolour_3 - acolour
    awood_0 awood_1 - awood
    part_2 part_0 part_6 part_4 part_5 part_7 part_1 part_3 - part
    board_2 board_1 board_0 - board
    aboardsize_9 aboardsize_1 aboardsize_7 aboardsize_8 aboardsize_3 aboardsize_2 aboardsize_5 aboardsize_0 aboardsize_4 aboardsize_6 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_9 aboardsize_1)
    (boardsize-successor aboardsize_1 aboardsize_7)
    (boardsize-successor aboardsize_7 aboardsize_8)
    (boardsize-successor aboardsize_8 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_5)
    (boardsize-successor aboardsize_5 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_6)
    (has-colour glazer_0 natural)
    (has-colour glazer_0 acolour_3)
    (has-colour glazer_0 acolour_4)
    (has-colour immersion-varnisher_0 natural)
    (has-colour immersion-varnisher_0 acolour_4)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 natural)
    (has-colour spray-varnisher_0 acolour_4)
    (unused part_2)
    (goalsize part_2 large)
    (unused part_0)
    (goalsize part_0 medium)
    (unused part_6)
    (goalsize part_6 large)
    (unused part_4)
    (goalsize part_4 medium)
    (unused part_5)
    (goalsize part_5 large)
    (unused part_7)
    (goalsize part_7 small)
    (available part_1)
    (colour part_1 acolour_0)
    (wood part_1 awood_1)
    (surface-condition part_1 verysmooth)
    (treatment part_1 colourfragments)
    (goalsize part_1 medium)
    (available part_3)
    (colour part_3 acolour_3)
    (wood part_3 awood_0)
    (surface-condition part_3 smooth)
    (treatment part_3 varnished)
    (goalsize part_3 medium)
    (boardsize board_2 aboardsize_8)
    (wood board_2 awood_1)
    (surface-condition board_2 rough)
    (available board_2)
    (boardsize board_1 aboardsize_6)
    (wood board_1 awood_0)
    (surface-condition board_1 rough)
    (available board_1)
    (boardsize board_0 aboardsize_4)
    (wood board_0 awood_0)
    (surface-condition board_0 rough)
    (available board_0)
  )
  (:goal
    (and
      (available part_2)
      (wood part_2 awood_0)
      (treatment part_2 varnished)
      (available part_0)
      (colour part_0 natural)
      (surface-condition part_0 verysmooth)
      (available part_6)
      (wood part_6 awood_0)
      (surface-condition part_6 verysmooth)
      (available part_4)
      (colour part_4 acolour_4)
      (wood part_4 awood_0)
      (available part_5)
      (colour part_5 acolour_3)
      (wood part_5 awood_0)
      (surface-condition part_5 smooth)
      (treatment part_5 glazed)
      (available part_7)
      (wood part_7 awood_0)
      (surface-condition part_7 smooth)
      (available part_1)
      (wood part_1 awood_1)
      (surface-condition part_1 smooth)
      (treatment part_1 glazed)
      (available part_3)
      (surface-condition part_3 verysmooth)
      (treatment part_3 glazed)
    )
  )
  
)
