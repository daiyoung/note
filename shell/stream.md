# stream

## code
| code        | defination                        | examples                    |
|:------------|:----------------------------------|:----------------------------|
| 1>          | 覆盖、正确信息输出到文件                      | ls /root > 123.txt          |
| 1>>         | 累加                                |                             |
| 2>          | 覆盖、错误信息输出到文件                      | sh 123.sh 2> 123.txt        |
| 2>>         | 累加                                |                             |
| > /dev/null | 丢弃信息                              | command 2> /dev/null【错误信息】  |
|             |                                   | command > /dev/null【正确信息】   |
| &>          | 覆盖、正确错误信息写入一个文件                   | command &> 123.txt          |
|             |                                   | command > 123.txt 2>&1      |
| &>>         | 累加、正确错误信息写入一个文件                   |                             |
| nohup       | nohup command > myout.file 2>&1 & |                             |
| tee         |                                   | sh 123.sh \| tee -a log.log |
