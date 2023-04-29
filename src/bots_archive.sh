#!/bin/bash

api="https://botsarchive.com"
user_agent="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.114 Safari/537.36"

function get_bot_id() {
  # 1 - username: (string): <username>
  curl --request GET \
    --url "$api/getBotID.php?username=$1" \
    --user-agent "$user_agent" \
    --header "content-type: application/json"
}

function get_user_vote() {
  # 1 - user_id: (integer): <telegram user_id>
  # 2 - bot_id: (integer): <bot_id from database>
  curl --request GET \
    --url "$api/getUserVote.php?user_id=$1&bot_id=$2" \
    --user-agent "$user_agent" \
    --header "content-type: application/json"
}
