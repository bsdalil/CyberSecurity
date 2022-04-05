# CyberSecurity
Coursework for CyberSecurity Bootcamp
## A High Stakes Investigation

In this activity, I played the role of a security analyst hired by Luck Duck Casino (LDC).
The LDC suffered significant losses at their Roulette tables during the week of March 10th, these losses on occurring March 10th, 12th, and 15th.
I was hired in order to investigate the over $1 million worth of losses that occurred. 
The manager believes that a dealer and a player are colluding to steal money from the casino.
For this investigation, I was given access to a large database with data on the dealer's schedule, player analysis, and recorded wins and losses.
Using this data I was able to ascertain the guilty parties of this investigation.


### Prep Work

I started the investigation by setting up my directories and notes in order to organize and keep track of all the information and aspects of the investigation.

#### mkdir ...
##### Lucky_Duck_Investigation/
##### Lucky_Duck_Investigation/Roulette_Loss_Investigations/
##### Lucky_Duck_Investigation/Roulette_Loss_Investigations/Player_Analysis
##### Lucky_Duck_Investigation/Roulette_Loss_Investigations/Dealer_Analysis
##### Lucky_Duck_Investigation/Roulette_Loss_Investigations/Player_Dealer_Correlation



#### touch ...
##### Lucky_Duck_Investigation/Roulette_Loss_Investigations/Player_Analysis/Notes_Player_Analysis
##### Lucky_Duck_Investigation/Roulette_Loss_Investigations/Dealer_Analysis/Notes_Dealer_Analysis
##### Lucky_Duck_Investigation/Roulette_Loss_Investigations/Player_Dealer_Correlation/Notes_Player_Dealer_Analysis



After setting up my directories I moved on to downloading the files necessary for conducting the investigation.

wget "https://tinyurl.com/3-HW-setup-evidence" && chmod +x ./3-HW-setup-evidence && ./3-HW-setup-evidence

Executing the above command added these subdirectories to my current directory:

Dealer_Schedules_0310
Roulette_Player_Winloss_3010

The Dealer_Schedules_0310 directory contained the schedules of all Black Jack, Texas Hold'em, and Roulette Dealers who worked during the week of March 10th. From this directory, I moved the schedules for the days of March 10th, 12th, and 15th to the Dealer_Analysis directory. I did this because these were the days the losses occurred.

#### mv ...
##### ~/Documents/Dealer_Schedules_0310/0310_Dealer_Scehdule ~/Documents/Lucky_Duck_Investigations/Dealer_Analysis
##### ~/Documents/Dealer_Schedules_0310/0312_Dealer_Scehdule ~/Documents/Lucky_Duck_Investigations/Dealer_Analysis
##### ~/Documents/Dealer_Schedules_0310/0315_Dealer_Scehdule ~/Documents/Lucky_Duck_Investigations/Dealer_Analysis



The Roulette_Player_Winloss_0310 directory contained the hourly amount of money the casino won/lost to players and the names of players that gambled at the casino during the week of March 10th. From this directory, I moved the schedules for the days of March 10th, 12th, and 15th to the Player_Analysis directory. I did this for the same reason stated above.



#### mv ...
##### ~/Documents/Roulette_Player_Winloss_0310/0310_win_loss_player_data ~/Documents/Lucky_Duck_Investigations/Player_Analysis
##### ~/Documents/Roulette_Player_Winloss_0310/0312_win_loss_player_data ~/Documents/Lucky_Duck_Investigations/Player_Analysis
##### ~/Documents/Roulette_Player_Winloss_0310/0315_win_loss_player_data ~/Documents/Lucky_Duck_Investigations/Player_Analysis


### Correlating the Evidence

Now that all the prep work has been completed, I can start looking through the data.
I started in the Player_Analysis directory because I wanted to record what losses occurred at which hours.
I was able to do so with the following commands:


#### grep -E -H "-" ...
##### 0310_win_loss_player_data
##### 0312_win_loss_player_data
##### 0315_win_loss_player_data


I appended the output of these commands into the Notes_Player_Analysis. 
(CyberSecurity/Linux/Player_Dealer_Correlation/Notes_Player_Analysis)

Using grep I was able to isolate the 13 different hours of when the losses occurred and which players were at the casino at those times. 
Among the names listed one name was included at every hour a loss occurred, that name being Mylie Schmidt.
I recorded how many times Mylie Schmidt's name was found and moved on to look for the dealer that was working the roulette table at the time of the losses.

I changed the directory to the Dealer_Analysis directory and wrote some scripts to sift out the dealer information I needed for the investigation.
You can find the scipts I created here:

CyberSecurity/Linux/Player_Dealer_Correlation/0310_Roulette_Dealer_Finder.sh
CyberSecurity/Linux/Player_Dealer_Correlation/0312_Roulette_Dealer_Finder.sh
CyberSecurity/Linux/Player_Dealer_Correlation/0315_Roulette_Dealer_Finder.sh

These scripts allowed me to isolate the first and last names of the dealers working the roulette table. I was also able to isolate the times and the AM/PM of when these dealers were working. 
I appended the output of these scripts to dealers_working_during_losses.txt and began analyzing.
(CyberSecurity/Linux/Player_Dealer_Correlation/Dealers_working_during_losses)

When comparing the specific times the losses occurred to the dealers working at those times a single name pops up, Billy Jones. 
Billy Jones' appeared every time a loss occurred totaling 13 times.
I recorded my findings in Notes_Dealer_Analysis and changed my directory to the Player_Dealer_Correlation directory to write down my final thoughts on the investigation. 
You can find those thoughts here:

CyberSecurity/Linux/Player_Dealer_Correlation/Notes_Player_Dealer_Analysis

### Scripting Future Tasks

After completing my investigation, LDC asked me to build a script that will let them analyze future employees' schedules. 
And in the case of similar losses in the future, let them to easily isolate which employees are working at a specific time.

You can find the script I wrote and the instructions on how to use it here:

CyberSecurity/Linux/Player_Dealer_Correlation/Roulette_Dealer_Finder_by_Time.sh
CyberSecurity/Linux/Player_Dealer_Correlation/instructions_for_using_roulette_dealer_finder_by_time

