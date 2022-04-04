#!/bin/bash
grep $2 $1_Dealer_schedule | grep $3 | awk -F" " '{print $5" "$6}'

