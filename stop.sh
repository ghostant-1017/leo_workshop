ps -ef | grep "\-\-validator" | awk '{print $2}' | xargs kill
