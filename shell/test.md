# test

## 

逻辑运算符

    　　-a　　expr1 -a expr2　　逻辑与
    　　-o　　expr1 -o expr2　　逻辑或
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
