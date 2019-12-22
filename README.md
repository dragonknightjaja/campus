# campus校内信息平台
项目介绍：     
------  
campus基于SpringBoot,目标是实现简易版学分制系统+mystu,现阶段整合springmvc + shiro + mybatis + Thymeleaf等常见框架，包含用户管理、学院管理、角色管理、成绩管理等。
           

默认管理员账号：admin  密码：123456
------

## 老师账号：teacher1	密码：123456

## 学生账号：student1	密码：123456

功能介绍：
------       
1.用户管理 
2.学院管理
3.通知管理 
4.修改密码 
5.登陆日志 
6.操作日志 
7.视频会议
8.角色管理 
9.成绩管理
10.学生信息
11.代码生成       
        ★添加用户后，密码默认为123456    
        ★用户密码重置后，密码默认为123456      
        ★学院解散后，此学院用户自动设置为 未分配    
        ★删除角色后，之前此角色用户自动配置为 用户       
        ★可通过角色来配置要显示的菜单      

项目特点
------
1.项目基于SpringBoot，简化了大量的配置和Maven依赖。   
2.日志记录系统，记录用户的登陆、登出，用户执行的操作，通过@BizLog注解以及Spring中的AOP功能，记录了具体到用户的业务操作、登入登出，并且可以下载excel格式，方便查看。     
3.利用Thymeleaf使得前端html代码看起来更加清晰。     
4.通过角色管理来配置菜单，达到菜单为不同部门显示的目的，间接实现了权限的管理。   
5.创建表后，通过CicodingGenerater类可生成包括html、js、Dao、Service、Controller等代码，复制进项目可直接使用。

所用框架
------
### 前端

 1. Bootstrap
 2. jQuery
 3. jqGrid
 4. jstree
 5. SweetAlert
    

### 后端

 1. SpringBoot
 2. MyBatis Plus
 3. Spring
 4. Thymeleaf
 5. Ehcache
 6. Kaptcha
 7. Shiro
 8. Velocity

项目截图: 

![1577017144194](C:\Users\Dragon\AppData\Roaming\Typora\typora-user-images\1577017144194.png)

![1577017239804](C:\Users\Dragon\AppData\Roaming\Typora\typora-user-images\1577017239804.png)

![1577017243249](C:\Users\Dragon\AppData\Roaming\Typora\typora-user-images\1577017243249.png)

![1577017479167](C:\Users\Dragon\AppData\Roaming\Typora\typora-user-images\1577017479167.png)

![1577017493206](C:\Users\Dragon\AppData\Roaming\Typora\typora-user-images\1577017493206.png)

![1577017506399](C:\Users\Dragon\AppData\Roaming\Typora\typora-user-images\1577017506399.png)

