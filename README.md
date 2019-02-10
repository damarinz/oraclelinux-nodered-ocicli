# oraclelinux-nodered-ocicli

動作は無保証です。

# Setup セットアップ

oci-cliはご自身で設定してください。対話型なので先に入れることができず、妥協しております。いい方法があれば教えてください。


```angular2
% make attach
# bash -c "$(curl -L https://raw.githubusercontent.com/oracle/oci-cli/master/scripts/install/install.sh)"
```

## Usage 使い方

make (build-image|create-container|start|stop|restart|attach|logs)



- build-image イメージをbuildします
- create-container コンテナを作成します(docker run)
- start (docker container start)
- stop (docker container stop)
- restart
- attach (docker exec -it <container> bash)
- logs


# License
MIT

# Versions

- 0.1 とりあえず作成

今後はOracle instant clientを組み込んだりするつもり
