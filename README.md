ionic setup
===========

Instructions to setup an ionic development environment

1. Install GIT
  * OSX

    ```bash
    # with homebrew
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    brew install git
    ```

  * Ubuntu

    ```bash
    sudo apt-get install -y git
    ```

  * Windows: Download & install [git bash](http://git-scm.com/downloads)

2. Install nodeJS + npm

  * OSX

    ```bash
    brew install node
    ```
  * Ubuntu ([other methods](https://gist.github.com/isaacs/579814))

    ```bash
    sudo apt-get install -y curl python g++ make
    echo 'export PATH=$HOME/local/bin:$PATH' >> ~/.bashrc
    . ~/.bashrc
    mkdir ~/local
    mkdir ~/node-latest-install
    cd ~/node-latest-install
    curl http://nodejs.org/dist/node-latest.tar.gz | tar xz --strip-components=1
    ./configure --prefix=~/local
    make install
    curl https://raw.githubusercontent.com/creationix/nvm/v0.24.1/install.sh | sh
    nvm install 0.12.2
    nvm use 0.12.2
    nvm alias default stable
    ```

  * Windows: Download & install [nodejs](https://nodejs.org/download/)

3. Install Java 8
  * Ubuntu

    ```bash
    sudo add-apt-repository -y ppa:webupd8team/java
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
    sudo apt-get update
    sudo apt-get install -y oracle-java8-installer ant

    echo 'export JAVA_HOME=/usr/lib/jvm/java-8-oracle' >> ~/.bashrc
    echo 'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.bashrc
    . ~/.bashrc
    ```

  * Windows: Download & install [jdk 8](http://www.oracle.com/technetwork/java/javase/downloads/index.html)

4. Install Android Development Tools (ADT)

  * OSX

    ```bash
    cd ~
    curl http://dl.google.com/android/android-sdk_r24.1.2-macosx.zip -o android-sdk.zip
    unzip android-sdk.zip
    rm android-sdk.zip

    echo 'export ANDROID_HOME=$HOME/android-sdk-macosx' >> ~/.bashrc
    echo 'export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools' >> ~/.bashrc
    . ~/.bashrc

    cd android-sdk-macosx/tools
    ./android
    # Select Android 5.0.1 (API 21), then, next, next, next, ...
    ```

  * Ubuntu

    ```bash
    cd ~
    wget http://dl.google.com/android/android-sdk_r24.1.2-linux.tgz
    tar -xvzf android-sdk_r24.1.2-linux.tgz
    rm android-sdk_r24.1.2-linux.tgz
    
    echo 'export ANDROID_HOME=$HOME/android-sdk-linux' >> ~/.bashrc
    echo 'export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools' >> ~/.bashrc
    . ~/.bashrc

    cd android-sdk-linux/tools
    ./android
    # Select Android 5.0.1 (API 21), then, next, next, next, ...
    ```

  * Windows: Download & install [ADT](https://developer.android.com/sdk/index.html#Other)

5. [Sign in](https://apps.ionic.io/login)

6. Install ionic Framework

  ```bash
  npm install -g cordova ionic gulp
  ```
