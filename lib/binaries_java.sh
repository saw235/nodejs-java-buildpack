install_java() {
  local version="$1"
  local dir="$2"
  
  local download_url="http://download.oracle.com/otn-pub/java/jdk/9.0.1+11/jre-9.0.1_linux-x64_bin.tar.gz"
  echo "Downloading JAVA [$download_url]"
  curl -C - -LR#OH "Cookie: oraclelicense=accept-securebackup-cookie" -k "http://download.oracle.com/otn-pub/java/jdk/9.0.1+11/jre-9.0.1_linux-x64_bin.tar.gz"
  echo "Download complete!"

  echo "Installing JAVA"
  mkdir /tmp/jdk
  mkdir $dir
  tar xzf jre-9.0.1_linux-x64_bin.tar.gz -C /tmp/jdk
  rm -rf $dir/*
  mv /tmp/jdk/jre-9.0.1/* $dir
  chmod +x $dir/bin
  echo "Installation complete!"	
}
