if [ -f ${LOOM_FOLDER}/.env ]; then
  source .env
else
  source default.env
fi

RUN=(${1//./ })
RUN_FOLDER=${RUN[0]}

for (( I = 1; I < ${#RUN[@]}; I ++ )); do
  RUN_FOLDER=${RUN_FOLDER}/${RUN[${I}]}
done

RUN_FOLDER=${LOOM_FOLDER}/commands/${RUN_FOLDER}.sh

if [ -f ${RUN_FOLDER} ]; then
  printf "\033[0;32mLOOM: Running the script.\033[0m\n"
  source ${RUN_FOLDER}
else
  printf "\033[0;31mLOOM: I can't find the script.\033[0m\n"
fi
