# 1 Jan 1900 was a Monday.
# Thirty days has September,
# April, June and November.
# All the rest have thirty-one,
# Saving February alone,
# Which has twenty-eight, rain or shine.
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

# (Monday) 1 Jan 1900 + 366 days + 1 day= 1 Jan 1901
# 367 mod 7 = 3
# Therefore 1 Jan 1901 = Monday + 3 = Thursday
# Repeat this on monthly basis and check if it's a Sunday

# library(lubridate)
# wday(as.Date("1900-1-1")) - 1 # Monday
# wday(as.Date("1901-1-1")) - 1 # Tuesday

library(lubridate)

print(sum(wday(ymd(ym[,1] * 10000 + ym[,2] * 100 + 1)) == 1))