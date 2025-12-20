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

# Key Variables
🌡️ # TX — Daily Maximum Temperature (Core Variable)
Definition: highest temperature recorded each day
Unit: °C × 10 (e.g. TX = 354 → 35.4 °C)
Why important: defines the worst daily thermal stress on humans

❄️ # TN — Daily Minimum Temperature
Nighttime minimum temperature
High TN prevents nighttime recovery
TX + TN together characterize heat waves

🌍 # LAT, LON, ALTI
Geographic position and altitude
Altitude strongly affects temperature extremes
Must be controlled for bias and spatial heterogeneity
