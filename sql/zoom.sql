SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_attachment
-- ----------------------------
DROP TABLE IF EXISTS `sys_attachment`;
CREATE TABLE `sys_attachment`
(
    `id`           varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`      datetime                                                     DEFAULT NULL COMMENT '创建时间',
    `created_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
    `modified`     datetime                                                     DEFAULT NULL COMMENT '更新时间',
    `modified_by`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
    `status`       tinyint(1)                                                   DEFAULT NULL COMMENT '状态',
    `display_name` varchar(100) COLLATE utf8mb4_general_ci                      NOT NULL COMMENT '文件名',
    `media_type`   varchar(100) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '文件类型',
    `size`         bigint                                                       DEFAULT NULL COMMENT '大小',
    `permalink`    varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '预览地址',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-附件';

-- ----------------------------
-- Table structure for sys_biz_task
-- ----------------------------
DROP TABLE IF EXISTS `sys_biz_task`;
CREATE TABLE `sys_biz_task`
(
    `id`             varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`        datetime                                                              DEFAULT NULL COMMENT '创建时间',
    `created_by`     varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci          DEFAULT NULL COMMENT '创建人',
    `modified`       datetime                                                              DEFAULT NULL COMMENT '更新时间',
    `modified_by`    varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci          DEFAULT NULL COMMENT '更新人',
    `del_flag`       tinyint(1)                                                            DEFAULT '0' COMMENT '是否删除',
    `category`       varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '任务分类',
    `type`           varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '任务类型 E 导出 I导入',
    `business_type`  varchar(32) COLLATE utf8mb4_general_ci                                DEFAULT NULL COMMENT '所属业务',
    `task_num`       varchar(50) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '任务号',
    `task_name`      varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '任务名称',
    `dis_describe`   varchar(200) COLLATE utf8mb4_general_ci                               DEFAULT NULL COMMENT '任务描述',
    `lot_no`         varchar(100) COLLATE utf8mb4_general_ci                               DEFAULT NULL COMMENT '批次号',
    `dis_content`    text COLLATE utf8mb4_general_ci COMMENT '需要执行任务参数：任务内容',
    `file_path`      varchar(200) COLLATE utf8mb4_general_ci                               DEFAULT NULL COMMENT '文件path',
    `file_name`      varchar(200) COLLATE utf8mb4_general_ci                               DEFAULT NULL COMMENT '服务器文件名称',
    `file_url`       varchar(255) COLLATE utf8mb4_general_ci                               DEFAULT NULL COMMENT '文件链接',
    `dis_state`      tinyint(1)                                                   NOT NULL DEFAULT '0' COMMENT '任务状态',
    `dis_time_begin` datetime                                                              DEFAULT NULL COMMENT '开始时间',
    `dis_time_end`   datetime                                                              DEFAULT NULL COMMENT '结束时间',
    `dis_count`      varchar(50) COLLATE utf8mb4_general_ci                                DEFAULT NULL COMMENT '处理件数',
    `fail_count`     int                                                                   DEFAULT NULL COMMENT '失败件数',
    `message`        varchar(255) COLLATE utf8mb4_general_ci                               DEFAULT NULL COMMENT '执行结果信息',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础：任务';

-- ----------------------------
-- Table structure for sys_dict
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict`;
CREATE TABLE `sys_dict`
(
    `id`           varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`      datetime                                                     DEFAULT NULL COMMENT '创建时间',
    `created_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
    `modified`     datetime                                                     DEFAULT NULL COMMENT '更新时间',
    `modified_by`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
    `status`       tinyint(1)                                                   DEFAULT NULL COMMENT '状态',
    `del_flag`     tinyint(1)                                                   DEFAULT '0' COMMENT '是否删除',
    `dict_name`    varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '字典名称',
    `dict_code`    varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '字典编码',
    `dict_type`    varchar(32) COLLATE utf8mb4_general_ci                       DEFAULT NULL COMMENT '数据类型',
    `extra_schema` json                                                         DEFAULT NULL COMMENT '扩展参数',
    `description`  varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '描述',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-数据字典';

-- ----------------------------
-- Table structure for sys_dict_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_item`;
CREATE TABLE `sys_dict_item`
(
    `id`          varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`     datetime                                                     DEFAULT NULL COMMENT '创建时间',
    `created_by`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
    `modified`    datetime                                                     DEFAULT NULL COMMENT '更新时间',
    `modified_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
    `status`      tinyint(1)                                                   DEFAULT NULL COMMENT '状态',
    `del_flag`    tinyint(1)                                                   DEFAULT '0' COMMENT '是否删除',
    `dict_id`     varchar(32) COLLATE utf8mb4_general_ci                       DEFAULT NULL COMMENT '字典ID',
    `item_text`   varchar(32) COLLATE utf8mb4_general_ci                       DEFAULT NULL COMMENT '字典项名称',
    `item_value`  varchar(100) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '字典项值',
    `extra`       json                                                         DEFAULT NULL COMMENT '额外参数',
    `description` varchar(200) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '描述',
    `sort`        int                                                          DEFAULT NULL COMMENT '排序',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-数据字典项';

-- ----------------------------
-- Table structure for sys_message
-- ----------------------------
DROP TABLE IF EXISTS `sys_message`;
CREATE TABLE `sys_message`
(
    `id`               varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`          datetime                                                     DEFAULT NULL COMMENT '创建时间',
    `created_by`       varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
    `modified`         datetime                                                     DEFAULT NULL COMMENT '更新时间',
    `modified_by`      varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
    `del_flag`         tinyint(1)                                                   DEFAULT '0' COMMENT '是否删除',
    `msg_type`         varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '消息类型',
    `msg_title`        varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '消息标题',
    `msg_receiver`     varchar(200) COLLATE utf8mb4_general_ci                      NOT NULL COMMENT '接收者',
    `msg_param`        varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '参数',
    `msg_content`      text COLLATE utf8mb4_general_ci                              NOT NULL COMMENT '内容',
    `msg_content_html` text COLLATE utf8mb4_general_ci COMMENT '内容 html',
    `msg_send_time`    datetime                                                     DEFAULT NULL COMMENT '推送时间',
    `msg_send_status`  int                                                          DEFAULT '0' COMMENT '推送状态 -1-不再推送 0-未推送 1-推送成功 2-推送失败',
    `msg_send_num`     int                                                          DEFAULT NULL COMMENT '推送次数',
    `msg_result`       varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '失败原因',
    `remark`           varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '备注',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-消息中心';

-- ----------------------------
-- Table structure for sys_message_subscribe
-- ----------------------------
DROP TABLE IF EXISTS `sys_message_subscribe`;
CREATE TABLE `sys_message_subscribe`
(
    `id`          varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`     datetime                                                     DEFAULT NULL COMMENT '创建时间',
    `created_by`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
    `modified`    datetime                                                     DEFAULT NULL COMMENT '更新时间',
    `modified_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
    `del_flag`    tinyint(1)                                                   DEFAULT '0' COMMENT '是否删除',
    `module`      varchar(32) COLLATE utf8mb4_general_ci                       DEFAULT NULL COMMENT '归属模块',
    `name`        varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '消息名称',
    `code`        varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '消息标识',
    `desc`        varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '描述',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-订阅消息管理';

-- ----------------------------
-- Table structure for sys_message_template
-- ----------------------------
DROP TABLE IF EXISTS `sys_message_template`;
CREATE TABLE `sys_message_template`
(
    `id`                    varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`               datetime                                                     DEFAULT NULL COMMENT '创建时间',
    `created_by`            varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
    `modified`              datetime                                                     DEFAULT NULL COMMENT '更新时间',
    `modified_by`           varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
    `status`                tinyint(1)                                                   DEFAULT '1' COMMENT '状态',
    `del_flag`              tinyint(1)                                                   DEFAULT '0' COMMENT '是否删除',
    `template_type`         varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '消息类型',
    `template_code`         varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '模板code',
    `template_name`         varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '模板名称',
    `template_content_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci COMMENT '模板内容 text',
    `template_content_html` text COLLATE utf8mb4_general_ci COMMENT '模板内容 html',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-消息模板';

-- ----------------------------
-- Table structure for sys_notice_message
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice_message`;
CREATE TABLE `sys_notice_message`
(
    `id`          varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`     datetime                                                     DEFAULT NULL COMMENT '创建时间',
    `created_by`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
    `modified`    datetime                                                     DEFAULT NULL COMMENT '更新时间',
    `modified_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
    `status`      tinyint(1)                                                   DEFAULT '0' COMMENT '状态 0-未读 1-已读',
    `classify`    varchar(32) COLLATE utf8mb4_general_ci                       DEFAULT NULL COMMENT '消息分类 公告，通知',
    `title`       varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '标题',
    `content`     text COLLATE utf8mb4_general_ci                              NOT NULL COMMENT '内容',
    `receiver_id` varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '接收者',
    `receiver`    varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '接收者',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-站内消息';

-- ----------------------------
-- Table structure for sys_open_api
-- ----------------------------
DROP TABLE IF EXISTS `sys_open_api`;
CREATE TABLE `sys_open_api`
(
    `id`          varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`     datetime                                                     DEFAULT NULL COMMENT '创建时间',
    `created_by`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
    `modified`    datetime                                                     DEFAULT NULL COMMENT '更新时间',
    `modified_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
    `status`      tinyint(1)                                                   DEFAULT NULL COMMENT '状态',
    `del_flag`    tinyint(1)                                                   DEFAULT '0' COMMENT '是否删除',
    `api_code`    varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '标识',
    `api_name`    varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '名称',
    `module`      varchar(32) COLLATE utf8mb4_general_ci                       DEFAULT NULL COMMENT '归属',
    `description` varchar(200) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '描述',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-开放接口\n';

-- ----------------------------
-- Table structure for sys_operator_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_operator_log`;
CREATE TABLE `sys_operator_log`
(
    `id`            varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`       datetime                                                      DEFAULT NULL COMMENT '创建时间',
    `created_by`    varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT NULL COMMENT '创建人',
    `modified`      datetime                                                      DEFAULT NULL COMMENT '更新时间',
    `modified_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT NULL COMMENT '更新人',
    `operator_id`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT NULL COMMENT '操作人ID',
    `operator`      varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT NULL COMMENT '操作人',
    `trace_id`      varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'traceId',
    `address`       varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'ip',
    `location`      varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '所在地',
    `user_agent`    varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'userAgent',
    `module`        varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT NULL COMMENT '操作模块',
    `type`          varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '动作',
    `risk_level`    varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT NULL COMMENT '风险等级 ',
    `log_info`      varchar(100) COLLATE utf8mb4_general_ci                       DEFAULT NULL COMMENT '操作内容',
    `extra`         json                                                          DEFAULT NULL COMMENT '请求内容',
    `result`        tinyint(1)                                                    DEFAULT NULL COMMENT '结果',
    `error_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '错误信息',
    `return_value`  json                                                          DEFAULT NULL COMMENT '响应内容',
    `duration`      int                                                           DEFAULT NULL COMMENT '操作时间',
    `start_time`    datetime                                                      DEFAULT NULL COMMENT '开始时间',
    `end_time`      datetime                                                      DEFAULT NULL COMMENT '结束时间',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-操作日志';

-- ----------------------------
-- Table structure for sys_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_permission`;
CREATE TABLE `sys_permission`
(
    `id`               varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`          datetime                                                      DEFAULT NULL COMMENT '创建时间',
    `created_by`       varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT NULL COMMENT '创建人',
    `modified`         datetime                                                      DEFAULT NULL COMMENT '更新时间',
    `modified_by`      varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT NULL COMMENT '更新人',
    `parent_id`        varchar(32) COLLATE utf8mb4_general_ci                        DEFAULT NULL COMMENT '父id',
    `is_leaf`          tinyint(1)                                                    DEFAULT '1' COMMENT '是否叶子节点: 1:是 0:不是',
    `route_path`       varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '路由地址',
    `route_name`       varchar(100) COLLATE utf8mb4_general_ci                       DEFAULT NULL COMMENT '路由名称（必须保持唯一）',
    `redirect`         varchar(100) COLLATE utf8mb4_general_ci                       DEFAULT NULL COMMENT '路由重定向',
    `component`        varchar(100) COLLATE utf8mb4_general_ci                       DEFAULT NULL COMMENT '路由组件',
    `title`            varchar(32) COLLATE utf8mb4_general_ci                        DEFAULT NULL COMMENT '菜单名称',
    `icon`             varchar(32) COLLATE utf8mb4_general_ci                        DEFAULT NULL COMMENT '菜单图标',
    `is_hidden`        tinyint(1)                                                    DEFAULT '0' COMMENT '是否隐藏 0 否 1是',
    `is_keep_alive`    tinyint(1)                                                    DEFAULT '0' COMMENT '是否缓存 0 否 1 是',
    `is_affix`         tinyint(1)                                                    DEFAULT '0' COMMENT '是否固定tag 0 否 1是',
    `is_full_screen`   tinyint(1)                                                    DEFAULT '0' COMMENT '是否大屏 0否 1是',
    `is_require_login` tinyint(1)                                                    DEFAULT '1' COMMENT '是否登陆 0 否 1是',
    `frame_src`        varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'iframe_url',
    `menu_type`        tinyint(1)                                                    DEFAULT NULL COMMENT '菜单类型 0 菜单 1 frame 2 外链 4 按钮',
    `perms`            varchar(32) COLLATE utf8mb4_general_ci                        DEFAULT NULL COMMENT '权限标识符',
    `sort`             int                                                           DEFAULT NULL COMMENT '排序',
    `status`           tinyint(1)                                                    DEFAULT NULL COMMENT '状态 0 禁用 1 启用',
    `del_flag`         tinyint(1)                                                    DEFAULT '0' COMMENT '是否删除 0 否 1是',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-菜单权限';

-- ----------------------------
-- Table structure for sys_quartz_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_quartz_job`;
CREATE TABLE `sys_quartz_job`
(
    `id`              varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`         datetime                                                     DEFAULT NULL COMMENT '创建时间',
    `created_by`      varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
    `modified`        datetime                                                     DEFAULT NULL COMMENT '更新时间',
    `modified_by`     varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
    `status`          tinyint(1)                                                   DEFAULT NULL COMMENT '状态',
    `del_flag`        tinyint(1)                                                   DEFAULT '0' COMMENT '是否删除',
    `app_name`        varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '应用名称',
    `job_class_name`  varchar(255) COLLATE utf8mb4_general_ci                      NOT NULL COMMENT '执行的任务类名',
    `parameter`       varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '参数',
    `description`     varchar(200) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '描述',
    `cron_expression` varchar(100) COLLATE utf8mb4_general_ci                      NOT NULL COMMENT 'cron表达式',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-定时任务';

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`
(
    `id`          varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`     datetime                                                      DEFAULT NULL COMMENT '创建时间',
    `created_by`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT NULL COMMENT '创建人',
    `modified`    datetime                                                      DEFAULT NULL COMMENT '更新时间',
    `modified_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT NULL COMMENT '更新人',
    `role_name`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色名称',
    `role_code`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色编码',
    `remark`      varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '描述',
    `status`      tinyint(1)                                                    DEFAULT NULL COMMENT '状态 0禁用 1启用',
    `del_flag`    tinyint(1)                                                    DEFAULT NULL COMMENT '是否删除 0否 1是',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-角色';

-- ----------------------------
-- Table structure for sys_role_open_api
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_open_api`;
CREATE TABLE `sys_role_open_api`
(
    `id`          varchar(32) COLLATE utf8mb4_general_ci NOT NULL COMMENT '主键',
    `created`     datetime                               DEFAULT NULL COMMENT '创建时间',
    `created_by`  varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
    `modified`    datetime                               DEFAULT NULL COMMENT '更新时间',
    `modified_by` varchar(32) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
    `role_id`     varchar(32) COLLATE utf8mb4_general_ci NOT NULL COMMENT '角色ID',
    `open_api_id` varchar(32) COLLATE utf8mb4_general_ci NOT NULL COMMENT 'openApiId',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-角色-openApi';

-- ----------------------------
-- Table structure for sys_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_permission`;
CREATE TABLE `sys_role_permission`
(
    `id`            varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`       datetime                                                     DEFAULT NULL COMMENT '创建时间',
    `created_by`    varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
    `modified`      datetime                                                     DEFAULT NULL COMMENT '更新时间',
    `modified_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
    `role_id`       varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '角色ID',
    `permission_id` varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '菜单ID',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-角色权限';

-- ----------------------------
-- Table structure for sys_serial_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_serial_config`;
CREATE TABLE `sys_serial_config`
(
    `CATEGORY`    varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '001;分类',
    `PREFIX`      varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '002;前缀',
    `POSTFIX`     varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT '' COMMENT '003;后缀',
    `LENGTH`      tinyint                                                       DEFAULT '0' COMMENT '004;总长度',
    `DATESTR_LEN` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT '' COMMENT '005;日期部分长度',
    `CYCLE_WAY`   varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT '' COMMENT '006;循环方式',
    `CYCLE_VALUE` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT '' COMMENT '007;当前循环值',
    `SN`          bigint                                                        DEFAULT '0' COMMENT '008;当前序号',
    `RESULT`      varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  DEFAULT '' COMMENT '009;采番结果',
    `REMARK`      varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT '' COMMENT '010;备注',
    PRIMARY KEY (`CATEGORY`, `PREFIX`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='序列号管理';

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`
(
    `id`              varchar(32) COLLATE utf8mb4_general_ci NOT NULL,
    `created`         datetime                                                     DEFAULT NULL COMMENT '创建时间',
    `created_by`      varchar(32) COLLATE utf8mb4_general_ci                       DEFAULT NULL COMMENT '创建人',
    `modified`        datetime                                                     DEFAULT NULL COMMENT '更新时间',
    `modified_by`     varchar(32) COLLATE utf8mb4_general_ci                       DEFAULT NULL COMMENT '更新人',
    `username`        varchar(32) COLLATE utf8mb4_general_ci NOT NULL COMMENT '账号',
    `password`        varchar(64) COLLATE utf8mb4_general_ci NOT NULL COMMENT '密码',
    `salt`            varchar(64) COLLATE utf8mb4_general_ci NOT NULL COMMENT '盐值',
    `nickname`        varchar(32) COLLATE utf8mb4_general_ci                       DEFAULT NULL COMMENT '昵称',
    `avatar`          varchar(200) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '头像',
    `email`           varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '邮箱',
    `hash_email`      varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '邮箱hash值',
    `phone`           varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '手机号',
    `hash_phone`      varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '手机号hash值',
    `last_login_time` datetime                                                     DEFAULT NULL COMMENT '最后登录时间',
    `gender`          tinyint                                                      DEFAULT NULL COMMENT '性别 0-未知 1-男 2-女\n',
    `is_system`       tinyint(1)                                                   DEFAULT '0' COMMENT '是否内置',
    `status`          tinyint                                                      DEFAULT '1' COMMENT '状态 0-禁用 1-启用\n',
    `del_flag`        tinyint(1)                                                   DEFAULT '0' COMMENT '删除标记',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-用户';

-- ----------------------------
-- Table structure for sys_user_access_token
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_access_token`;
CREATE TABLE `sys_user_access_token`
(
    `id`           varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`      datetime                                                     DEFAULT NULL COMMENT '创建时间',
    `created_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
    `modified`     datetime                                                     DEFAULT NULL COMMENT '更新时间',
    `modified_by`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
    `status`       tinyint(1)                                                   DEFAULT '1' COMMENT '状态',
    `name`         varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '名称',
    `user_id`      varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '用户ID',
    `access_token` varchar(200) COLLATE utf8mb4_general_ci                      NOT NULL COMMENT '访问令牌',
    `expire_time`  datetime                                                     DEFAULT NULL COMMENT '过期时间',
    `description`  varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '描述',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-用户访问令牌';

-- ----------------------------
-- Table structure for sys_user_access_token_open_api
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_access_token_open_api`;
CREATE TABLE `sys_user_access_token_open_api`
(
    `id`              varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci  NOT NULL,
    `created`         datetime                                                     DEFAULT NULL COMMENT '创建时间',
    `created_by`      varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
    `modified`        datetime                                                     DEFAULT NULL COMMENT '更新时间',
    `modified_by`     varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
    `open_api_id`     varchar(32) COLLATE utf8mb4_general_ci                        NOT NULL COMMENT '开放接口ID',
    `access_token_id` varchar(32) COLLATE utf8mb4_general_ci                        NOT NULL COMMENT '访问令牌ID',
    `access_token`    varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '访问令牌',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-访问令牌-开放接口';

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`
(
    `id`          varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`     datetime                                                     DEFAULT NULL COMMENT '创建时间',
    `created_by`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
    `modified`    datetime                                                     DEFAULT NULL COMMENT '更新时间',
    `modified_by` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
    `user_id`     varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '用户ID',
    `role_id`     varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '角色ID',
    `end_time`    datetime                                                     DEFAULT NULL COMMENT '结束时间',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-用户角色';

-- ----------------------------
-- Table structure for sys_user_settings
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_settings`;
CREATE TABLE `sys_user_settings`
(
    `id`                   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`              datetime                                                              DEFAULT NULL COMMENT '创建时间',
    `created_by`           varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci          DEFAULT NULL COMMENT '创建人',
    `modified`             datetime                                                              DEFAULT NULL COMMENT '更新时间',
    `modified_by`          varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci          DEFAULT NULL COMMENT '更新人',
    `user_id`              varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT '用户ID',
    `message_notification` tinyint(1)                                                   NOT NULL DEFAULT '1' COMMENT '是否开启消息通知',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-用户设置';

-- ----------------------------
-- Table structure for sys_user_social
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_social`;
CREATE TABLE `sys_user_social`
(
    `id`                 varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`            datetime                                                     DEFAULT NULL COMMENT '创建时间',
    `created_by`         varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
    `modified`           datetime                                                     DEFAULT NULL COMMENT '更新时间',
    `modified_by`        varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
    `user_id`            varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '用户ID',
    `auth_id`            varchar(255) COLLATE utf8mb4_general_ci                      NOT NULL COMMENT '平台+平台唯一id',
    `source`             varchar(255) COLLATE utf8mb4_general_ci                      NOT NULL COMMENT '用户来源',
    `open_id`            varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '平台编号唯一id',
    `user_name`          varchar(30) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '登录账号',
    `nick_name`          varchar(30) COLLATE utf8mb4_general_ci                       DEFAULT '' COMMENT '用户昵称',
    `email`              varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT '' COMMENT '用户邮箱',
    `avatar`             varchar(500) COLLATE utf8mb4_general_ci                      DEFAULT '' COMMENT '头像地址',
    `access_token`       varchar(255) COLLATE utf8mb4_general_ci                      NOT NULL COMMENT '用户的授权令牌',
    `expire_in`          int                                                          DEFAULT NULL COMMENT '用户的授权令牌的有效期，部分平台可能没有',
    `refresh_token`      varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '刷新令牌，部分平台可能没有',
    `access_code`        varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '平台的授权信息，部分平台可能没有',
    `union_id`           varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '用户的 unionid',
    `scope`              varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '授予的权限，部分平台可能没有',
    `token_type`         varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '个别平台的授权信息，部分平台可能没有',
    `id_token`           varchar(2000) COLLATE utf8mb4_general_ci                     DEFAULT NULL COMMENT 'id token，部分平台可能没有',
    `mac_algorithm`      varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '小米平台用户的附带属性，部分平台可能没有',
    `mac_key`            varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '小米平台用户的附带属性，部分平台可能没有',
    `code`               varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT '用户的授权code，部分平台可能没有',
    `oauth_token`        varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT 'Twitter平台用户的附带属性，部分平台可能没有',
    `oauth_token_secret` varchar(255) COLLATE utf8mb4_general_ci                      DEFAULT NULL COMMENT 'Twitter平台用户的附带属性，部分平台可能没有',
    PRIMARY KEY (`id`(8))
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-社会化关系表';

-- ----------------------------
-- Table structure for sys_user_subscribe_msg
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_subscribe_msg`;
CREATE TABLE `sys_user_subscribe_msg`
(
    `id`           varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
    `created`      datetime                                                     DEFAULT NULL COMMENT '创建时间',
    `created_by`   varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '创建人',
    `modified`     datetime                                                     DEFAULT NULL COMMENT '更新时间',
    `modified_by`  varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT '更新人',
    `user_id`      varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '用户ID',
    `subscribe_id` varchar(32) COLLATE utf8mb4_general_ci                       NOT NULL COMMENT '订阅ID',
    `is_site`      tinyint(1)                                                   DEFAULT '0' COMMENT '是否订阅站内消息',
    `is_email`     tinyint(1)                                                   DEFAULT '0' COMMENT '是否订阅邮箱消息',
    `is_sms`       tinyint(1)                                                   DEFAULT '0' COMMENT '是否订阅短信消息',
    PRIMARY KEY (`id`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_general_ci COMMENT ='基础-用户订阅消息';

SET FOREIGN_KEY_CHECKS = 1;
