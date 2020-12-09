-- ������OA�汾��Ҫִ�д˽ű���������

-- ----------------------------
-- Table structure for wf_form
-- ----------------------------
DROP TABLE IF EXISTS `wf_form`;
CREATE TABLE `wf_form`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����',
  `code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '������',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '������',
  `type` tinyint(2) NOT NULL DEFAULT 0 COMMENT '�����͡�0���򵥱���1�����ӱ���',
  `theme` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '�����⡣������Ĭ��Ϊ������',
  `design_data` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '��������ݡ�',
  `js_code` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '��js���롣�������ӱ�����',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '����ʱ��',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '����ʱ��',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '����Ʊ�' ROW_FORMAT = Dynamic;


-- ----------------------------
-- Table structure for wf_process_form
-- ----------------------------
DROP TABLE IF EXISTS `wf_process_form`;
CREATE TABLE `wf_process_form`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '����',
  `model_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '����ģ��ID',
  `form_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '������',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '���̱�������' ROW_FORMAT = Dynamic;



-- ϵͳ�˵�����빤��������ز˵�����
INSERT INTO `sys_menu` VALUES (40, 0, '��������', '', NULL, 0, 'fa fa-google-wallet', 0, 0, NULL, '2020-04-20 20:19:38');
INSERT INTO `sys_menu` VALUES (41, 40, '���̹���', 'workflow/process/index', 'workflow:process:index', 1, NULL, 0, 0, NULL, '2020-04-20 20:21:03');
INSERT INTO `sys_menu` VALUES (42, 40, '�ҵĴ���', 'workflow/mytodo/index', 'workflow:mytodo:index', 1, NULL, 0, 3, NULL, '2020-04-20 20:22:33');
INSERT INTO `sys_menu` VALUES (43, 40, '�ҵ��Ѱ�', 'workflow/mydone/index', 'workflow:mydone:index', 1, NULL, 0, 4, NULL, '2020-04-20 20:24:15');
INSERT INTO `sys_menu` VALUES (44, 40, '�ҵ�����', 'workflow/myapply/index', 'workflow:myapply:index', 1, NULL, 0, 5, NULL, '2020-04-20 20:27:01');
INSERT INTO `sys_menu` VALUES (45, 40, '������', 'workflow/form/index', 'workflow:form:index', 1, NULL, 0, 1, NULL, '2020-04-20 20:29:59');
INSERT INTO `sys_menu` VALUES (46, 40, '�ҵ�����', 'workflow/myprocess/index', 'workflow:myprocess:index', 1, NULL, 0, 2, NULL, '2020-04-20 20:30:45');
INSERT INTO `sys_menu` VALUES (47, 41, '����', NULL, 'workflow:process:add', 2, NULL, 0, 0, NULL, '2020-05-10 23:40:52');
INSERT INTO `sys_menu` VALUES (48, 41, '���', NULL, 'workflow:process:designer', 2, NULL, 0, 1, NULL, '2020-05-10 23:41:55');
INSERT INTO `sys_menu` VALUES (49, 41, 'ɾ��', NULL, 'workflow:process:delete', 2, NULL, 0, 2, NULL, '2020-05-10 23:42:28');
INSERT INTO `sys_menu` VALUES (50, 41, '����', NULL, 'workflow:process:suspend', 2, NULL, 0, 3, NULL, '2020-05-10 23:43:35');
INSERT INTO `sys_menu` VALUES (51, 41, '����', NULL, 'workflow:process:activate', 2, NULL, 0, 4, NULL, '2020-05-10 23:43:56');
INSERT INTO `sys_menu` VALUES (52, 41, '����', NULL, 'workflow:process:export', 2, NULL, 0, 5, NULL, '2020-05-10 23:44:41');
INSERT INTO `sys_menu` VALUES (53, 41, '����', NULL, 'workflow:process:import', 2, NULL, 0, 6, NULL, '2020-05-10 23:44:55');
INSERT INTO `sys_menu` VALUES (54, 41, '����', NULL, 'workflow:process:setting', 2, NULL, 0, 7, NULL, '2020-05-10 23:45:24');
INSERT INTO `sys_menu` VALUES (55, 41, '����', NULL, 'workflow:process:push', 2, NULL, 0, 8, NULL, '2020-05-10 23:45:55');
INSERT INTO `sys_menu` VALUES (56, 41, '����', NULL, 'workflow:process:start', 2, NULL, 0, 9, NULL, '2020-05-10 23:46:09');
INSERT INTO `sys_menu` VALUES (57, 45, '���', NULL, 'workflow:form:add', 2, NULL, 0, 0, NULL, '2020-05-10 23:46:53');
INSERT INTO `sys_menu` VALUES (58, 45, '�༭', NULL, 'workflow:form:edit', 2, NULL, 0, 1, NULL, '2020-05-10 23:47:20');
INSERT INTO `sys_menu` VALUES (59, 45, 'ɾ��', NULL, 'workflow:form:delete', 2, NULL, 0, 2, NULL, '2020-05-10 23:47:47');
INSERT INTO `sys_menu` VALUES (60, 45, 'Ԥ��', NULL, 'workflow:form:prev', 2, NULL, 0, 3, NULL, '2020-05-10 23:48:17');