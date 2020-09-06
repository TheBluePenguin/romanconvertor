#converts Roman numerals into arabic numbers
def fromRoman(romanNumber)
    arabicNumber = 0 #The arabic number starts at 0 and will count up later
    until romanNumber.empty? do
        case
        when romanNumber.start_with?("M")  then addition = 1000; len = 1
        when romanNumber.start_with?("CM") then addition = 900;  len = 2
        when romanNumber.start_with?("D")  then addition = 500;  len = 1
        when romanNumber.start_with?("CD") then addition = 400;  len = 2
        when romanNumber.start_with?("C")  then addition = 100;  len = 1
        when romanNumber.start_with?("XC") then addition = 90;   len = 2
        when romanNumber.start_with?("L")  then addition = 50;   len = 1
        when romanNumber.start_with?("XL") then addition = 40;   len = 2
        when romanNumber.start_with?("X")  then addition = 10;   len = 1
        when romanNumber.start_with?("IX") then addition = 9;    len = 2
        when romanNumber.start_with?("V")  then addition = 5;    len = 1
        when romanNumber.start_with?("IV") then addition = 4;    len = 2
        when romanNumber.start_with?("I")  then addition = 1;    len = 1
        else
            #The above cases make ensures only Roman Numerals are used
            raise TypeError
        end
        #arabicNumber adds from case was removes the letters from romanNumber
        arabicNumber += addition
        romanNumber.slice!(0,len)
    end
    #We now return the final arabicNumber after all the cases are completed
    return arabicNumber
end

#converts arabic numbers into roman numerals

def toRoman(arabicNumber)
    if arabicNumber > 3999 || arabicNumber < 1
        raise RangeError
    end
    #Should recursively subtract from arabicNumber and build up a Roman Numeral
    #Once the base case == 0 it would return the final Roman Numeral. I cant figure out how to do that without ruining the Range Error
end

def Romanmapping
    {
        1000 => "M",
        900 => "CM",
        500 => "D",
        400 => "CD",
        100 => "C",
        90 => "XC",
        50 => "L",
        40 => "XL",
        10 => "X",
        9 => "IX",
        5 => "V",
        4 => "IV",
        1 => "I"
    }
end