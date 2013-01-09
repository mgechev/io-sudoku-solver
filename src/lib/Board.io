Board := Object clone
 
Board board ::= nil
 
Board show := method(
    board foreach(row,
        row foreach(cell,
            cell print
            " " print
        )
        "\n" print
    )
)
 
Board get := method(row, col,
    board at(row) at(col)
)
 
Board set := method(row, col, value,
    board at(row) atPut(col, value)
)
 
Board size := method(
    return(board size)
)
 
Board readFromFile := method(filename,
    board := List clone
    file := File with(filename)
    file openForReading
    lines := file readLines
    file close
    lines foreach(l,
        temp := List clone
        nums := l split(",")
        nums foreach(num,
            num = num asNumber
            temp append(num)
        )
        board append(temp)
    )
    setBoard(board)
)

