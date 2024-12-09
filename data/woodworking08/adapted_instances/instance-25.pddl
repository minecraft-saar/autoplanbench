; woodworking task with 7 parts and 100% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 173831

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
    acolour_2 acolour_1 acolour_0 acolour_4 acolour_3 - acolour
    awood_0 awood_1 - awood
    part_1 part_2 part_6 part_5 part_3 part_0 part_4 - part
    board_0 board_1 board_2 - board
    aboardsize_4 aboardsize_8 aboardsize_10 aboardsize_0 aboardsize_7 aboardsize_5 aboardsize_9 aboardsize_2 aboardsize_3 aboardsize_6 aboardsize_1 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_4 aboardsize_8)
    (boardsize-successor aboardsize_8 aboardsize_10)
    (boardsize-successor aboardsize_10 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_7)
    (boardsize-successor aboardsize_7 aboardsize_5)
    (boardsize-successor aboardsize_5 aboardsize_9)
    (boardsize-successor aboardsize_9 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_6)
    (boardsize-successor aboardsize_6 aboardsize_1)
    (has-colour glazer_0 acolour_2)
    (has-colour glazer_0 acolour_3)
    (has-colour glazer_0 acolour_4)
    (has-colour immersion-varnisher_0 acolour_2)
    (has-colour immersion-varnisher_0 natural)
    (has-colour immersion-varnisher_0 acolour_3)
    (has-colour immersion-varnisher_0 acolour_4)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_2)
    (has-colour spray-varnisher_0 natural)
    (has-colour spray-varnisher_0 acolour_3)
    (has-colour spray-varnisher_0 acolour_4)
    (unused part_1)
    (goalsize part_1 medium)
    (unused part_2)
    (goalsize part_2 small)
    (unused part_6)
    (goalsize part_6 large)
    (unused part_5)
    (goalsize part_5 small)
    (unused part_3)
    (goalsize part_3 large)
    (unused part_0)
    (goalsize part_0 small)
    (unused part_4)
    (goalsize part_4 large)
    (boardsize board_0 aboardsize_1)
    (wood board_0 awood_0)
    (surface-condition board_0 rough)
    (available board_0)
    (boardsize board_1 aboardsize_10)
    (wood board_1 awood_0)
    (surface-condition board_1 rough)
    (available board_1)
    (boardsize board_2 aboardsize_10)
    (wood board_2 awood_1)
    (surface-condition board_2 rough)
    (available board_2)
  )
  (:goal
    (and
      (available part_1)
      (colour part_1 acolour_2)
      (surface-condition part_1 verysmooth)
      (available part_2)
      (colour part_2 natural)
      (treatment part_2 varnished)
      (available part_6)
      (colour part_6 acolour_3)
      (wood part_6 awood_0)
      (treatment part_6 glazed)
      (available part_5)
      (surface-condition part_5 verysmooth)
      (treatment part_5 varnished)
      (available part_3)
      (colour part_3 acolour_3)
      (wood part_3 awood_0)
      (treatment part_3 varnished)
      (available part_0)
      (surface-condition part_0 verysmooth)
      (treatment part_0 varnished)
      (available part_4)
      (colour part_4 acolour_4)
      (surface-condition part_4 verysmooth)
    )
  )
  
)
