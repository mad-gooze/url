#!/bin/bash

# create counter ID at https://metrika.yandex.ru/
METRIKA_ID="41179714"

mkdir -p out

function prepare_url {
    regex='(https?|ftp)://[-A-Za-z0-9\+&@#/%?=~_|!:,.;]*[-A-Za-z0-9\+&@#/%=~_|]'
    if [[ $1 =~ $regex ]]
    then
        echo $1
    else
        echo http://$1
    fi
}


cd urls
for short_url in *
do
    long_url=$(prepare_url "$(< $short_url)")
    ../node_modules/.bin/pug -O "{\"url\": \"$long_url\", \"metrikaID\": \"$METRIKA_ID\"}" ../index.pug -o ../out/$short_url/
done

