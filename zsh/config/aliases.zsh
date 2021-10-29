if ! [ $SPIN ]; then
    alias spo="spin shell online-store-web"
    alias sps="spin shell shopify"
    alias spw="spin shell web"
fi

if [ $SPIN ]; then
    alias rnginx="sudo pkill -9 nginx && sudo service nginx start"
fi
