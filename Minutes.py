
def convert_minutes(minutes):
    hrs = minutes // 60
    mins = minutes % 60

    if hrs == 0:
        return f"{mins} minutes"
    elif mins == 0:
        return f"{hrs} hr"
    else:
        return f"{hrs} hr {mins} minutes"
print(convert_minutes(130))
print(convert_minutes(110))