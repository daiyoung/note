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
