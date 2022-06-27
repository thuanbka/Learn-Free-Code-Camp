#!/bin/bash
#pg_dump -cC --inserts -U freecodecamp periodic_table > periodic_table.sql
#psql -U postgres < periodic_table.sql
if [ $# -ne 1 ]
  then
    echo "Please provide an element as an argument."
    exit 0
fi

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
re='^[0-9]+$'
 if [[ ! $1 =~ $re   ]]
 then
    TEXT=$1
    QUERY=$($PSQL "SELECT elements.atomic_number,symbol,name,atomic_mass,melting_point_celsius,boiling_point_celsius,type FROM elements inner join properties on elements.atomic_number = properties.atomic_number inner join types on types.type_id = properties.type_id WHERE symbol = '$TEXT' or name = '$TEXT'")
    # echo $QUERY
    if [[ -z $QUERY   ]]
    then
      echo "I could not find that element in the database."
    else
      ATOMIC_NUMBER=`echo $QUERY | cut -d '|' -f1`
      TYPE=`echo $QUERY | cut -d '|' -f7`
      NAME=`echo $QUERY | cut -d '|' -f3`
      SYMBOL=`echo $QUERY | cut -d '|' -f2`
      MASS=`echo $QUERY | cut -d '|' -f4`
      MELTING=`echo $QUERY | cut -d '|' -f5`
      BOILING=`echo $QUERY | cut -d '|' -f6`
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    fi
 else
    NUMBER=$1
    QUERY=$($PSQL "SELECT elements.atomic_number,symbol,name,atomic_mass,melting_point_celsius,boiling_point_celsius,type FROM elements inner join properties on elements.atomic_number = properties.atomic_number inner join types on types.type_id = properties.type_id WHERE elements.atomic_number=$NUMBER")
    if [[ -z $QUERY   ]]
    then
      echo "I could not find that element in the database."
    else
      ATOMIC_NUMBER=`echo $QUERY | cut -d '|' -f1`
      TYPE=`echo $QUERY | cut -d '|' -f7`
      NAME=`echo $QUERY | cut -d '|' -f3`
      SYMBOL=`echo $QUERY | cut -d '|' -f2`
      MASS=`echo $QUERY | cut -d '|' -f4`
      MELTING=`echo $QUERY | cut -d '|' -f5`
      BOILING=`echo $QUERY | cut -d '|' -f6`
      echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MELTING celsius and a boiling point of $BOILING celsius."
    fi
 fi