function parseTable(tableToParse, output) --Thanks andre111 for this one!
    
    local lineLength = 0
    local elementIndex = 1

    for i=1, #tableToParse do
        if tableToParse[i] == "O" then
            lineLength = lineLength + 1
        else
            if lineLength > 0 then
                output[elementIndex] = lineLength
                elementIndex = elementIndex + 1
            end
            lineLength = 0
        end
    end

    if elementIndex == 1 or lineLength > 0 then
        output[elementIndex] = lineLength
        elementIndex = elementIndex + 1
    end

end

function parse5x5()
    
    --Resets this table, used to mark the reference numbers as grey when you're done completing a row or column.

    completedRows = {0, 0, 0, 0, 0}
    completedColumns = {0, 0, 0, 0, 0}

    --Cleans the tables for the reference numbers.

    for i=1, 5 do
        _G["numbersrow"..i] = {0, 0, 0}
        _G["numberscolumn"..i] = {0, 0, 0}
    end
  
    --Parses the rows of the level.

    for i=1, 5 do
        parseTable(_G["irow"..i], _G["numbersrow"..i])
    end
    
    --Sets up the columns, so they can be parsed later.

    local once = true

    for i=1, 5 do

        if once == true then 
            for a=1, 5 do
                _G["icolumn"..a] = {}
            end
        end

        for c=1, 5 do
            _G["icolumn"..c][i] = _G["irow"..i][c]
        end

        once = false
    end 
    
    --Parses the columns.

    for i=1, 5 do
        parseTable(_G["icolumn"..i], _G["numberscolumn"..i])
    end

    --Checks if any rows or columns are empty, and fills those with Xs.

    checkEmptyRows(5)
    checkEmptyColumns(5)

end

function parse10x10()
    
    --Resets this table, used to mark the reference numbers as grey when you're done completing a row or column.

    completedRows = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    completedColumns = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0}

    --Cleans the tables for the reference numbers.

    for i=1, 10 do
        _G["numbersrow"..i] = {0, 0, 0, 0, 0}
        _G["numberscolumn"..i] = {0, 0, 0, 0, 0}
    end
  
    --Parses the rows of the level.

    for i=1, 10 do
        parseTable(_G["irow"..i], _G["numbersrow"..i])
    end
  
    --Sets up the columns, so they can be parsed later.

    local once = true

    for i=1, 10 do

        if once == true then 
            for a=1, 10 do
                _G["icolumn"..a]  = {}
            end
        end

        for c=1, 10 do
            _G["icolumn"..c][i]  = _G["irow"..i][c]
        end

        once = false
    end 

    --Parses the columns.

    for i=1, 10 do
        parseTable(_G["icolumn"..i], _G["numberscolumn"..i])
    end

    --Checks if any rows or columns are empty, and fills those with Xs.

    checkEmptyRows(10)
    checkEmptyColumns(10)

end

function parse15x15()

    --Resets this table, used to mark the reference numbers as grey when you're done completing a row or column.
    
    completedRows = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
    completedColumns = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}

    --Cleans the tables for the reference numbers.

    for i=1, 15 do
        _G["numbersrow"..i] = {0, 0, 0, 0, 0, 0, 0, 0}
        _G["numberscolumn"..i] = {0, 0, 0, 0, 0, 0, 0, 0}
    end
  
    --Parses the rows of the level.

    for i=1, 15 do
        parseTable(_G["irow"..i], _G["numbersrow"..i])
    end
    
    --Sets up the columns, so they can be parsed later.

    local once = true

    for i=1, 15 do

        if once == true then 
            for a=1, 15 do
                _G["icolumn"..a] = {}
            end
        end

        for c=1, 15 do
            _G["icolumn"..c][i] = _G["irow"..i][c]
        end

        once = false
    end 

    --Parses the columns.

    for i=1, 15 do
        parseTable(_G["icolumn"..i], _G["numberscolumn"..i])
    end

    --Checks if any rows or columns are empty, and fills those with Xs.
    
    checkEmptyRows(15)
    checkEmptyColumns(15)

end

function checkEmptyRows(size)

    local count = 0

    for i=1, size do

        count = 0

        for a=1, size do
            if _G["irow"..i][a] == "." then
                count = count + 1
            end
        end

        if count == size then
            for b=1, size do
                _G["row"..i][b] = "X"
            end
        end
    end

end

function checkEmptyColumns(size)

    local count = 0

    for i=1, size do

        count = 0

        for a=1, size do
            if _G["icolumn"..i][a] == "." then
                count = count + 1
            end
        end

        if count == size then
            for b=1, size do
                _G["row"..b][i] = "X"
            end
        end
    end

end