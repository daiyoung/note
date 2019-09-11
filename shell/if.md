# if

需要结合test表达式使用


## examples
### if
``` shell
if [ $month -eq 4 ] || [ $month -eq 6 ] || [ $month -eq 9 ] || [ $month -eq 11 ];then #	有中括号要用到 || &&
    day=30;	#if用于有大代码块的判断
elif [ ... ]; then
	if [[ -z "$1" ]]; then
        echo "image name is null"
    fi
else
	exit -1
fi	
#交互式判断
#判断宿主机网卡是否存在
ifconfig $ETHNAME > /dev/null 2>&1
    
if [ $? -eq 0 ];then
    read -p "$ETHNAME exist,do you want delelte it? y/n " del
    if [[ $del == 'y' ]]; then
        ip link del $ETHNAME
    else
        exit
    fi
fi
```
### case...esac	
``` shell
case $1 in	
    "111")	
        echo 111
        ;;
    "222")
        echo 222
        ;;
    *)
        echo others.
        ;;
esac
