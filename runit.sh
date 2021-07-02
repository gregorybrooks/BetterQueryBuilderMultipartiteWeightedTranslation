#!/bin/bash
set -v
cd ./programfiles
python3 run_multipartiterank_qformulator.py --input_file=$eventExtractorFileLocation/$INPUTFILE --mode=$MODE --output_file=$queryFileLocation/$QUERYFILE --out_lang=$OUT_LANG --program_directory=$HOME/programfiles/ --phase=$PHASE
set +e
chmod -f a+rw $queryFileLocation/${QUERYFILE}*
# If the chmod had a problem, ignore it
exit 0
