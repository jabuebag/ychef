package com.ychefapp.migration;

import org.flywaydb.core.api.migration.spring.SpringJdbcMigration;
import org.springframework.jdbc.core.JdbcTemplate;

public class V1_0_14__ArticleImgMigration implements SpringJdbcMigration {


    JdbcTemplate jdbcTemplate;

    @Override
    public void migrate(JdbcTemplate jdbcTemplate) throws Exception {
        this.jdbcTemplate = jdbcTemplate;
        createArticleImgTable();
        addForeignKeys();
    }

    public void createArticleImgTable() {
        jdbcTemplate.execute(
                "CREATE TABLE IF NOT EXISTS articles_images (" +
                        "  id                       BIGINT AUTO_INCREMENT PRIMARY KEY," +
                        "  image_id                 BIGINT, " +
                        "  article_id               BIGINT " +
                        ")"
        );
    }

    public void addForeignKeys() {
        jdbcTemplate.update(
                "ALTER TABLE articles_images " +
                        "ADD CONSTRAINT fk_article_image_id FOREIGN KEY (image_id) REFERENCES images (id), " +
                        "ADD CONSTRAINT fk_article_image_article_id FOREIGN KEY (article_id) REFERENCES articles (id), " +
                        "ADD CONSTRAINT uni_article_id_image_id UNIQUE (article_id, image_id) "

        );
    }
}