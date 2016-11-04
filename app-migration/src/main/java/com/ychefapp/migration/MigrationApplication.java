package com.ychefapp.migration;

import org.flywaydb.core.Flyway;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import javax.sql.DataSource;

/**
 * Created by jabue on 16-03-02.
 */
@SpringBootApplication
public class MigrationApplication {

    @Autowired
    DataSource dataSource;

    @Bean(initMethod = "migrate")
    public Flyway flyway() {
        Flyway flyway = new Flyway();
        flyway.setBaselineOnMigrate(true);
        flyway.setBaselineVersion("1_0_0");
        flyway.setLocations(
                "classpath:com.ychefapp.migration");
        flyway.setDataSource(dataSource);
        return flyway;
    }

    public static void main(String[] args) {
        SpringApplication.run(MigrationApplication.class, args);
    }
}
