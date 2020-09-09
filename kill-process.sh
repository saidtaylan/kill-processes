#! /bin/bash

echo "Sonlandırmak istediğiniz uygulamanın ismini hatasız bir şekilde yazınız. Veya uygulamanızı, diğerlerinden ayırt edebilecek bir sözcük yazınız. 
Örneğin: 'sublime-text' yerine 'sublime' yazmayı deneyin."
read -p "Uygulama İsmini giriniz: " user_input

processes=$(ps -aux | grep $user_input | awk '{print $2}')
sudo kill $processes
