# for while util

## examples
### for
```shell
for i in x y z;do
    echo $i
done

for(( i=0; i<=21; i=i+1 )) ;do echo $i;done


# 遍历数组

for i in ${arr[@]};do 
    echo $i
done
	
for leader in xiewenzheng fanxueting zhuangkai ; do echo 123;done


```	

### while
```shell
#!/bin/bash
i=0
while [ true ];do
    echo $i
    let i++;
    if [ $i -gt 10 ]; then
        echo 0000
        break
    fi
    sleep 1
done
```
### util
```shell
util [ "$?" == 1 ];do 
    echo $?;
done

```
	
