#!/bin/bash

docker run -itd --name bot-ethusd-0 -v "type=bind,source=$(pwd)/conf,destination=/conf/" -v "type=bind,source=$(pwd)/logs,destination=/logs/" -e "STRATEGY=pure_market_making"
 -e "CONFIG_FILE_NAME=conf_pure_market_making_strategy_0.yml" -e "CONFIG_PASSWORD=7zNE7UU5O69R%&uOcG1*" gitlab.tunex.io:5050/reference-project/opendax-prod:hummingbot_v0.22
sleep 20 && docker run -itd --name bot-ethusd-1 -v "type=bind,source=$(pwd)/conf,destination=/conf/" -v "type=bind,source=$(pwd)/logs,destination=/logs/" -e "STRATEGY=pure_ma
rket_making" -e "CONFIG_FILE_NAME=conf_pure_market_making_strategy_1.yml" -e "CONFIG_PASSWORD=7zNE7UU5O69R%&uOcG1*" gitlab.tunex.io:5050/reference-project/opendax-prod:hummingbot_v0.22
 
sleep 40 && docker run -itd --name bot-ethusd-2 -v "type=bind,source=$(pwd)/conf,destination=/conf/" -v "type=bind,source=$(pwd)/logs,destination=/logs/" -e "STRATEGY=pure_ma
rket_making" -e "CONFIG_FILE_NAME=conf_pure_market_making_strategy_2.yml" -e "CONFIG_PASSWORD=7zNE7UU5O69R%&uOcG1*" gitlab.tunex.io:5050/reference-project/opendax-prod:hummingbot_v0.22
