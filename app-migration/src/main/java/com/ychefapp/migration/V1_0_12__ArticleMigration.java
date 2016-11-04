package com.ychefapp.migration;

import org.flywaydb.core.api.migration.spring.SpringJdbcMigration;
import org.springframework.jdbc.core.JdbcTemplate;

public class V1_0_12__ArticleMigration implements SpringJdbcMigration {


    JdbcTemplate jdbcTemplate;

    @Override
    public void migrate(JdbcTemplate jdbcTemplate) throws Exception {
        this.jdbcTemplate = jdbcTemplate;
        createArticleTables();
        addForeignKey();
    }

    public void createArticleTables() {
        jdbcTemplate.execute(
                "CREATE TABLE IF NOT EXISTS articles (" +
                        "  id                       BIGINT AUTO_INCREMENT PRIMARY KEY," +
                        "  title                    VARCHAR(128)," +
                        "  introduction             VARCHAR(255)," +
                        "  date_created             DATETIME," +
                        "  date_updated             DATETIME," +
                        "  owner_id                 BIGINT," +
                        "  version                  BIGINT" +
                        ")"
        );
    }

    public void addForeignKey() {
        jdbcTemplate.update(
                "ALTER TABLE articles " +
                        "ADD CONSTRAINT fk_article_owner_id FOREIGN KEY (owner_id) REFERENCES users (id) "
        );
    }
}