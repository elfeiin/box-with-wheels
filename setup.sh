apk add jdk-openjdk
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"

mkdir /tmp/sdk-tmp
cd /tmp/sdk-tmp

wget https://dl.google.com/android/repository/commandlinetools-linux-8512546_latest.zip -O cmdline-tools.zip

unzip cmdline-tools.zip
cd cmdline-tools
mkdir latest
mv bin latest/
mv lib latest/
mv NOTICE.txt latest/
mv source.properties latest/
cd ..
mkdir ~/.android
mv cmdline-tools ~/.android

export ANDROID_HOME="$HOME/.android"
~/.android/cmdline-tools/latest/bin/sdkmanager "platforms;android-33" "platform-tools" "ndk;25.0.8775105" "build-tools;33.0.0"

cargo install --git https://github.com/tauri-apps/tauri --branch next tauri-cli
