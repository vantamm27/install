Hướng dẫn cài đặt JDK </br>


B1: Download source  jdk từ trang chủ (https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) </br>
B2: Giải nén file vd: tar -xvf jdk-8-linux-x64.tar.gz</br>
B3: Đổi tên thư mục vừa giải nén thành tên thư mục gọn cho gọn vd: mv jdk1.8.0_202 jdk1.8.0</br>
B4: Tạo thư mục /usr/lib/jvm nếu chưa có</br>
</t>    sudo mkdir -p /usr/lib/jvm</br>
B5: Chuyển thư mục chứa jdk vào thừ mục  /usr/lib/jvm vừa tạo </br>
    sudo mv ./jdk1.8.0 /usr/lib/jvm/  </br>
B6: cài package java</br>
    sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.8.0/bin/java" 1</br>
    sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0/bin/javac" 1</br>
    sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.8.0/bin/javaws" 1</br>
B7: Thêm quyền thực thi </br>
    sudo chmod a+x /usr/bin/java</br>
    sudo chmod a+x /usr/bin/javac</br>
    sudo chmod a+x /usr/bin/javaws</br>
    sudo chown -R root:root /usr/lib/jvm/jdk1.8.0</br>
B8: Cấu hình java chọn phiên bản java vừa cấu hình</br>
    sudo update-alternatives --config java</br>
    sudo update-alternatives --config javac</br>
    sudo update-alternatives --config javaws</br>
B9: Kiểm tra lại </br>
    java -version</br>
