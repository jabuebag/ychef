package com.ychefapp.migration;

import org.flywaydb.core.api.migration.spring.SpringJdbcMigration;
import org.springframework.jdbc.core.JdbcTemplate;

public class V1_0_13__ImageEventMigration implements SpringJdbcMigration {


    JdbcTemplate jdbcTemplate;

    @Override
    public void migrate(JdbcTemplate jdbcTemplate) throws Exception {
        this.jdbcTemplate = jdbcTemplate;
        alertTables();
    }

    public void alertTables() {
        jdbcTemplate.execute("ALTER TABLE ychefapp.images DROP FOREIGN KEY fk_images_owner_id");
        jdbcTemplate.execute("DROP INDEX fk_images_owner_id ON ychefapp.images");
        jdbcTemplate.execute("ALTER TABLE ychefapp.images DROP owner_id");
    }
}