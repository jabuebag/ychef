package com.ychefapp.migration;

import org.flywaydb.core.api.migration.spring.SpringJdbcMigration;
import org.springframework.jdbc.core.JdbcTemplate;

public class V1_0_9__EventAddTitleMigration implements SpringJdbcMigration {

    JdbcTemplate jdbcTemplate;

    @Override
    public void migrate(JdbcTemplate jdbcTemplate) throws Exception {
        this.jdbcTemplate = jdbcTemplate;
        addTitleAndIdColoumn();
    }

    void addTitleAndIdColoumn() {
        jdbcTemplate.execute(
                "ALTER TABLE events ADD COLUMN title VARCHAR(128)"
        );

        jdbcTemplate.execute(
                "ALTER TABLE events ADD COLUMN token VARCHAR(128)"
        );
    }
}
