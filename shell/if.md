  获取当前时间	datetime=`date +"%Y-%m-%d/%H:%M:%S"` 	
param	$0：文件本身，$1...n：参数列表 , $* 所有参数	
test表达式	逻辑运算符	test字符串一定要加"": 例如 test -n "$string"
	　　-a　　expr1 -a expr2　　逻辑与	
	　　-o　　expr1 -o expr2　　逻辑或	"x$xxx" = "x"： 判断是否空字符串
	　　！　　!expr1　　　　　　逻辑非
	数值判断
	　　-eq　　num1 -eq num2　　是否相等
	　　-ne　　num1 -ne num2　　是否不相等
	　　-gt　　num1 -gt num2　　是否大于
	　　-ge　　num1 -ge num2　　是否大于等于
	　　-lt　　num1 -lt num2　　是否小于
	　　-le　　num1 -le num2　　是否小于等于
	字符串判断 比较符号两边要有空格
	　　=/==　　str1 = str2　　字符串是否相等(最好用==)
	　　!=　　str1 != str2　　字符串是否不等
	　　-n　　-n str1　　　　字符串长度是否不等于0
	　　-z　　-z str2　　　　字符串长度是否等于0
	if [ "x$KAFKA_HEAP_OPTS" = "x" ]; then
    export KAFKA_HEAP_OPTS="-Xmx1G -Xms1G"
fi
	文件判断
	　　-r　　-r filename　　文件是否存在且可读
	　　-w　　-w filename　　文件是否存在且可写
	　　-s　　-s filename　　文件是否存在且长度非0
	　　-f　　-f filename　　文件是否存在且是普通文件
	　　-d　　-d filename　　文件是否存在且是一个目录
test	判断参数：	test 用 -a -o
	test ! -n "${1}" && echo "param 1: module name is null" && exit -1	test用于段代码
	判断文件：
	test -f "$name" &&  echo "'$name is exist.'" || touch $name
	多个条件
	test -f file -a -x file
if	if [ $month -eq 4 ] || [ $month -eq 6 ] || [ $month -eq 9 ] || [ $month -eq 11 ];then	有中括号要用到 || &&
	        day=30;	if用于有大代码块的判断
	elif [ ... ]; then	if [[ -z "$1" ]]; then
	        ...	  echo "image name is null"
	else	  exit -1
	        ...	fi
	fi	
	交互式判断
	#判断宿主机网卡是否存在
	ifconfig $ETHNAME > /dev/null 2>&1
	if [ $? -eq 0 ]; then
	    read -p "$ETHNAME exist,do you want delelte it? y/n " del
	    if [[ $del == 'y' ]]; then
	        ip link del $ETHNAME
	    else
	        exit
	    fi
	fi
case...esac	case $1 in	
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
for	for i in x y z	
	do
	        echo $i
	done
	for(( i=0; i<=21; i=i+1 )) ;do echo $i;done
	
	#!/bin/bash
	i=0
	while [ true ]
	do
	        echo $i
	        let i++
	        if [ $i -gt 10  ];then
	                echo 0000
	                break
	        fi
	        sleep 1
	done
	
	util [ true ]
	do
	        echo $i
	done
	
	遍历数组
	for i in ${arr[@]};do done
	
	for leader in xiewenzheng fanxueting zhuangkai ; do ;done
	
