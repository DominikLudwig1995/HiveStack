#!/usr/bin/env bash

# set up configurations
source benchmark.conf;

if [ -e "$LOG_FILE" ]; then
	timestamp=`date "+%F-%R" --reference=$LOG_FILE`
	backupFile="$LOG_FILE.$timestamp"
	mv $LOG_FILE $LOG_DIR/$backupFile
fi

echo ""
echo "***********************************************"
echo "*           PC-H benchmark on Hive            *"
echo "***********************************************"
echo "                                               "

for query in ${HIVE_TPCH_QUERIES_ALL[@]}; do
	echo "Running Hive query: $query"
	 $HIVE_CMD -f $BASE_DIR/$query
done

echo "***********************************************"
echo ""
