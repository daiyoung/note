# bc

## examples
### 小数点
算术操作高级运算bc命令它可以执行浮点运算和一些高级函数：

    echo "1.212*3" | bc 
    3.636
    
设定小数精度（数值范围）

    echo "scale=2;3/8" | bc
    0.37

参数scale=2是将bc输出结果的小数位设置为2位。

### 进制转换
```shell
#!/bin/bash
abc=192
echo "obase=2;$abc" | bc
```
执行结果为：11000000，这是用bc将十进制转换成二进制。
```shell
#!/bin/bash
abc=11000000
echo "obase=10;ibase=2;$abc" | bc
```
执行结果为：192，这是用bc将二进制转换为十进制。

### 计算平方和平方根：
    echo "10^10" | bc
    echo "sqrt(100)" | bc
