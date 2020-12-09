# activiti_work

#### 介绍
springboot +shiro +activiti 工作流项目 ，doc文件中有工作流API使用

#### 软件架构
springboot 单体架构 redis mysql shiro 很适合学习用 


#### 安装教程

1.  下载直接运行jar 包
2.  xxxx
3.  xxxx

#### 使用说明

1.    图片展示
![输入图片说明](https://images.gitee.com/uploads/images/2020/1209/175701_8fcaf4a8_4927313.jpeg "1607507831(1).jpg")
    ![输入图片说明](https://images.gitee.com/uploads/images/2020/1209/180023_f6c2162d_4927313.jpeg "1607508031(1).jpg")!
    ![输入图片说明](https://images.gitee.com/uploads/images/2020/1209/180110_2920957a_4927313.jpeg "1607508080(1).jpg")
    [输入图片说明](https://images.gitee.com/uploads/images/2020/1209/175919_73643fa4_4927313.jpeg "1607507965(1).jpg")
    ![输入图片说明](https://images.gitee.com/uploads/images/2020/1209/180205_84c36648_4927313.jpeg "1607508138(1).jpg")
    ![输入图片说明](https://images.gitee.com/uploads/images/2020/1209/180241_f1a923d6_4927313.jpeg "1607508172(1).jpg")
2. 表结构说明 （主要是工作流中使用的一些表）

```
数据库（先看再说）
Activiti数据库支持：
Activiti的后台是有数据库的支持，所有的表都以ACT_开头。 第二部分是表示表的用途的两个字母标识。 用途也和服务的API对应。
ACT_RE_*: 'RE'表示repository。 这个前缀的表包含了流程定义和流程静态资源 （图片，规则，等等）。
ACT_RU_*: 'RU'表示runtime。 这些运行时的表，包含流程实例，任务，变量，异步任务，等运行中的数据。 Activiti只在流程实例执行过程中保存这些数据， 在流程结束时就会删除这些记录。 这样运行时表可以一直很小速度很快。
ACT_ID_*: 'ID'表示identity。 这些表包含身份信息，比如用户，组等等。
ACT_HI_*: 'HI'表示history。 这些表包含历史数据，比如历史流程实例， 变量，任务等等。
ACT_GE_*: 通用数据， 用于不同场景下，如存放资源文件。
1：资源库流程规则表
1) act_re_deployment 部署信息表
2) act_re_model 流程设计模型部署表
3) act_re_procdef 流程定义数据表
2：运行时数据库表
1) act_ru_execution 运行时流程执行实例表
2) act_ru_identitylink 运行时流程人员表，主要存储任务节点与参与者的相关信息
3) act_ru_task 运行时任务节点表
4) act_ru_variable 运行时流程变量数据表
3：历史数据库表
1) act_hi_actinst 历史节点表
2) act_hi_attachment 历史附件表
3) act_hi_comment 历史意见表
4) act_hi_identitylink 历史流程人员表
5) act_hi_detail 历史详情表，提供历史变量的查询
6) act_hi_procinst 历史流程实例表
7) act_hi_taskinst 历史任务实例表
8) act_hi_varinst 历史变量表
4：组织机构表
1) act_id_group 用户组信息表
2) act_id_info 用户扩展信息表
3) act_id_membership 用户与用户组对应信息表
4) act_id_user 用户信息表
                    这四张表很常见，基本的组织机构管理，关于用户认证方面建议还是自己开发一套，组件自带的功能太简单，使用中有很多需求难以满足 
5：通用数据表
1) act_ge_bytearray 二进制数据表
2) act_ge_property 属性数据表存储整个流程引擎级别的数据,初始化表结构时，会默认插入三条记录，
```

3. 工作流API调用


#### 参与贡献

1.  Fork 本仓库
2.  新建 Feat_xxx 分支
3.  提交代码
4.  新建 Pull Request


#### 特技

1.  使用 Readme\_XXX.md 来支持不同的语言，例如 Readme\_en.md, Readme\_zh.md
2.  Gitee 官方博客 [blog.gitee.com](https://blog.gitee.com)
3.  你可以 [https://gitee.com/explore](https://gitee.com/explore) 这个地址来了解 Gitee 上的优秀开源项目
4.  [GVP](https://gitee.com/gvp) 全称是 Gitee 最有价值开源项目，是综合评定出的优秀开源项目
5.  Gitee 官方提供的使用手册 [https://gitee.com/help](https://gitee.com/help)
6.  Gitee 封面人物是一档用来展示 Gitee 会员风采的栏目 [https://gitee.com/gitee-stars/](https://gitee.com/gitee-stars/)
