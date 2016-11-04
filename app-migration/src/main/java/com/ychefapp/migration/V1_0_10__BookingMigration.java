package com.ychefapp.migration;

import org.flywaydb.core.api.migration.spring.SpringJdbcMigration;
import org.springframework.jdbc.core.JdbcTemplate;

public class V1_0_10__BookingMigration implements SpringJdbcMigration {

    JdbcTemplate jdbcTemplate;

    @Override
    public void migrate(JdbcTemplate jdbcTemplate) throws Exception {
        this.jdbcTemplate = jdbcTemplate;
        createTable();
        addForiegnKey();
    }

    void createTable() {
        jdbcTemplate.execute(
                "CREATE TABLE IF NOT EXISTS bookings (" +
                        "  id                       BIGINT AUTO_INCREMENT PRIMARY KEY," +
                        "  price                    DOUBLE," +
                        "  quantity                 INTEGER," +
                        "  date_created             DATETIME," +
                        "  status                   VARCHAR(32)," +
                        "  event_id                 BIGINT," +
                        "  code                     BIGINT UNIQUE," +
                        "  date_updated             DATETIME," +
                        "  owner_id                 BIGINT," +
                        "  updated_by               BIGINT," +
                        "  message                  VARCHAR(1024)," +
                        "  version                  BIGINT," +
                        "  phone_no                 VARCHAR(32)," +
                        "  card_id                  VARCHAR(64)," +
                        "  date_charged             LONG," +
                        "  charge_id                VARCHAR(64)," +
                        "  date_refunded            DATETIME," +
                        "  refund_id                VARCHAR(64)," +
                        "  date_cancelled           DATETIME," +
                        "  date_declined            DATETIME," +
                        "  email                    VARCHAR(128)" +
                        ")"
        );
    }

    void addForiegnKey() {
        jdbcTemplate.execute(
                "ALTER TABLE bookings " +
                        "ADD CONSTRAINT fk_orders_owner_id FOREIGN KEY (owner_id) REFERENCES users (id), " +
                        "ADD CONSTRAINT fk_orders_updated_by FOREIGN KEY (updated_by) REFERENCES users (id), " +
                        "ADD CONSTRAINT fk_orders_event_id FOREIGN KEY (event_id) REFERENCES events (id) "
        );
    }
}
