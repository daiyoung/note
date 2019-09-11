# string

## code

name=/usr/local/bin/readme.txt.bak
`##挨着*， %%远离*`

| code         | 解释 | 结果                           |
|:-------------|:---- |:-----------------------------|
| ${name%%.\*} |  匹配第一个'.'前面的\*   | /usr/local/bin/readme        |
| ${name%.\*}  | 匹配最后一个'.'前面的\*  | /usr/local/bin/readme.txt    |
| ${name%/\*}  | 匹配最后一个'/'前面的\*  | /usr/local/bin               |
| ${name#\*.}  | 匹配第一个'.'后面的\*    | txt.bak                      |
| ${name##\*.} | 匹配最后一个'.'后面的\*  | bak                          |
| ${name#\*/}  | 匹配第一个'/'后面的\*    | usr/local/bin/readme.txt.bak |
| ${name##\*/} | 匹配最后一个'/'后面的\*  | readme.txt.bak               |


## examples

### check prefix

```shell
if [[ "$msg" =~ "Already" ]];then
  exit 0
fi

#https://majing.io/posts/10000006301174
str="hello"
if [[ $str == h* ]];then
    echo 'yes'
fi

str="hello"
if [[ "$str" =~ ^he.* ]]; then
    echo "yes"
fi

```

### upper to lower

    uuidgen | sed "s/-//g" | tr [A-Z] [a-z]