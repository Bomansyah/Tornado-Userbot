FROM mrismanaziz/man-userbot:buster

RUN git clone -b Tornado-Userbot https://github.com/Bomansyah/Tornado-Userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/tofikdn/Man-Userbot/Man-Userbot/requirements.txt

CMD ["python3","-m","userbot"]
