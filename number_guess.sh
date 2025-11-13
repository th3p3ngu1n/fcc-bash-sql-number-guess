#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess --tuples-only -c"

MIN=1
MAX=1000
NUMBER_OF_GUESSES=0

USER_OK=0

while [[ $USER_OK == 0 ]]
do
  echo -e "Enter your username:"
  read USERNAME
  if [[ ${#USERNAME} -gt 22 ]]
  then
    echo "Too long -- 22 characters max"
  else
    USER_OK=1
  fi
done

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
if [[ -z $USER_ID ]]
then
  echo -e "Welcome, $USERNAME! It looks like this is your first time here."
  INSERT_USER_RESULT=$($PSQL "INSERT INTO users (username) VALUES ('$USERNAME')")
  USER_ID=$($PSQL "SELECT user_id FROM users WHERE username = '$USERNAME'")
else
  USER_DETAILS=$($PSQL "SELECT g.user_id, COUNT(*) AS games_played, MIN(number_of_guesses) AS best_game FROM guesses AS g JOIN users AS u ON g.user_id = u.user_id WHERE u.username = '$USERNAME' GROUP BY g.user_id")
  if [[ -z $USER_DETAILS ]]
  then
    echo "No games played"
  else
    echo "$USER_DETAILS" | while IFS='|' read -r USER_ID GAMES_PLAYED BEST_GAME
    do
      echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
    done
  fi
fi

SECRET_NUMBER=$[$RANDOM % $MAX + $MIN]
GUESSED_NUMBER=0

while [[ $GUESSED_NUMBER != $SECRET_NUMBER ]]
do
  echo -e "Guess the secret number between 1 and 1000:"
  read GUESSED_NUMBER
  if [[ ! $GUESSED_NUMBER =~ ^[0-9]+$ ]]
  then
    echo -e "That is not an integer, guess again:"
  else
    ((NUMBER_OF_GUESSES++))
    if [[ $GUESSED_NUMBER < $SECRET_NUMBER ]]
    then
      echo -e "It's higher than that, guess again:"
    elif [[ $GUESSED_NUMBER > $SECRET_NUMBER ]]
    then
      echo -e "It's lower than that, guess again:"
    fi
  fi
done

echo -e "You guessed it in $NUMBER_OF_GUESSES tries. The secret number was $SECRET_NUMBER. Nice job!"
GUESS_DETAILS=$($PSQL "INSERT INTO guesses (user_id,secret_number,number_of_guesses) VALUES ($USER_ID,$SECRET_NUMBER,$NUMBER_OF_GUESSES)")
