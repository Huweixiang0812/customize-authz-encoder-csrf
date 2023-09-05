SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
-- ----------------------------
-- Table structure for authorities
-- ----------------------------
DROP TABLE IF EXISTS `authorities`;
CREATE TABLE `authorities`
(
    `username`  varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
                                                                             NOT NULL,
    `authority` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    UNIQUE INDEX `ix_auth_username` (`username`, `authority`) USING BTREE,
    CONSTRAINT `fk_authorities_users` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

DROP TABLE IF EXISTS `cust_user`;
CREATE TABLE `cust_user`
(
    `id`       int                                                           NOT NULL AUTO_INCREMENT,
    `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `nickname` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
                                                                             NOT NULL,
    `enabled`  tinyint                                                       NOT NULL DEFAULT 1,
    PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci
  ROW_FORMAT = Dynamic;
-- ----------------------------
-- Records of cust_user
-- ----------------------------
INSERT INTO `cust_user`
VALUES (1, 'zhangsan', '$2a$10$t.z2gAQJec6EraSA63ysYOJhKO1G92eZ/96lbhZOGVc1gLWXXcDpO', 'Tom', 1);
INSERT INTO `cust_user`
VALUES (2, 'lisi', '$2a$10$uu8p9lnZBwvmHIMrcIoFwepmQ/qozpFwt95Nq9YEJGDv/mbtSzxZ2', 'Mike', 1);
INSERT INTO `cust_user`
VALUES (3, 'wangwu', '$2a$10$HFOPPYjV27y1VJKfwpynY.C/0c0Kv6V1qSE7fwYdsmOJwWb4huJ76', 'Leo', 1);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`
(
    `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
                                                                             NOT NULL,
    `password` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
    `enabled`  tinyint(1)                                                    NOT NULL,
    PRIMARY KEY (`username`) USING BTREE
) ENGINE = InnoDB
  CHARACTER SET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;
SET FOREIGN_KEY_CHECKS = 1;