(define (problem p9-3-16-small-network-12)
(:domain data-network)
(:objects
    data-0-4 data-0-7 data-0-9 data-1-1 data-1-3 data-1-6 data-1-8 data-2-2 data-2-5 - data
    script1 script2 script3 script4 script5 script6 script7 script8 script9 script10 script11 script12 script13 script14 script15 script16 - script
    server1 server2 server3 server4 - server
    number0 number1 number2 number3 number4 number5 number6 number7 number8 number9 number10 number11 number12 number13 number14 number15 number16 - numbers
)
(:init
    (SCRIPT-IO script1 data-0-7 data-0-9 data-1-8)
    (SCRIPT-IO script2 data-0-4 data-0-9 data-1-6)
    (SCRIPT-IO script3 data-0-9 data-0-4 data-1-1)
    (SCRIPT-IO script4 data-0-7 data-0-4 data-1-3)
    (SCRIPT-IO script5 data-1-3 data-0-9 data-2-5)
    (SCRIPT-IO script6 data-1-3 data-1-1 data-2-2)
    (SCRIPT-IO script7 data-1-8 data-0-7 data-2-2)
    (SCRIPT-IO script8 data-0-9 data-0-7 data-1-8)
    (SCRIPT-IO script9 data-1-6 data-1-1 data-2-2)
    (SCRIPT-IO script10 data-0-7 data-0-4 data-1-8)
    (SCRIPT-IO script11 data-1-3 data-1-1 data-2-5)
    (SCRIPT-IO script12 data-1-8 data-0-9 data-2-5)
    (SCRIPT-IO script13 data-1-8 data-1-3 data-2-2)
    (SCRIPT-IO script14 data-1-8 data-1-3 data-2-2)
    (SCRIPT-IO script15 data-1-3 data-0-9 data-2-2)
    (SCRIPT-IO script16 data-0-7 data-0-4 data-1-1)
    (CONNECTED server1 server2)
    (CONNECTED server2 server1)
    (CONNECTED server1 server3)
    (CONNECTED server3 server1)
    (CONNECTED server1 server4)
    (CONNECTED server4 server1)
    (CONNECTED server2 server3)
    (CONNECTED server3 server2)
    (DATA-SIZE data-0-4 number3)
    (DATA-SIZE data-0-7 number4)
    (DATA-SIZE data-0-9 number4)
    (DATA-SIZE data-1-1 number5)
    (DATA-SIZE data-1-3 number1)
    (DATA-SIZE data-1-6 number4)
    (DATA-SIZE data-1-8 number4)
    (DATA-SIZE data-2-2 number2)
    (DATA-SIZE data-2-5 number2)
    (CAPACITY server1 number16)
    (CAPACITY server2 number8)
    (CAPACITY server3 number8)
    (CAPACITY server4 number8)
    (SUM number0 number1 number1)
    (SUM number0 number2 number2)
    (SUM number0 number3 number3)
    (SUM number0 number4 number4)
    (SUM number0 number5 number5)
    (SUM number1 number1 number2)
    (SUM number1 number2 number3)
    (SUM number1 number3 number4)
    (SUM number1 number4 number5)
    (SUM number1 number5 number6)
    (SUM number2 number1 number3)
    (SUM number2 number2 number4)
    (SUM number2 number3 number5)
    (SUM number2 number4 number6)
    (SUM number2 number5 number7)
    (SUM number3 number1 number4)
    (SUM number3 number2 number5)
    (SUM number3 number3 number6)
    (SUM number3 number4 number7)
    (SUM number3 number5 number8)
    (SUM number4 number1 number5)
    (SUM number4 number2 number6)
    (SUM number4 number3 number7)
    (SUM number4 number4 number8)
    (SUM number4 number5 number9)
    (SUM number5 number1 number6)
    (SUM number5 number2 number7)
    (SUM number5 number3 number8)
    (SUM number5 number4 number9)
    (SUM number5 number5 number10)
    (SUM number6 number1 number7)
    (SUM number6 number2 number8)
    (SUM number6 number3 number9)
    (SUM number6 number4 number10)
    (SUM number6 number5 number11)
    (SUM number7 number1 number8)
    (SUM number7 number2 number9)
    (SUM number7 number3 number10)
    (SUM number7 number4 number11)
    (SUM number7 number5 number12)
    (SUM number8 number1 number9)
    (SUM number8 number2 number10)
    (SUM number8 number3 number11)
    (SUM number8 number4 number12)
    (SUM number8 number5 number13)
    (SUM number9 number1 number10)
    (SUM number9 number2 number11)
    (SUM number9 number3 number12)
    (SUM number9 number4 number13)
    (SUM number9 number5 number14)
    (SUM number10 number1 number11)
    (SUM number10 number2 number12)
    (SUM number10 number3 number13)
    (SUM number10 number4 number14)
    (SUM number10 number5 number15)
    (SUM number11 number1 number12)
    (SUM number11 number2 number13)
    (SUM number11 number3 number14)
    (SUM number11 number4 number15)
    (SUM number11 number5 number16)
    (SUM number12 number1 number13)
    (SUM number12 number2 number14)
    (SUM number12 number3 number15)
    (SUM number12 number4 number16)
    (SUM number13 number1 number14)
    (SUM number13 number2 number15)
    (SUM number13 number3 number16)
    (SUM number14 number1 number15)
    (SUM number14 number2 number16)
    (SUM number15 number1 number16)
    (LESS-EQUAL number1 number8)
    (LESS-EQUAL number1 number16)
    (LESS-EQUAL number2 number8)
    (LESS-EQUAL number2 number16)
    (LESS-EQUAL number3 number8)
    (LESS-EQUAL number3 number16)
    (LESS-EQUAL number4 number8)
    (LESS-EQUAL number4 number16)
    (LESS-EQUAL number5 number8)
    (LESS-EQUAL number5 number16)
    (LESS-EQUAL number6 number8)
    (LESS-EQUAL number6 number16)
    (LESS-EQUAL number7 number8)
    (LESS-EQUAL number7 number16)
    (LESS-EQUAL number8 number8)
    (LESS-EQUAL number8 number16)
    (LESS-EQUAL number9 number16)
    (LESS-EQUAL number10 number16)
    (LESS-EQUAL number11 number16)
    (LESS-EQUAL number12 number16)
    (LESS-EQUAL number13 number16)
    (LESS-EQUAL number14 number16)
    (LESS-EQUAL number15 number16)
    (LESS-EQUAL number16 number16)
    (saved data-0-4 server3)
    (saved data-0-7 server4)
    (saved data-0-9 server2)
    (usage server1 number0)
    (usage server2 number0)
    (usage server3 number0)
    (usage server4 number0)
)
(:goal
(and
    (saved data-2-2 server3)
    (saved data-2-5 server1)
)
)

)