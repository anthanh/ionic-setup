if [[ "$OSTYPE" == "darwin"* ]]; then
	# Install Homebrew
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	brew install git
	# git config --global user.name "$GIT_USERNAME"
	# git config --global user.email "$GIT_EMAIL"

	# Install node + npm
	brew install node

	cd ~
    curl http://dl.google.com/android/android-sdk_r24.1.2-macosx.zip -o android-sdk.zip
    unzip android-sdk.zip
    rm android-sdk.zip

    echo 'export ANDROID_HOME=$HOME/android-sdk-macosx' >> ~/.bashrc
    echo 'export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools' >> ~/.bashrc
    . ~/.bashrc
fi

if [[ "$OSTYPE" == "linux-gnu" ]]; then
	
	sudo apt-get install -y git

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

    sudo add-apt-repository -y ppa:webupd8team/java
    echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
    sudo apt-get update
    sudo apt-get install -y oracle-java8-installer ant

    echo 'export JAVA_HOME=/usr/lib/jvm/java-8-oracle' >> ~/.bashrc
    echo 'export PATH=$PATH:$JAVA_HOME/bin' >> ~/.bashrc
    . ~/.bashrc

	cd ~
	wget http://dl.google.com/android/android-sdk_r24.1.2-linux.tgz
    tar -xvzf android-sdk_r24.1.2-linux.tgz
    rm android-sdk_r24.1.2-linux.tgz
    
    echo 'export ANDROID_HOME=$HOME/android-sdk-linux' >> ~/.bashrc
    echo 'export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools' >> ~/.bashrc
    . ~/.bashrc
fi

npm install -g cordova ionic gulp
