#! /bin/bash
PSQL="psql --username=freecodecamp --dbname=salon --no-align --tuples-only -c"
#pg_dump -cC --inserts -U freecodecamp salon > salon.sql
#psql -U postgres < salon.sql
echo "Welcome to My Salon, how can I help you?"
echo ""
while [[ true  ]]
do
  LIST_SERVICE="$($PSQL "select * from services")"
  for SERVICE in ${LIST_SERVICE}
  do
    ID=`echo $SERVICE| cut -d '|' -f1`
    NAME=`echo $SERVICE| cut -d '|' -f2`
    echo $ID")" $NAME
  done
  read SERVICE_ID_SELECTED
  echo ""
  SERVICE_NAME=$($PSQL "select name from services where service_id='$SERVICE_ID_SELECTED'")
  if [[ -z $SERVICE_NAME   ]]
  then
    echo "I could not find that service. What would you like today?"
    continue
  else
    break
  fi
done
echo "What's your phone number?"
read CUSTOMER_PHONE
QUERRY=$($PSQL "select * from customers where phone='$CUSTOMER_PHONE'")
if [[ -z $QUERRY   ]]
then
  echo "I don't have a record for that phone number, what's your name?"
  read CUSTOMER_NAME
  #INSERT TO DATABASE
   ADD_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name,phone) VALUES ('$CUSTOMER_NAME','$CUSTOMER_PHONE')")
fi
QUERRY=$($PSQL "select customer_id,name from customers where phone='$CUSTOMER_PHONE'")
CUSTOMER_NAME=`echo $QUERRY | cut -d '|' -f2`
CUSTOMER_ID=`echo $QUERRY | cut -d '|' -f1`
echo ""
echo "What time would you like your $SERVICE_NAME, $CUSTOMER_NAME?"
read  SERVICE_TIME
echo ""
echo "I have put you down for a $SERVICE_NAME at $SERVICE_TIME, $CUSTOMER_NAME."
#INSERT TO DATABASE
ADD_TIME_RESULT=$($PSQL "INSERT INTO appointments(time,service_id,customer_id) VALUES ('$SERVICE_TIME','$SERVICE_ID_SELECTED','$CUSTOMER_ID')")
exit 0
  