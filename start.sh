if [ -z $SOURCE_CODE ]
then
  echo "Cloning main Repository"
  git clone https://github.com/masterr007/StringSessionBot.git /StringSessionBot
else
  echo "Cloning Custom Repo from $SOURCE_CODE "
  git clone $SOURCE_CODE /StringSessionBot
fi
cd /StringSessionBot
pip install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
