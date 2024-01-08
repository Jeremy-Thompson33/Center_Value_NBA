# Center_Value_NBA
Analyzing where centers should be drafted in the NBA draft to maximize value.

# Ask
1. Are centers in the NBA even valuable in winning games?
2. How do centers drafted in the top 15 picks of the draft compare with the rest of the centers drafted?

# Prepare
- Downloaded Modern RAPTOR by Player Data --> https://github.com/fivethirtyeight/data/blob/master/nba-raptor/modern_RAPTOR_by_player.csv
- Filtered Modern RAPTOR by Player Data to only include players from the 2022 season --> modern_RAPTOR_by_player_2022.csv
- Downloaded 2023 Player Stats Data (includes position of players which the previous dataset did not include) --> 2023-NBA-Player-Stats-Dashboard/2023_nba_player_stats.csv at main · v00d0079/2023-NBA-Player-Stats-Dashboard · GitHub
- Uploaded data into MySQL

# Process
- Joined tables and cleaned null values in MySQL --> Cleaning_raptor_with_positions.sql

# Analyze 1
- Ran SQL queries in raptor_with_positions.csv to determine if centers are valuable in the NBA --> Analyzing_RAPTOR_and_WAR_data.sql
- I used two metrics to measure value; RAPTOR and WAR. RAPTOR is a metric created by FiveThirtyEight to measure a player's impact on both offense and defense. WAR stands for 'Wins Above Replacement,' which measures how many wins the player would add to a team.
### Findings
  - Centers have a higher average WAR and RAPTOR than guards and forwards. This suggests that centers are just as valuable or more valuable than other positions in the NBA. This is true even when you remove the two best centers in the league in terms of these metrics.

# Analyze 2
- Ran SQL queries in a new table centers_raptor_and_draft_data.csv to investigate how early a center should be drafted --> Working_with_RAPTOR_Draft_Positions.sql
### Findings
- Picks in the second round of the draft (30-60) have a lower average RAPTOR and WAR than the first round picks, as expected.
- The average RAPTOR for picks 1-15 is less than the average RAPTOR for picks 16-30 by about 0.1. The average WAR for picks 1-15 is greater than the average WAR for picks 16-30 by about 0.9.
- There is not a large gap for RAPTOR between picks 1-15 and 16-30. There is a larger gap for average WAR between picks 1-15 and 16-30.
- Higher picks may have slightly better value, but there is not a tremendous drop off in the second half of the first round picks.

# Visual
- RAPTOR_and_WAR_by_Draft_Position_viz.png
- Peak at 41 is due to Nikola Jokic, who won MVP in the 2022-23 season
### RAPTOR
- RAPTOR from picks 9-15 are all positive, suggesting valuable centers can be chosen in that range.
- Picks 22-28 are also positive.
- Of the top 3 picks the number 3 overall pick seems to have the best value for centers.
### WAR
- Similar curve to RAPTOR.
- Worst value in the top 15 picks appears to be from 4-8

# Conclusion
- Centers do play a valuable role in winning games in the NBA.
- Centers drafted in the top 15 picks tend to be better than later picks, but picks 15-30 can still be valuable players.
- In the top 15 picks, the ideal places to pick centers appear to be top 3 or 12-14.
- Drafting a center in the top 15 picks can be risky, which is why waiting till the late first round is often the best option for NBA teams.
- There will always be hidden gems in the second round, like Nikola Jokic as the 41st pick.
