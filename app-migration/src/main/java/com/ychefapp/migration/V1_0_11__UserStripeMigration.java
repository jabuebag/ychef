package com.ychefapp.migration;

import org.flywaydb.core.api.migration.spring.SpringJdbcMigration;
import org.springframework.jdbc.core.JdbcTemplate;

public class V1_0_11__UserStripeMigration implements SpringJdbcMigration {

    JdbcTemplate jdbcTemplate;

    @Override
    public void migrate(JdbcTemplate jdbcTemplate) throws Exception {
        this.jdbcTemplate = jdbcTemplate;
        alterTable();
    }

    void alterTable() {
        jdbcTemplate.execute(
                "ALTER TABLE users ADD COLUMN stripe_customer_id VARCHAR(64)"
        );
    }
}
