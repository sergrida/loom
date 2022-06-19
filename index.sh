if [ -f ${LOOM_FOLDER}/.env ]; then
  source .env
else
  source default.env
fi

if [ -f ${LOOM_FOLDER}/commands/${1}/${2}.sh ]; then
  printf "\033[0;32mLOOM: Running the script.\033[0m\n"
  source ${LOOM_FOLDER}/commands/${1}/${2}.sh
else
  printf "\033[0;31mLOOM: I can't find the script.\033[0m\n"
fi
