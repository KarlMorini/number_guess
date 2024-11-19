#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

echo "Enter your username:"
read USERNAME

VALIDATE_USER=$($PSQL "select user_id from users where name = '$USERNAME';")

if [[ -z $VALIDATE_USER ]]; then
  echo "Welcome, $USERNAME! It looks like this is your first time here."

  INSERT_INTO_USERS=$($PSQL "insert into users(name) values('$USERNAME');")
else
  GET_USER=$($PSQL "select name from users where user_id = $VALIDATE_USER;")  
  GAMES=$($PSQL "select count(game_id) from games where user_id = $VALIDATE_USER;")
  BEST=$($PSQL "select min(guess_count) from games where user_id = $VALIDATE_USER;")

  echo "Welcome back, $GET_USER! You have played $GAMES games, and your best game took $BEST guesses."
fi

GET_USER_ID=$($PSQL "select user_id from users where name = '$USERNAME';")  

CORRECT_RANDOM_GUESS=$(( $RANDOM % 1000 + 1 ))
GUESS_COUNT=0

echo "Guess the secret number between 1 and 1000:"
until [[ $NUMBER_GUESSED == $CORRECT_RANDOM_GUESS ]]; do
  read NUMBER_GUESSED
  (( GUESS_COUNT++ ))

  if [[ ! $NUMBER_GUESSED =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
  else
      if [[ $NUMBER_GUESSED -gt $CORRECT_RANDOM_GUESS ]]; then
        echo "It's lower than that, guess again:"
      elif [[ $NUMBER_GUESSED -lt $CORRECT_RANDOM_GUESS ]]; then
        echo "It's higher than that, guess again:"
      fi
  fi
done

INSERT_GAME_NAME=$($PSQL "insert into games(user_id, guess_count) values($GET_USER_ID, $GUESS_COUNT);")
echo "You guessed it in $GUESS_COUNT tries. The secret number was $CORRECT_RANDOM_GUESS. Nice job!"