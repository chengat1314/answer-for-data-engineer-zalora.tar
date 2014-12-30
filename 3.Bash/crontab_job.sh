#!/bin/bash

cd /home/Marketing Report/Data/
ftp -in 10.11.12.13 << SCRIPTEND
user helloFTP world@172.18.10.35:22
binary
cd /data/
mget *webtrekk_marketing*
SCRIPTEND

python /home/magentodev/test/ZMR.py 


dbname="zalora"
username="helloDB"
password="world"
fileName="/home/Marketing Report/Scripts/UpdateWebtrekk.sql"
post="5439"
address="10.11.12.13"

psql -U $username -h $address -d $dbname -p $post -W $password -f $fileName 



