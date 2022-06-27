#!/bin/bash
pg_dump -cC --inserts -U freecodecamp periodic_table > periodic_table.sql
if [ $# -ne 1 ]
  then
    echo "Please provide an element as an argument."
fi