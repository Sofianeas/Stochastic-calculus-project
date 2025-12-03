📈 Geometric Brownian Motion Simulation & Financial Price Forecasting
Modeling the Price Dynamics of BLOCK, INC (ARK Innovation ETF)
📘 Project Overview

This project focuses on the simulation and forecasting of financial asset prices using the Geometric Brownian Motion (GBM) model — one of the foundational stochastic processes in quantitative finance.
The analysis uses historical closing prices of BLOCK, INC, a component of the ARK Innovation ETF, covering the period 2021–2022.

The project includes:

● Exploratory data analysis of daily returns

● Statistical tests (normality, autocorrelation, Ljung–Box)

● Maximum likelihood estimation of μ (drift) and σ (volatility)

● Simulation of GBM trajectories

● Forecasting future price paths

● Comparison between real and simulated price dynamics

📂 Repository Structure
tp 1 calcul.R

Data preparation and statistical estimation:

● Importation of BLOCK, INC closing prices

● Computation of log-returns

● Autocorrelation analysis (ACF, Ljung–Box tests)

● Normality tests (Histograms, Shapiro–Wilk)

● MLE estimation of drift (μ) and volatility (σ) for:

   ● 1 year of data

   ● Last 6 months

   ● Last 4 months

TP--2.R & Tp2.txt

Simulation and forecasting components:

● Implementation of the Geometric Brownian Motion simulation function

● Generation of single and multiple GBM trajectories

● Computation of the average simulated trajectory

● Visual comparison:

   ● Real BLOCK, INC price

   ● Mean simulated trajectory

Forecasting example:

   ● Future closing price estimation (e.g., day 126)

block.inc.csv

Dataset containing the historical daily closing prices of BLOCK, INC from 2021 to 2022.

📊 Results & Insights

● The GBM model captures the general trend of BLOCK, INC price evolution.

● Simulated trajectories allow estimation of plausible future price movements.

● While simplified, the model provides useful intuition about volatility-driven price dynamics.

🚀 Technologies Used

● R (Base R functions, statistical tools)

● Time-Series Analysis

● Stochastic Process Modeling

● Financial Statistics

👤 Author

Sofiane AOUES
Master’s student in Applied Mathematics — Statistics & Probability
USTHB — Université des Sciences et de la Technologie Houari Boumediene
