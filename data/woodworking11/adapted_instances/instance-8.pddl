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
    acolour_0 acolour_1 acolour_3 acolour_2 acolour_4 - acolour
    awood_0 awood_1 - awood
    part_0 part_5 part_4 part_2 part_1 part_6 part_3 - part
    board_2 board_1 board_0 - board
    aboardsize_5 aboardsize_4 aboardsize_9 aboardsize_0 aboardsize_7 aboardsize_2 aboardsize_10 aboardsize_1 aboardsize_6 aboardsize_3 aboardsize_8 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_5 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_9)
    (boardsize-successor aboardsize_9 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_7)
    (boardsize-successor aboardsize_7 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_10)
    (boardsize-successor aboardsize_10 aboardsize_1)
    (boardsize-successor aboardsize_1 aboardsize_6)
    (boardsize-successor aboardsize_6 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_8)
    (has-colour glazer_0 acolour_0)
    (has-colour glazer_0 acolour_4)
    (has-colour glazer_0 acolour_2)
    (has-colour immersion-varnisher_0 acolour_0)
    (has-colour immersion-varnisher_0 natural)
    (has-colour immersion-varnisher_0 acolour_4)
    (has-colour immersion-varnisher_0 acolour_2)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_0)
    (has-colour spray-varnisher_0 natural)
    (has-colour spray-varnisher_0 acolour_4)
    (has-colour spray-varnisher_0 acolour_2)
    (unused part_0)
    (goalsize part_0 medium)
    (unused part_5)
    (goalsize part_5 small)
    (unused part_4)
    (goalsize part_4 large)
    (unused part_2)
    (goalsize part_2 small)
    (unused part_1)
    (goalsize part_1 large)
    (unused part_6)
    (goalsize part_6 small)
    (unused part_3)
    (goalsize part_3 large)
    (boardsize board_2 aboardsize_8)
    (wood board_2 awood_0)
    (surface-condition board_2 rough)
    (available board_2)
    (boardsize board_1 aboardsize_9)
    (wood board_1 awood_0)
    (surface-condition board_1 rough)
    (available board_1)
    (boardsize board_0 aboardsize_9)
    (wood board_0 awood_1)
    (surface-condition board_0 rough)
    (available board_0)
  )
  (:goal
    (and
      (available part_0)
      (colour part_0 acolour_0)
      (surface-condition part_0 verysmooth)
      (available part_5)
      (colour part_5 natural)
      (treatment part_5 varnished)
      (available part_4)
      (colour part_4 acolour_4)
      (wood part_4 awood_0)
      (treatment part_4 glazed)
      (available part_2)
      (surface-condition part_2 verysmooth)
      (treatment part_2 varnished)
      (available part_1)
      (colour part_1 acolour_4)
      (wood part_1 awood_0)
      (treatment part_1 varnished)
      (available part_6)
      (surface-condition part_6 verysmooth)
      (treatment part_6 varnished)
      (available part_3)
      (colour part_3 acolour_2)
      (surface-condition part_3 verysmooth)
    )
  )
  
)
