; woodworking task with 5 parts and 120% wood
; machines:
;   1 grinder
;   1 glazer
;   1 immersion-varnisher
;   1 planer
;   1 highspeed-saw
;   1 spray-varnisher
;   1 saw
; random seed: 729539

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
    acolour_2 acolour_0 acolour_3 acolour_1 - acolour
    awood_1 awood_0 - awood
    part_4 part_1 part_0 part_3 part_2 - part
    board_1 board_0 - board
    aboardsize_6 aboardsize_0 aboardsize_1 aboardsize_2 aboardsize_4 aboardsize_5 aboardsize_3 - aboardsize
  )
  (:init
    (grind-treatment-change varnished colourfragments)
    (grind-treatment-change glazed untreated)
    (grind-treatment-change untreated untreated)
    (grind-treatment-change colourfragments untreated)
    (is-smooth smooth)
    (is-smooth verysmooth)
    (boardsize-successor aboardsize_6 aboardsize_0)
    (boardsize-successor aboardsize_0 aboardsize_1)
    (boardsize-successor aboardsize_1 aboardsize_2)
    (boardsize-successor aboardsize_2 aboardsize_4)
    (boardsize-successor aboardsize_4 aboardsize_5)
    (boardsize-successor aboardsize_5 aboardsize_3)
    (has-colour glazer_0 acolour_0)
    (has-colour glazer_0 acolour_2)
    (has-colour immersion-varnisher_0 acolour_0)
    (has-colour immersion-varnisher_0 acolour_3)
    (empty highspeed-saw_0)
    (has-colour spray-varnisher_0 acolour_0)
    (has-colour spray-varnisher_0 acolour_3)
    (unused part_4)
    (goalsize part_4 medium)
    (unused part_1)
    (goalsize part_1 medium)
    (unused part_0)
    (goalsize part_0 small)
    (unused part_3)
    (goalsize part_3 medium)
    (unused part_2)
    (goalsize part_2 large)
    (boardsize board_1 aboardsize_3)
    (wood board_1 awood_1)
    (surface-condition board_1 rough)
    (available board_1)
    (boardsize board_0 aboardsize_3)
    (wood board_0 awood_0)
    (surface-condition board_0 smooth)
    (available board_0)
  )
  (:goal
    (and
      (available part_4)
      (colour part_4 acolour_0)
      (surface-condition part_4 smooth)
      (available part_1)
      (colour part_1 acolour_3)
      (wood part_1 awood_0)
      (surface-condition part_1 verysmooth)
      (treatment part_1 varnished)
      (available part_0)
      (colour part_0 acolour_0)
      (treatment part_0 glazed)
      (available part_3)
      (colour part_3 acolour_2)
      (wood part_3 awood_0)
      (surface-condition part_3 smooth)
      (treatment part_3 glazed)
      (available part_2)
      (wood part_2 awood_1)
      (treatment part_2 varnished)
    )
  )
  
)
