# Extreme-Temperature-Analysis
Write<b> By Mohammad Reza Nilchiyan</b>

Predicting Dangerous Heat Conditions in France
The project focuses on extreme temperature behavior rather than averages, using surface station data from Météo-France. 
Wet-bulb temperature is derived from temperature and humidity variables. 
Extreme value statistics and machine learning models are used to assess regional vulnerability and future trends.


# Project Overview
When Do Temperatures Become Dangerous for Humans in France?
What is this project trying to answer?
This project investigates when, where, and how often temperatures in France reach dangerous or potentially unlivable levels for humans, now and in the future.
Instead of focusing on average temperatures, the project specifically targets extreme heat events, which are the true drivers of:
heat-related mortality
hospital overload
crop failure
power and infrastructure shutdowns
The goal is to build an early-warning style predictor based on observed climate extremes.

## Core Research Questions ❓
 - When do temperatures become dangerous for human survival?
 - How often do extreme heat events occur today?
 - How intense are these events, and are they becoming more frequent?
 - What is the probability of rare but catastrophic heat events (e.g. a “20-year heat event”)?

# Why Not Use Average Temperature?
*Average temperature* is a poor indicator of human risk.
- Mean temperature smooths out dangerous events  ❌ 
- Extreme temperature captures lethal conditions ✅
  
Deaths, crop loss, infrastructure failures, and blackouts occur during rare extremes, not during “average” days.
Therefore, this project focuses on the tails of the temperature distribution, not its center.

# What Data Is Used?
Why Surface Station Data?
Humans live at the surface, not in the upper atmosphere.
This project uses surface meteorological station data measured at ~2 meters height, which is the standard for human-relevant climate impact studies.

# Dataset
Données climatologiques de base – quotidiennes (Météo-France)
Daily, quality-controlled surface observations from meteorological stations across metropolitan France and overseas territories.
Key characteristics
-Temporal resolution: daily
-Spatial resolution: station-based
-Time span: typically 1980 → 2023
-Data quality: validated and flagged by Météo-France

*Main source:*
Données climatologiques de base – quotidiennes (data.gouv.fr)
[Visit Météo-France website](https://donneespubliques.meteofrance.fr) and 

[Visit Météo-France website](https://www.data.gouv.fr/datasets/donnees-climatologiques-de-base-quotidiennes-stations-complementaires?utm_source=chatgpt.com) 
search for :quot_departement_75

Search terms on data.gouv.fr:
 données climatologiques de base quotidiennes: quot_departement_XX
Temperature: Q descriptif_champs_RR-T-Vent.csv
Humidity: Q descriptif_champs_RR-T-Vent.cs
XX =
1. Paris → 75 : quot_departement_75
2. Lyon → 69:  quot_departement_69
3. Bordeaux → 33: quot_departement_33
4. Marseille → 13: quot_departement_13

# Key Variables
🌡️ **TX** — Daily Maximum Temperature (Core Variable)

- Definition: highest temperature recorded each day

- Unit: °C × 10 (e.g. TX = 354 → 35.4 °C)

Why important: defines the worst daily thermal stress on humans


❄️ **TN** — Daily Minimum Temperature

- Nighttime minimum temperature

- High TN prevents nighttime recovery

- TX + TN together characterize heat waves
  

🌍 **LAT, LON, ALTI**

- Geographic position and altitude

- Altitude strongly affects temperature extremes

- Must be controlled for bias and spatial heterogeneity

# What Data Is Actually Extracted?

From the Météo-France catalogue, the project uses:

- Daily surface observations
  
- Station-based data
  
Variables:
TX (daily max temperature)
TN (daily min temperature)
Humidity or dew point
Date, station ID, location, altitude
Stations are aggregated into regions (NW, NE, SW, SE France).



## Why Wet-Bulb Temperature?
# What is Wet-Bulb Temperature (Tw)?
Wet-bulb temperature combines:

- air temperature

- humidity (or dew point)

It measures how effectively the human body can cool itself through sweating.

*Why is it critical?*

At high humidity, sweat does not evaporate efficiently.
When Tw ≈ 35 °C, the human body can no longer regulate its temperature.

📌 At this threshold:
even healthy people
in the shade
with water
without physical activity
can die within a few hours.
This is a physiological limit, not a theoretical model.

# Important

Wet-bulb temperature is not directly measured
It is computed from temperature and humidity variables

--> This demonstrates both data processing skills and domain knowledge

# What Does “Extreme Value Analysis” Mean Here?

This project analyzes rare but dangerous events, not typical days.

*Intuition (no math)*
Imagine all daily temperatures in a year:

- Most days are safe and moderate

- A few days are extremely hot

Those rare days lie in the right tail of the distribution.
This is where:

- heat stroke

- wet-bulb threshold exceedance

- infrastructure failure
actually occur.
