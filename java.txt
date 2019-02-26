Hướng dẫn cài đặt JDK


B1: Download source  jdk từ trang chủ (https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)
B2: Giải nén file vd: tar -xvf jdk-8-linux-x64.tar.gz
B3: Đổi tên thư mục vừa giải nén thành tên thư mục gọn cho gọn vd: mv jdk1.8.0_202 jdk1.8.0
B4: Tạo thư mục /usr/lib/jvm nếu chưa có
</t>    sudo mkdir -p /usr/lib/jvm
B5: Chuyển thư mục chứa jdk vào thừ mục  /usr/lib/jvm vừa tạo 
    sudo mv ./jdk1.8.0 /usr/lib/jvm/  
B6: cài package java
    sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.8.0/bin/java" 1
    sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0/bin/javac" 1
    sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.8.0/bin/javaws" 1
B7: Thêm quyền thực thi 
    sudo chmod a+x /usr/bin/java
    sudo chmod a+x /usr/bin/javac
    sudo chmod a+x /usr/bin/javaws
    sudo chown -R root:root /usr/lib/jvm/jdk1.8.0
B8: Cấu hình java chọn phiên bản java vừa cấu hình
    sudo update-alternatives --config java
    sudo update-alternatives --config javac
    sudo update-alternatives --config javaws
B9: Kiểm tra lại 
    java -version
