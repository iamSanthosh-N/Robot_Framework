*** Test Cases ***
ForLoop1
    : FOR   ${i}    IN RANGE    1   10
    \   log to console  ${i}

ForLoop2
    : FOR   ${i}    IN  1 2 3 4 5 6 7 8
    \   log to console  ${i}

#NOTE: Single space between number will print in the same line and tab space will print in next line

ForLoopWithList
    @{item}  create list  1  2   3   4   5  #this will create a list in the variable name @{item}
    : FOR   ${i}    IN  @{item}
    \   log to console  ${i}

ForLoop4
    : FOR   ${i}    IN  john    david   smith   scott
    \   log to console  ${i}

ForLoop5
    @{names}    create list  john    david   smith   scott
    : FOR   ${i}    IN  @{names}
    \   log to console  ${i}

ForLoopWithExit
    @{item}  create list  1  2  3   4   5
    : FOR   ${i}    IN  @{item}
    \   log to console  ${i}
    \   exit for loop if  ${i}==3
