; woodworking task with 7 parts and 120% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 978438

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
    acolour_2 acolour_4 acolour_1 acolour_0 acolour_3 - acolour
    awood_0 awood_1 - awood
    part_1 part_0 part_4 part_6 part_3 part_2 part_5 - part
    board_2 board_0 board_1 - board
    aboardsize_3 aboardsize_5 aboardsize_4 aboardsize_10 aboardsize_9 aboardsize_6 aboardsize_2 aboardsize_0 aboardsize_8 aboardsize_7 aboardsize_1 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_3 aboardsize_5)
    (boardsize-successor aboardsize_5 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_10)
    (boardsize-successor aboardsize_10 aboardsize_9)
    (boardsize-successor aboardsize_9 aboardsize_6)
    (boardsize-successor aboardsize_6 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_8)
    (boardsize-successor aboardsize_8 aboardsize_7)
    (boardsize-successor aboardsize_7 aboardsize_1)
    (has-colour glazer_0 acolour_3)
    (has-colour glazer_0 acolour_0)
    (has-colour glazer_0 natural)
    (has-colour glazer_0 acolour_4)
    (has-colour immersion-varnisher_0 acolour_0)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_0)
    (unused part_1)
    (goalsize part_1 small)
    (unused part_0)
    (goalsize part_0 medium)
    (unused part_4)
    (goalsize part_4 small)
    (unused part_6)
    (goalsize part_6 medium)
    (unused part_3)
    (goalsize part_3 large)
    (unused part_2)
    (goalsize part_2 large)
    (available part_5)
    (colour part_5 acolour_0)
    (wood part_5 awood_1)
    (surface-condition part_5 smooth)
    (treatment part_5 varnished)
    (goalsize part_5 small)
    (boardsize board_2 aboardsize_1)
    (wood board_2 awood_0)
    (surface-condition board_2 smooth)
    (available board_2)
    (boardsize board_0 aboardsize_9)
    (wood board_0 awood_0)
    (surface-condition board_0 rough)
    (available board_0)
    (boardsize board_1 aboardsize_4)
    (wood board_1 awood_1)
    (surface-condition board_1 smooth)
    (available board_1)
  )
  (:goal
    (and
      (available part_1)
      (colour part_1 acolour_4)
      (treatment part_1 glazed)
      (available part_0)
      (colour part_0 acolour_3)
      (treatment part_0 glazed)
      (available part_4)
      (colour part_4 acolour_0)
      (surface-condition part_4 verysmooth)
      (available part_6)
      (colour part_6 natural)
      (wood part_6 awood_0)
      (surface-condition part_6 smooth)
      (treatment part_6 glazed)
      (available part_3)
      (colour part_3 natural)
      (surface-condition part_3 verysmooth)
      (treatment part_3 glazed)
      (available part_2)
      (wood part_2 awood_0)
      (treatment part_2 glazed)
      (available part_5)
      (wood part_5 awood_1)
      (surface-condition part_5 verysmooth)
      (treatment part_5 glazed)
    )
  )
  
)
