#!/bin/bash

# 定义代理工具的路径，如果 proxy 已经在环境变量 PATH 中，可以直接使用 proxy
PROXY_PATH="client" 

# 检查代理工具是否存在
if [ ! -x "$PROXY_PATH" ]; then
    echo "错误: 代理工具 $PROXY_PATH 不存在或没有执行权限。"
    exit 1
fi

# 不阻塞式执行代理工具
#$PROXY_PATH &
# 获取代理工具的进程 ID
#PROXY_PID=$!
#echo "代理工具已在后台启动，进程 ID 为 $PROXY_PID。"

$PROXY_PATH > proxy.log 2>&1 &
PROXY_PID=$!
echo "代理工具已在后台启动，进程 ID 为 $PROXY_PID，输出日志记录在 proxy.log 中。"