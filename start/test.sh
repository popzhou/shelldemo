#! /bin/bash

# 直接执行shell命令，显示当前目录
pwd

# 输出变量
message='hello shell'
echo $message

# 换行, -e参数可以使[转义字符]发生作用
message='第一行文本\n第二行文本'
echo -e $message

# 双引号, 美元符号（ $ ）、反引号（ ` ）、反斜杠（ \ ），这3种特殊字符将不被忽略。 
message='hi shell'
echo "要输出的信息是：$message"

# 反引号, 反引号要求 Shell 执行被它括起来的内容。
message=`pwd`
echo "当前的目录是：$message"


# echo $(ls *.md)
KEY=$(ls ./start/*.sh)
echo "我要找的文件是：$KEY，对不对?"
echo "我要找的文件是：${KEY},对不对?"

OS_ARCH=$(echo "$(uname -s|tr '[:upper:]' '[:lower:]'|sed 's/mingw64_nt.*/windows/')-$(uname -m | sed 's/x86_64/amd64/g')" | awk '{print tolower($0)}')
echo $OS_ARCH