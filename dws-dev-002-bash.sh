#!/bin/bash

#try -i 15 -n 10 COMMAND
#try -i 15 -n 10 flask app test


fcommand(){
    echo "Doing command ... "
    return 1
} 

while true; do
case $1 in
     -i)
      echo "-interval in second is :"
      interval=$2
      echo $interval
      shift 2
      ;;
      
     -n)
      echo "-number is :"
      number=$2
      echo $number
      shift 2
      ;;
      
      *)
      if [[ $# -eq 0 ]]; then
          break
      elif [[ $1 == "flask" ]]; then
      c_1=$1
      echo " fist parameter is :" $c_1
           if [[ $2 == "app" ]]; then
                c_2=$2
                echo " second parameter is:" $c_2
                
              if [[ $3 == "test" ]]; then
                  c_3=$3
                  echo " third parameter is:" $c_3
                  fcommand
                    if [[ $? -eq 0 ]]; then
                    exit 0 
                    else
                    for i in $number; do
                    echo "Doing command again ..."
                    sleep $interval
                    fcommand
                    if [[ $? -eq 0 ]]; then
                       exit 0
                       
                    else
                     echo "Error "
                     exit 1 
                    fi
                     done
                    
                    fi
               fi      
           fi    
      
      fi   
      echo "unkown Argument , Please try again"
      exit 1
      ;;
 esac
      
  
done
