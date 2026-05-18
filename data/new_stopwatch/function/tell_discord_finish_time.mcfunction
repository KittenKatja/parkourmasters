$http headers value {"Content-Type":"application/json"} \
    body value '{ \
    "content": "> $(player) completed *$(map)* in: **$(add0min)$(min):$(add0sec)$(sec).$(add0ms)$(ms)** \\n> *PB | **$(PBadd0min)$(PBmin):$(PBadd0sec)$(PBsec).$(PBadd0ms)$(PBms)***", \
    "attachments": [] \
}' \
send "https://discord.com/api/webhooks/1472363724953354451/i2fMQdJ6D8rdjdHBU6e_MEB58myaypyUKIAOVbnLU_k4jR6Kkb0hr07PqG7JosZkQiXf" POST
