# weather_analysis.py

import pandas as pd

# Sample weather dataset (temperature over days)
data = {
    "Day": ["Mon", "Tue", "Wed", "Thu", "Fri"],
    "Temperature": [30, 32, 31, 29, 28]
}

df = pd.DataFrame(data)

print("Weather Data:\n", df)
print("\nAverage Temperature:", df["Temperature"].mean())
print("Max Temperature:", df["Temperature"].max())
print("Min Temperature:", df["Temperature"].min())
