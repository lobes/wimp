#!/bin/bash

### WhatIsMyP???
ip_dump=$(ip -f inet -p addr | grep "inet")
pastebin=$(curl --data-urlencode "api_dev_key=XUgqbsPVm6m1c03Oad5eSotXGSUSwoXO" \
                --data-urlencode "api_paste_code=$ip_dump" \
                --data-urlencode "api_option=paste" "https://pastebin.com/api/api_post.php")
echo "Here is your ip:"
echo "$pastebin"
