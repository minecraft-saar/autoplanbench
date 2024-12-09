(define (problem p8-3-23-tiny-network-3)
(:domain data-network)
(:objects
    data_6 data_2 data_1 data_4 data_7 data_3 data_5 data_0 - data
    script_11 script_1 script_7 script_6 script_5 script_0 script_22 script_21 script_2 script_20 script_3 script_13 script_19 script_8 script_4 script_17 script_9 script_18 script_10 script_12 script_15 script_16 script_14 - script
    server_2 server_0 server_1 - server
    numbers_2 numbers_16 numbers_7 numbers_11 numbers_6 numbers_13 numbers_15 numbers_8 numbers_9 numbers_1 numbers_5 numbers_3 numbers_0 numbers_12 numbers_14 numbers_10 numbers_4 - numbers
)
(:init
    (script-io script_11 data_6 data_2 data_7)
    (script-io script_1 data_2 data_6 data_1)
    (script-io script_7 data_6 data_2 data_4)
    (script-io script_6 data_7 data_6 data_5)
    (script-io script_5 data_4 data_2 data_0)
    (script-io script_0 data_4 data_7 data_3)
    (script-io script_22 data_1 data_2 data_3)
    (script-io script_21 data_4 data_6 data_0)
    (script-io script_2 data_6 data_2 data_7)
    (script-io script_20 data_4 data_1 data_5)
    (script-io script_3 data_7 data_6 data_3)
    (script-io script_13 data_2 data_6 data_7)
    (script-io script_19 data_6 data_2 data_7)
    (script-io script_8 data_6 data_2 data_1)
    (script-io script_4 data_1 data_4 data_0)
    (script-io script_17 data_7 data_2 data_5)
    (script-io script_9 data_6 data_2 data_4)
    (script-io script_18 data_1 data_2 data_0)
    (script-io script_10 data_7 data_2 data_0)
    (script-io script_12 data_2 data_6 data_7)
    (script-io script_15 data_2 data_6 data_4)
    (script-io script_16 data_1 data_2 data_0)
    (script-io script_14 data_7 data_6 data_0)
    (connected server_2 server_0)
    (connected server_0 server_2)
    (connected server_2 server_1)
    (connected server_1 server_2)
    (data-size data_6 numbers_6)
    (data-size data_2 numbers_11)
    (data-size data_1 numbers_16)
    (data-size data_4 numbers_16)
    (data-size data_7 numbers_16)
    (data-size data_3 numbers_6)
    (data-size data_5 numbers_7)
    (data-size data_0 numbers_16)
    (capacity server_2 numbers_4)
    (capacity server_0 numbers_9)
    (capacity server_1 numbers_9)
    (sum numbers_2 numbers_16 numbers_16)
    (sum numbers_2 numbers_7 numbers_7)
    (sum numbers_2 numbers_11 numbers_11)
    (sum numbers_2 numbers_6 numbers_6)
    (sum numbers_16 numbers_16 numbers_7)
    (sum numbers_16 numbers_7 numbers_11)
    (sum numbers_16 numbers_11 numbers_6)
    (sum numbers_16 numbers_6 numbers_13)
    (sum numbers_7 numbers_16 numbers_11)
    (sum numbers_7 numbers_7 numbers_6)
    (sum numbers_7 numbers_11 numbers_13)
    (sum numbers_7 numbers_6 numbers_15)
    (sum numbers_11 numbers_16 numbers_6)
    (sum numbers_11 numbers_7 numbers_13)
    (sum numbers_11 numbers_11 numbers_15)
    (sum numbers_11 numbers_6 numbers_8)
    (sum numbers_6 numbers_16 numbers_13)
    (sum numbers_6 numbers_7 numbers_15)
    (sum numbers_6 numbers_11 numbers_8)
    (sum numbers_6 numbers_6 numbers_9)
    (sum numbers_13 numbers_16 numbers_15)
    (sum numbers_13 numbers_7 numbers_8)
    (sum numbers_13 numbers_11 numbers_9)
    (sum numbers_13 numbers_6 numbers_1)
    (sum numbers_15 numbers_16 numbers_8)
    (sum numbers_15 numbers_7 numbers_9)
    (sum numbers_15 numbers_11 numbers_1)
    (sum numbers_15 numbers_6 numbers_5)
    (sum numbers_8 numbers_16 numbers_9)
    (sum numbers_8 numbers_7 numbers_1)
    (sum numbers_8 numbers_11 numbers_5)
    (sum numbers_8 numbers_6 numbers_3)
    (sum numbers_9 numbers_16 numbers_1)
    (sum numbers_9 numbers_7 numbers_5)
    (sum numbers_9 numbers_11 numbers_3)
    (sum numbers_9 numbers_6 numbers_0)
    (sum numbers_1 numbers_16 numbers_5)
    (sum numbers_1 numbers_7 numbers_3)
    (sum numbers_1 numbers_11 numbers_0)
    (sum numbers_1 numbers_6 numbers_12)
    (sum numbers_5 numbers_16 numbers_3)
    (sum numbers_5 numbers_7 numbers_0)
    (sum numbers_5 numbers_11 numbers_12)
    (sum numbers_5 numbers_6 numbers_14)
    (sum numbers_3 numbers_16 numbers_0)
    (sum numbers_3 numbers_7 numbers_12)
    (sum numbers_3 numbers_11 numbers_14)
    (sum numbers_3 numbers_6 numbers_10)
    (sum numbers_0 numbers_16 numbers_12)
    (sum numbers_0 numbers_7 numbers_14)
    (sum numbers_0 numbers_11 numbers_10)
    (sum numbers_0 numbers_6 numbers_4)
    (sum numbers_12 numbers_16 numbers_14)
    (sum numbers_12 numbers_7 numbers_10)
    (sum numbers_12 numbers_11 numbers_4)
    (sum numbers_14 numbers_16 numbers_10)
    (sum numbers_14 numbers_7 numbers_4)
    (sum numbers_10 numbers_16 numbers_4)
    (less-equal numbers_16 numbers_9)
    (less-equal numbers_16 numbers_4)
    (less-equal numbers_7 numbers_9)
    (less-equal numbers_7 numbers_4)
    (less-equal numbers_11 numbers_9)
    (less-equal numbers_11 numbers_4)
    (less-equal numbers_6 numbers_9)
    (less-equal numbers_6 numbers_4)
    (less-equal numbers_13 numbers_9)
    (less-equal numbers_13 numbers_4)
    (less-equal numbers_15 numbers_9)
    (less-equal numbers_15 numbers_4)
    (less-equal numbers_8 numbers_9)
    (less-equal numbers_8 numbers_4)
    (less-equal numbers_9 numbers_9)
    (less-equal numbers_9 numbers_4)
    (less-equal numbers_1 numbers_4)
    (less-equal numbers_5 numbers_4)
    (less-equal numbers_3 numbers_4)
    (less-equal numbers_0 numbers_4)
    (less-equal numbers_12 numbers_4)
    (less-equal numbers_14 numbers_4)
    (less-equal numbers_10 numbers_4)
    (less-equal numbers_4 numbers_4)
    (saved data_6 server_0)
    (saved data_2 server_1)
    (usage server_2 numbers_2)
    (usage server_0 numbers_2)
    (usage server_1 numbers_2)
)
(:goal
(and
    (saved data_3 server_1)
    (saved data_5 server_2)
    (saved data_0 server_2)
)
)

)