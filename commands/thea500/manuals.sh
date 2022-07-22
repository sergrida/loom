# wget --load-cookies /tmp/cookies.txt "https://drive.google.com/u/0/uc?id=1SD6AsDUWG3B6X_AfmDxqihO-uNPJH6Y-&export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=FILEID' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=FILEID" -O THEA500-Mini-User-Manual-v1.0.0.pdf && rm -rf /tmp/cookies.txt

# wget --load-cookies /tmp/cookies.txt "https://drive.google.com/u/0/uc?id=1QRetlON3Sj7ojgWVcTKOH-TXNbbNsEqC&export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=FILEID' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=FILEID" -O THEA500-WHDLoad-package-1.0.1.zip && rm -rf /tmp/cookies.txt

# wget --load-cookies /tmp/cookies.txt "https://drive.google.com/u/0/uc?id=1ApxFGURL93ssGl2hx_avla4yUoKKTdps&export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=FILEID' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=FILEID" -O theA500-mini-upgrade-v1.1.1.a5u && rm -rf /tmp/cookies.txt

# wget --load-cookies /tmp/cookies.txt "https://drive.google.com/u/0/uc?id=${2}&export=download&confirm=$(wget --quiet --save-cookies /tmp/cookies.txt --keep-session-cookies --no-check-certificate 'https://docs.google.com/uc?export=download&id=FILEID' -O- | sed -rn 's/.*confirm=([0-9A-Za-z_]+).*/\1\n/p')&id=FILEID" -O ${3} && rm -rf /tmp/cookies.txt

# wget ${2}

# WGET_SLASH="$(echo "${2}" | perl -pe 's|.*://[^/]+(.*?)/?$|\1|' | grep -o / | wc -l)"
# WGET_CUT=$((WGET_SLASH > 0 ? WGET_SLASH-1 : 0))
# wget -r -nH -e robots=off --user-agent=Mozilla/5.0 --cut-dirs=$WGET_CUT --no-parent --reject="index.html*" "${2}"
