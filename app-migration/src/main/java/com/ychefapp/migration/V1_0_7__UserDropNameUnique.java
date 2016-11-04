package com.ychefapp.migration;

import org.flywaydb.core.api.migration.spring.SpringJdbcMigration;
import org.springframework.jdbc.core.JdbcTemplate;

public class V1_0_7__UserDropNameUnique implements SpringJdbcMigration {

    JdbcTemplate jdbcTemplate;

    @Override
    public void migrate(JdbcTemplate jdbcTemplate) throws Exception {
        this.jdbcTemplate = jdbcTemplate;
        alterTable();
    }

    void alterTable() {
        jdbcTemplate.execute(
                "ALTER TABLE users DROP INDEX username"
        );

        jdbcTemplate.execute(
                "ALTER TABLE users MODIFY username varchar(64) null;"
        );
    }

}
