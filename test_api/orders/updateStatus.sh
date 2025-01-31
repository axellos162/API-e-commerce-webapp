curl \
-X PATCH \
-H "Authorization: bearer $(cat ../config/TOKEN.txt)" \
-d @./data/update.json \
-H "Content-Type: application/json" "$(cat ../config/URL.txt)/api/v1/orders/status/$(cat ../config/ID.txt)" \
-o ./data/log.json && cat ./data/log.json | underscore print --outfmt pretty
