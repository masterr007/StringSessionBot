if [ -z $SOURCE_CODE ]
then
  echo "Cloning main Repository"
  git clone https://github.com/masterr007/FilterBot.git /FilterBot
else
  echo "Cloning Custom Repo from $SOURCE_CODE "
  git clone $SOURCE_CODE /FilterBot
fi
cd /FilterBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
