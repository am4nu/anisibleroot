

#create jdk directory
mkdir /opt/jdk
cd /opt/jdk
#uncompress, change to your file name
wget http://99.230.42.46/jdk-8u211-linux-x64.tar.gz
tar -zxf jdk-8u***-linux-x64.tar.gz** -C /opt/jdk

#check if files are there
ls /opt/jdk

#update alternatives so the command java point to the new jdk
update-alternatives --install /usr/bin/java java /opt/jdk/jdk1.8.0_211/bin/java 1

#update alternatives so the command javac point to the new jdk
update-alternatives --install /usr/bin/javac javac /opt/jdk/jdk1.8.0_211/bin/javac 1

#check if java command is pointing to " link currently points to /opt/jdk/jdk1.8.0_05/bin/java"
update-alternatives --display java

#check if java command is pointing to " link currently points to /opt/jdk/jdk1.8.0_05/bin/javac"
update-alternatives --display javac

#check if java is running
java -version
