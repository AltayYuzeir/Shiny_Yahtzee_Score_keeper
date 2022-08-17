<img src="www/YuHtzee-logo.png" align="right" width=120 height=139 alt="" />

# YuHtzee - Yahtzee Score Keeper app
If you suddenly had an immense urge to play Yahtzee, but you realized you do not have anymore score cards, then YuHtzee is just the app for you.\
YuHtzee replaces all the pens and paper score cards with an easy-to-use Scoring dashboard. YuHtzee can replace paper scoring cards for 1-10 people.\
YuHtzee does not perform any calculations by itself, rather it helps you to organize the Yahtzee scores after each game.\

<img src="user_interface-upper.png" align="center" width=100% height=400 alt="" />
<img src="user_interface-lower.png" align="center" width=100% height=400 alt="" />

# Setup
Option 1: Hosted locally 
1. Download all provided files.
2. Download and install the [shinyShortcut](https://cran.r-project.org/web/packages/shinyShortcut/README.html) package and follow the instructions. 
3. Run the _shinyShortcut_ command. You will get a standalone .VBS executable file which can be executed without R or RStudio being open.

Option 2: Hosted online, e.g. shinyapps.io (Recommended)
1. Download all files and create an account in shinyapps.io and follow their instructions furter.
2. YuHtzee is great to be hosted online, as it needs no persistent data storage to function, as you just note down results.
3. It is recommended to increase _Application -> Instance Idle Timeout_ at the shinyapps.io admin dashboard to something like 60 min, so your application does not close itself too soon. **If the application disconnects, all entered results will be wiped out and lost !!!**
