# awk

awk 中print ' 需要转义：  
    
    '\''

## examples

print sql
```shell
    echo 1 2 | awk '{print "('\''" $1 "'\'',2,'\''2099-01-01'\'',0,'\''admin'\'','\''2011-01-01'\'',0,1,0),('\''" $1 "'\'',4,'\''2099-01-01'\'',0,'\''admin'\'','\''2011-01-01'\'',0,1,0),"}'
```

定义变量
```shell
# 给iphone照片重命名为日期
for file in `ls`;do 
    info=`ll -T $file`;
    #echo $info;
    month=`echo $info|awk '{printf("%02d",$6)}'`;
    day=`echo $info|awk '{printf("%02d",$7)}'`;
    #echo $month-$day;
    time=`echo $info | awk '{print $8}' | awk -F ':' '{print $1$2$3}'`;
    datetime=`echo $info | awk -v month="$month" -v time="$time" -v day="$day" '{print $9 month day "-" time}'`;
    #echo $datetime;
    nname=$datetime.$file;
    echo $nname;
    cp $file ~/images/photo/$nname;
done
```

```shell
for mov in `ls`;do 
    info=`ll -T $mov`
    echo $info
    month=`echo $info | awk '{printf("%02d",$6)}'`
    echo $month
    time=`echo $info | awk '{print $8}' | awk -F ':' '{print $1$2$3}'`
    datetime=`echo $info | awk -v month="$month" -v time="$time" '{print $9 month $7"-"time}'`
    echo $datetime
    type=`echo $mov |awk -F '.' '{print $2}'`
    sname=`echo $mov |awk -F '.' '{print $1}'`
    nname=$sname.$datetime.$type
    cp $mov ~/images/photo/$nname
done

```