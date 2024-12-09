(define (problem p7-3-15-small-network-10)
(:domain data-network)
(:objects
    data_2 data_5 data_1 data_0 data_4 data_3 data_6 - data
    script_6 script_3 script_10 script_4 script_2 script_5 script_7 script_13 script_9 script_8 script_1 script_12 script_11 script_14 script_0 - script
    server_3 server_1 server_2 server_0 - server
    numbers_16 numbers_3 numbers_4 numbers_6 numbers_7 numbers_1 numbers_15 numbers_13 numbers_5 numbers_9 numbers_0 numbers_12 numbers_11 numbers_14 numbers_2 numbers_10 numbers_8 - numbers
)
(:init
    (script-io script_6 data_1 data_2 data_3)
    (script-io script_3 data_5 data_1 data_0)
    (script-io script_10 data_5 data_2 data_4)
    (script-io script_4 data_3 data_5 data_6)
    (script-io script_2 data_3 data_2 data_6)
    (script-io script_5 data_2 data_1 data_4)
    (script-io script_7 data_2 data_1 data_3)
    (script-io script_13 data_4 data_0 data_6)
    (script-io script_9 data_0 data_1 data_6)
    (script-io script_8 data_2 data_1 data_4)
    (script-io script_1 data_1 data_5 data_0)
    (script-io script_12 data_4 data_0 data_6)
    (script-io script_11 data_5 data_2 data_4)
    (script-io script_14 data_2 data_5 data_0)
    (script-io script_0 data_1 data_2 data_3)
    (connected server_3 server_1)
    (connected server_1 server_3)
    (connected server_3 server_2)
    (connected server_2 server_3)
    (connected server_3 server_0)
    (connected server_0 server_3)
    (connected server_1 server_2)
    (connected server_2 server_1)
    (data-size data_2 numbers_1)
    (data-size data_5 numbers_4)
    (data-size data_1 numbers_4)
    (data-size data_0 numbers_7)
    (data-size data_4 numbers_4)
    (data-size data_3 numbers_1)
    (data-size data_6 numbers_3)
    (capacity server_3 numbers_8)
    (capacity server_1 numbers_5)
    (capacity server_2 numbers_5)
    (capacity server_0 numbers_5)
    (sum numbers_16 numbers_3 numbers_3)
    (sum numbers_16 numbers_4 numbers_4)
    (sum numbers_16 numbers_7 numbers_7)
    (sum numbers_16 numbers_1 numbers_1)
    (sum numbers_3 numbers_3 numbers_4)
    (sum numbers_3 numbers_4 numbers_6)
    (sum numbers_3 numbers_7 numbers_1)
    (sum numbers_3 numbers_1 numbers_15)
    (sum numbers_4 numbers_3 numbers_6)
    (sum numbers_4 numbers_4 numbers_7)
    (sum numbers_4 numbers_7 numbers_15)
    (sum numbers_4 numbers_1 numbers_13)
    (sum numbers_6 numbers_3 numbers_7)
    (sum numbers_6 numbers_4 numbers_1)
    (sum numbers_6 numbers_7 numbers_13)
    (sum numbers_6 numbers_1 numbers_5)
    (sum numbers_7 numbers_3 numbers_1)
    (sum numbers_7 numbers_4 numbers_15)
    (sum numbers_7 numbers_7 numbers_5)
    (sum numbers_7 numbers_1 numbers_9)
    (sum numbers_1 numbers_3 numbers_15)
    (sum numbers_1 numbers_4 numbers_13)
    (sum numbers_1 numbers_7 numbers_9)
    (sum numbers_1 numbers_1 numbers_0)
    (sum numbers_15 numbers_3 numbers_13)
    (sum numbers_15 numbers_4 numbers_5)
    (sum numbers_15 numbers_7 numbers_0)
    (sum numbers_15 numbers_1 numbers_12)
    (sum numbers_13 numbers_3 numbers_5)
    (sum numbers_13 numbers_4 numbers_9)
    (sum numbers_13 numbers_7 numbers_12)
    (sum numbers_13 numbers_1 numbers_11)
    (sum numbers_5 numbers_3 numbers_9)
    (sum numbers_5 numbers_4 numbers_0)
    (sum numbers_5 numbers_7 numbers_11)
    (sum numbers_5 numbers_1 numbers_14)
    (sum numbers_9 numbers_3 numbers_0)
    (sum numbers_9 numbers_4 numbers_12)
    (sum numbers_9 numbers_7 numbers_14)
    (sum numbers_9 numbers_1 numbers_2)
    (sum numbers_0 numbers_3 numbers_12)
    (sum numbers_0 numbers_4 numbers_11)
    (sum numbers_0 numbers_7 numbers_2)
    (sum numbers_0 numbers_1 numbers_10)
    (sum numbers_12 numbers_3 numbers_11)
    (sum numbers_12 numbers_4 numbers_14)
    (sum numbers_12 numbers_7 numbers_10)
    (sum numbers_12 numbers_1 numbers_8)
    (sum numbers_11 numbers_3 numbers_14)
    (sum numbers_11 numbers_4 numbers_2)
    (sum numbers_11 numbers_7 numbers_8)
    (sum numbers_14 numbers_3 numbers_2)
    (sum numbers_14 numbers_4 numbers_10)
    (sum numbers_2 numbers_3 numbers_10)
    (sum numbers_2 numbers_4 numbers_8)
    (sum numbers_10 numbers_3 numbers_8)
    (less-equal numbers_3 numbers_5)
    (less-equal numbers_3 numbers_8)
    (less-equal numbers_4 numbers_5)
    (less-equal numbers_4 numbers_8)
    (less-equal numbers_6 numbers_5)
    (less-equal numbers_6 numbers_8)
    (less-equal numbers_7 numbers_5)
    (less-equal numbers_7 numbers_8)
    (less-equal numbers_1 numbers_5)
    (less-equal numbers_1 numbers_8)
    (less-equal numbers_15 numbers_5)
    (less-equal numbers_15 numbers_8)
    (less-equal numbers_13 numbers_5)
    (less-equal numbers_13 numbers_8)
    (less-equal numbers_5 numbers_5)
    (less-equal numbers_5 numbers_8)
    (less-equal numbers_9 numbers_8)
    (less-equal numbers_0 numbers_8)
    (less-equal numbers_12 numbers_8)
    (less-equal numbers_11 numbers_8)
    (less-equal numbers_14 numbers_8)
    (less-equal numbers_2 numbers_8)
    (less-equal numbers_10 numbers_8)
    (less-equal numbers_8 numbers_8)
    (saved data_2 server_3)
    (saved data_5 server_0)
    (saved data_1 server_2)
    (usage server_3 numbers_16)
    (usage server_1 numbers_16)
    (usage server_2 numbers_16)
    (usage server_0 numbers_16)
)
(:goal
(and
    (saved data_6 server_1)
)
)

)