#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
#!/bin/bash
# Script to insert data from courses.csv and students.csv into students database
#thuannv
echo $($PSQL "truncate games,teams")
cat games.csv | while  IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOAL OPPONENT_GOAL
do 
  if [[ $OPPONENT != 'opponent' ]]
  then
    TEAM_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")
    #if not found
    if [[ -z $TEAM_ID ]]
    then
      INSERT_TEAM_RESULT=$($PSQL "Insert into teams(name) values('$OPPONENT')")
      if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
      then
        echo "Inserted into teams, $OPPONENT"
      fi
    fi

    TEAM_ID=$($PSQL "select team_id from teams where name='$WINNER'")
    #if not found
    if [[ -z $TEAM_ID ]]
    then
      INSERT_TEAM_RESULT=$($PSQL "Insert into teams(name) values('$WINNER')")
      if [[ $INSERT_TEAM_RESULT == "INSERT 0 1" ]]
      then
        echo "Inserted into teams, $WINNER"
      fi
    fi
    WINNER_ID=$($PSQL "select team_id from teams where name='$WINNER'")
    OPPONENT_ID=$($PSQL "select team_id from teams where name='$OPPONENT'")
    INSERT_GAMES_RESULT=$($PSQL "Insert into games(year,round,winner_id,opponent_id,winner_goals,opponent_goals) values($YEAR,'$ROUND',$WINNER_ID,$OPPONENT_ID,$WINNER_GOAL,$OPPONENT_GOAL)")
    if [[ $INSERT_GAMES_RESULT == "INSERT 0 1" ]]
      then
        echo "Inserted into games, $WINNER_ID-$OPPONENT_ID:$WINNER_GOAL-$OPPONENT_GOAL"
      fi
  fi
done