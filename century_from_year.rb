# The first century spans from the year 1 up to and including the year 100, the second - from the year 101 up to and including the year 200, etc.
# Given a year, return the century it is in.

def centuryFromYear(year)
  century = year / 100
  century += 1 if year % 100 != 0
  century
end


puts centuryFromYear(1705) 
puts centuryFromYear(1900) 
puts centuryFromYear(1601) 
puts centuryFromYear(2000)
