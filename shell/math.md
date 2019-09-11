# math in shell

## 取整
    $(expr 183%3)

## 取余
    $(expr 199/30)


## examples
``` shell
for i in {1..100};do
    num=$(expr $i % 3);
    echo $num;
done
```    