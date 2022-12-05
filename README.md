### vintagure : shopping mall site
---
**OS :** Windows  
**Language :** Java, Javascript, CSS, HTML, etc. 
**Framework :** Spring, Mybatis 
**Server :** Apache Tomcat 9.0 with JSP 
**Database :** Oracle  
**(API) :** kakao 주소 & pay, toss pay

**Citations:** https://github.com/technext/fruitkha original html template

**Benchmarked Sites:** https://kream.co.kr

Full description of project is in the pdf file(power point)

---
### :arrow_down_small: :: Downloads :: 다운로드 할 것 (30 min) 
#### 1. spring tool 3.9.14
full distribution on Eclipse 4.17, *Windows* version :: link: https://github.com/spring-attic/toolsuite-distribution/wiki/Spring-Tool-Suite-3#spring-tool-suite-3914-new-and-noteworthy

#### 2. oracle database express edition
Oracle Database 11gR2 Express Edition for Windows x64 :: link: https://www.oracle.com/database/technologies/xe-prior-release-downloads.html

#### 3. SQL developer 
Windows 64-bit with JDK 11 included :: link: https://www.oracle.com/database/sqldeveloper/technologies/download/

#### 4. Apache Tomcat
32-bit/64-bit Windows Service Installer :: link: https://tomcat.apache.org/download-80.cgi 
    
#### 5. Github
< 3joe.sql>, < sj > :: link: https://github.com/BaekChanJu/semiProj
    
---
### :arrow_forward: :: After Downloads :: 다운로드 후에 할 것 (15 min)



#### 1. SQL

![](https://user-images.githubusercontent.com/112688176/205602644-8f26f065-8ef6-4768-ad23-f58d5f610d12.png)


#### 2.Spring

&nbsp;&nbsp;&nbsp;&nbsp;**2.1** Open sts-bundle: click foler sts-3.9.14 > *STS.exe*

&nbsp;&nbsp;&nbsp;&nbsp;**2.1.1** Window > Preferences > type (**enc**) > change all settings to **UTF-8** to see comments in Korean

&nbsp;&nbsp;&nbsp;&nbsp;**2.2** move (semiProj) folder to workspace folder > new project named semiProj > automatical import *(sj)*

&nbsp;&nbsp;&nbsp;&nbsp;**2.3** build path: right click (semiProj) > Build Path > Configure Build Path > Library > add External jars > 

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;add sj/src/main/webapp/WEB-INF/lib/**ojdbc6.jar**; 

&nbsp;&nbsp;&nbsp;&nbsp;**2.4** create Server: click Window > Show View > Other > Servers > right click > New Server > Apache > Tomcat v8.0 > select where Tomcat is installed > Finish

&nbsp;&nbsp;&nbsp;&nbsp;**2.5** open with chrome: Window > browser > Chrome

---
### :o: :: Changes in files :: 파일 안에서 바꿀 것 (5 min)

**1. semiProj > src > main > webapp > WEB-INF > spring > root-context.xml**
change ip address @192.168.0.48:1521:xe to @(your local ip address):1521/xe

**2. sj > src/main/java > com.javassem.controller > UserController.java**

---

### :curly_loop: :: Insert Records into DB :: 디비에 값 넣기 (1h)
**spring (src) > main > webapp > index.jsp > ( ctrl + alt + F11 ) > run tomcat server >> click '관리자 모드' (manager mode) > goto Goods || Beans > add product**

*Product image at: (src) > main > webapp > resources > assets > img*

*Error could occur saying step <=0 --> in that case, in views/index.jsp, change (step to step +1) or add the products before running index*


---


**방문자용 메인화면**

1) Index :: 메인 페이지
(https://user-images.githubusercontent.com/112688176/205598127-09d26703-4545-4b75-88de-6da6691d8a9c.png)
(https://user-images.githubusercontent.com/112688176/205598129-c0a816ea-a81f-4abf-8cb2-4211900fb13b.png)
(https://user-images.githubusercontent.com/112688176/205598132-68823f4a-a31a-4ba3-9f57-1d97237c6532.png)


2) productList :: 상품리스트 페이지
![](https://user-images.githubusercontent.com/112688176/205598120-62c14ecc-88b6-4591-aa05-211d81aabc09.png)


3) goodsPage :: 싱픔상세 페이지
![](https://user-images.githubusercontent.com/112688176/205598126-829cf875-a884-4fb6-9169-a3b210e0e940.png)


4) cart page :: 카트 페이지
![](https://user-images.githubusercontent.com/112688176/205598110-a9cec536-1cee-4e20-acee-e337c9f51d25.png)


5) checkOut page :: 결제페이지
![](https://user-images.githubusercontent.com/112688176/205598113-85900def-44b2-49b5-8595-a5a6e05fa0af.png)






**관리자 모드**

1) insertGoods :: 상품등록 페이지
![](https://user-images.githubusercontent.com/112688176/205598116-cf3e36d4-e82e-4aeb-a153-11ae7b26ac20.png)


2) goodsList :: 상품등록 리스트 페이지
![](https://user-images.githubusercontent.com/112688176/205598118-6d35631f-7c48-46f5-a273-03f263f40ed6.png)


3) chart :: 월별매출 페이지
![](https://user-images.githubusercontent.com/112688176/205598100-f1bc7c87-3c75-4ca9-88bc-95e264fec061.png)


4) qnaanswer :: 관리자 QnA 답변페이지
![](https://user-images.githubusercontent.com/112688176/205598105-136951dd-d8d3-43d9-8e7a-58432327390b.png)

5)managerOrderList :: 주문관리 페이지(취소/교환/반품)
![](https://user-images.githubusercontent.com/112688176/205601473-1668c80a-cf94-436f-a273-a4adf64f675a.png)



