function fish_greeting
    fortune -a
end

set PATH /usr/local/go/bin $PATH
set PATH ~/workspace/golangProjects/bin $PATH
set -x -U ANDROID_HOME ~/Android/Sdk
set PATH $ANDROID_HOME/tools $PATH
set PATH $ANDROID_HOME/platform-tools $PATH
set PATH ~/android-studio/gradle/gradle-4.6/bin $PATH
set -x -U ANDROID_SDK_ROOT $ANDROID_HOME
set PATH $ANDROID_HOME/tools/bin $PATH
set GOPATH ~/workspace/golangProjects/
set -x -U GOPATH ~/workspace/golangProjects
set GOROOT /usr/local/go/bin
set ANDROID_EMULATOR_USE_SYSTEM_LIBS 1
set PATH /home/dev/android-studio/gradle/gradle-4.6/bin $PATH
set PATH /opt/libwebp/bin $PATH

function gcb
  echo "git checkout -b $argv"
  git checkout -b $argv
end

function gc
  echo "git checkout $argv"
  git checkout $argv
end

function gcm
  echo "git commit -m $argv"
  git commit -m $argv
end

function tb
  git branch | grep \* | cut -d ' ' -f2
end

function gp
  set branch (tb)
  git push origin $branch
end


function fish_prompt
    eval $GOPATH/bin/powerline-go -error $status -colorize-hostname -path-aliases "\~/workspace/androidProjects\=@ANDROID" -shell bare
end

