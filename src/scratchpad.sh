ip_dump=$(date '+%A %W %Y %X' >> "/home/lobes/repos/wimp/logs.txt" && ip -f inet -p addr)
echo "${ip_dump}"
curl -X POST \
    -d 'api_dev_key=XUgqbsPVm6m1c03Oad5eSotXGSUSwoXO' \
    -d 'api_paste_code=${ip_dump}' \
    -d 'api_option=paste' "https://pastebin.com/api/api_post.php"

now=$(date '+%A %W %Y %X')
echo "${now}"
