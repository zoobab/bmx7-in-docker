FROM zoobab/lede-17.01.0-rc2-r3131-42f3c1f-x86-64
RUN opkg update
RUN opkg install bmx7
ENTRYPOINT ["bmx7","dev=eth0","d=3"]
