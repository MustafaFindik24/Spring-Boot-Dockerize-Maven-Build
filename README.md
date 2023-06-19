# Spring Boot Projesini Docker container içerisinde Maven build alarak çalıştırmak

Bir Spring Boot projesi, kullanılmak istenen dependencyler pom.xml dosyasına eklenerek oluşturulur.

![image](https://github.com/MustafaFindik24/Spring-Boot-Dockerize-Maven-Build/assets/91599453/245f86e5-aeab-4a9a-86dd-f3e0e8ce4a9b)

Uygulamayı dockerize hale getirmek için Dockerfile dosyası oluşturulur ve maven kullanılarak build alma işlemi bu aşamada sağlanır. Dockerfile dosyasında dikkat edileceği üzere iki katmanlı bir mimari kullanıldı. İlk katmanda bir maven image kullanılarak yerel dosyaların containera kopyalanması ve daha sonrasında maven build alınması sağlandı. İkinci katmanda ise kodumuzun çalışacağı image kullanılarak
önceki katmanda build alınan dosyaların şimdiki katmana kopyalanması sağlandı. Uygulamanın 8090 portunda ayağa kalkacağı belirtilerek jar dosyası haline getirilmiş java kodu entrypoint talimatıyla çalıştırıldı.

![image](https://github.com/MustafaFindik24/Spring-Boot-Dockerize-Maven-Build/assets/91599453/0bbd3471-c6de-4f86-b46b-9f01c9aff9c0)

![image](https://github.com/MustafaFindik24/Spring-Boot-Dockerize-Maven-Build/assets/91599453/149527b3-f3f7-413e-87a1-08e0a18fba3b)


