# password

## uuid
    cat /proc/sys/kernel/random/uuid

## examples
```shell
#!/bin.bash
for i in {1..10}
do
    A=`head -c 500 /dev/urandom | tr -dc a-zA-Z | tr [a-z] [A-Z]|head -c 1`
    B=`head -c 500 /dev/urandom | tr -dc a-z0-9A-Z | head -c 6`
    C=`echo $RANDOM|cut -c 2`
    echo $A$B$C
done
```
  
``` shell
#!/bin.bash
for i in {1..10}
do
    A=`head -c 500 /dev/urandom | tr -dc A-Z |head -c 1`
    #随机生成500字符|只取大写字母|取第一个字符
    B=`head -c 500 /dev/urandom | tr -dc [:alnum:]| head -c 6`
    #随机生成500字符|取英文大小写字节及数字，亦即 0-9, A-Z, a-z|取6位
    C=`echo $RANDOM$RANDOM|cut -c 2`
    #取第二位随机数字,第一位随机性不高大多数是1或2,所以取第二位.
    echo $A$B$C
done
```