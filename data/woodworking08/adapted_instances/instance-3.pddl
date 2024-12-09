; woodworking task with 5 parts and 140% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 448154

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
    acolour_3 acolour_2 acolour_0 acolour_1 - acolour
    awood_1 awood_0 - awood
    part_2 part_3 part_1 part_4 part_0 - part
    board_0 board_1 - board
    aboardsize_4 aboardsize_3 aboardsize_1 aboardsize_5 aboardsize_6 aboardsize_2 aboardsize_0 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_4 aboardsize_3)
    (boardsize-successor aboardsize_3 aboardsize_1)
    (boardsize-successor aboardsize_1 aboardsize_5)
    (boardsize-successor aboardsize_5 aboardsize_6)
    (boardsize-successor aboardsize_6 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_0)
    (has-colour glazer_0 acolour_1)
    (has-colour glazer_0 acolour_2)
    (has-colour glazer_0 acolour_0)
    (has-colour immersion-varnisher_0 acolour_0)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_0)
    (available part_2)
    (colour part_2 acolour_1)
    (wood part_2 awood_1)
    (surface-condition part_2 verysmooth)
    (treatment part_2 glazed)
    (goalsize part_2 medium)
    (unused part_3)
    (goalsize part_3 small)
    (unused part_1)
    (goalsize part_1 large)
    (unused part_4)
    (goalsize part_4 small)
    (unused part_0)
    (goalsize part_0 small)
    (boardsize board_0 aboardsize_0)
    (wood board_0 awood_0)
    (surface-condition board_0 rough)
    (available board_0)
    (boardsize board_1 aboardsize_5)
    (wood board_1 awood_1)
    (surface-condition board_1 rough)
    (available board_1)
  )
  (:goal
    (and
      (available part_2)
      (colour part_2 acolour_2)
      (treatment part_2 glazed)
      (available part_3)
      (wood part_3 awood_1)
      (treatment part_3 varnished)
      (available part_1)
      (colour part_1 acolour_1)
      (surface-condition part_1 verysmooth)
      (treatment part_1 glazed)
      (available part_4)
      (colour part_4 acolour_0)
      (surface-condition part_4 verysmooth)
      (available part_0)
      (surface-condition part_0 verysmooth)
      (treatment part_0 varnished)
    )
  )
  
)
