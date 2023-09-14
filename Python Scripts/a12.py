year = 2000
leap_years_found = 0

while leap_years_found < 10:
    if (year % 4 == 0 and year % 100 != 0) or (year % 400 == 0):
        print(year)
        leap_years_found += 1
    year += 1
