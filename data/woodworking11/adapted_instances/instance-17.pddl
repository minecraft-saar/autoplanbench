; woodworking task with 10 parts and 100% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 443905

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
    acolour_3 acolour_5 acolour_1 acolour_2 acolour_0 acolour_4 - acolour
    awood_0 awood_2 awood_1 - awood
    part_0 part_4 part_9 part_1 part_2 part_7 part_8 part_5 part_3 part_6 - part
    board_1 board_3 board_0 board_2 - board
    aboardsize_1 aboardsize_4 aboardsize_6 aboardsize_3 aboardsize_5 aboardsize_2 aboardsize_0 aboardsize_8 aboardsize_7 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_1 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_6)
    (boardsize-successor aboardsize_6 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_5)
    (boardsize-successor aboardsize_5 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_8)
    (boardsize-successor aboardsize_8 aboardsize_7)
    (has-colour glazer_0 acolour_1)
    (has-colour glazer_0 natural)
    (has-colour glazer_0 acolour_0)
    (has-colour glazer_0 acolour_2)
    (has-colour immersion-varnisher_0 acolour_1)
    (has-colour immersion-varnisher_0 natural)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_1)
    (has-colour spray-varnisher_0 natural)
    (unused part_0)
    (goalsize part_0 large)
    (unused part_4)
    (goalsize part_4 large)
    (unused part_9)
    (goalsize part_9 large)
    (unused part_1)
    (goalsize part_1 large)
    (unused part_2)
    (goalsize part_2 medium)
    (unused part_7)
    (goalsize part_7 large)
    (unused part_8)
    (goalsize part_8 medium)
    (unused part_5)
    (goalsize part_5 medium)
    (unused part_3)
    (goalsize part_3 medium)
    (unused part_6)
    (goalsize part_6 medium)
    (boardsize board_1 aboardsize_7)
    (wood board_1 awood_0)
    (surface-condition board_1 rough)
    (available board_1)
    (boardsize board_3 aboardsize_8)
    (wood board_3 awood_2)
    (surface-condition board_3 smooth)
    (available board_3)
    (boardsize board_0 aboardsize_3)
    (wood board_0 awood_2)
    (surface-condition board_0 smooth)
    (available board_0)
    (boardsize board_2 aboardsize_8)
    (wood board_2 awood_1)
    (surface-condition board_2 rough)
    (available board_2)
  )
  (:goal
    (and
      (available part_0)
      (wood part_0 awood_0)
      (surface-condition part_0 verysmooth)
      (available part_4)
      (wood part_4 awood_0)
      (surface-condition part_4 verysmooth)
      (available part_9)
      (colour part_9 acolour_1)
      (wood part_9 awood_2)
      (available part_1)
      (colour part_1 natural)
      (treatment part_1 glazed)
      (available part_2)
      (colour part_2 natural)
      (treatment part_2 glazed)
      (available part_7)
      (colour part_7 acolour_0)
      (wood part_7 awood_1)
      (surface-condition part_7 verysmooth)
      (treatment part_7 glazed)
      (available part_8)
      (colour part_8 natural)
      (wood part_8 awood_1)
      (surface-condition part_8 smooth)
      (treatment part_8 varnished)
      (available part_5)
      (colour part_5 natural)
      (surface-condition part_5 smooth)
      (treatment part_5 varnished)
      (available part_3)
      (colour part_3 natural)
      (wood part_3 awood_2)
      (available part_6)
      (colour part_6 acolour_2)
      (treatment part_6 glazed)
    )
  )
  
)
