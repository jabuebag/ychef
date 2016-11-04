package com.ychefapp.migration;

import org.flywaydb.core.api.migration.spring.SpringJdbcMigration;
import org.springframework.jdbc.core.JdbcTemplate;

public class V1_0_6__ListingRevDayMigration implements SpringJdbcMigration {

    JdbcTemplate jdbcTemplate;

    @Override
    public void migrate(JdbcTemplate jdbcTemplate) throws Exception {
        this.jdbcTemplate = jdbcTemplate;
        alterTable();
    }

    void alterTable() {
        jdbcTemplate.execute(
                "ALTER TABLE listings ADD COLUMN rev_days INTEGER"
        );
    }

}
