package com.ychefapp.migration;

import org.flywaydb.core.api.migration.spring.SpringJdbcMigration;
import org.springframework.jdbc.core.JdbcTemplate;

public class V1_0_8__EventMigration implements SpringJdbcMigration {

    JdbcTemplate jdbcTemplate;

    @Override
    public void migrate(JdbcTemplate jdbcTemplate) throws Exception {
        this.jdbcTemplate = jdbcTemplate;
        createTable();
        addForeignKey();
    }

    void createTable() {
        jdbcTemplate.execute(
                "CREATE TABLE IF NOT EXISTS events (" +
                        "  id                       BIGINT AUTO_INCREMENT PRIMARY KEY," +
                        "  status                   VARCHAR(32)," +
                        "  start_date               DATETIME," +
                        "  end_date                 DATETIME," +
                        "  date_created             DATETIME," +
                        "  last_updated             DATETIME," +
                        "  listing_id               BIGINT, " +
                        "  version                  BIGINT" +
                        ")"
        );
    }

    public void addForeignKey() {
        jdbcTemplate.update(
                "ALTER TABLE events " +
                        "ADD CONSTRAINT fk_events_listing_id FOREIGN KEY (listing_id) REFERENCES listings (id) "

        );

    }

}
