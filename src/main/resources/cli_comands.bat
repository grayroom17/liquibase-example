liquibase --driver=org.postgresql.Driver --classpath="C:\Users\user\.gradle\caches\modules-2\files-2.1\org.postgresql\postgresql\42.7.4\264310fd7b2cd76738787dc0b9f7ea2e3b11adc1\postgresql-42.7.4.jar" --changeLogFile=db-changelog.xml --url="jdbc:postgresql://localhost:5433/postgres" --username=postgres --password=postgres rollbackCount 1
liquibase --driver=org.postgresql.Driver --classpath="C:\Users\user\.gradle\caches\modules-2\files-2.1\org.postgresql\postgresql\42.7.4\264310fd7b2cd76738787dc0b9f7ea2e3b11adc1\postgresql-42.7.4.jar" --changeLogFile=db-changelog.xml --url="jdbc:postgresql://localhost:5433/postgres" --username=postgres --password=postgres tag before_create_index
liquibase --driver=org.postgresql.Driver --classpath="C:\Users\user\.gradle\caches\modules-2\files-2.1\org.postgresql\postgresql\42.7.4\264310fd7b2cd76738787dc0b9f7ea2e3b11adc1\postgresql-42.7.4.jar" --changeLogFile=db-changelog.xml --url="jdbc:postgresql://localhost:5433/postgres" --username=postgres --password=postgres rollback before_create_index
liquibase --driver=org.postgresql.Driver --classpath="C:\Users\user\.gradle\caches\modules-2\files-2.1\org.postgresql\postgresql\42.7.4\264310fd7b2cd76738787dc0b9f7ea2e3b11adc1\postgresql-42.7.4.jar" --changeLogFile=db-changelog.xml --url="jdbc:postgresql://localhost:5433/postgres" --username=postgres --password=postgres rollbackToDate 2024-10-22T00:00:00
liquibase --driver=org.postgresql.Driver --classpath="C:\Users\user\.gradle\caches\modules-2\files-2.1\org.postgresql\postgresql\42.7.4\264310fd7b2cd76738787dc0b9f7ea2e3b11adc1\postgresql-42.7.4.jar" --changeLogFile=db-changelog.xml --url="jdbc:postgresql://localhost:5433/postgres" --username=postgres --password=postgres updatesql
liquibase --driver=org.postgresql.Driver --classpath="C:\Users\user\.gradle\caches\modules-2\files-2.1\org.postgresql\postgresql\42.7.4\264310fd7b2cd76738787dc0b9f7ea2e3b11adc1\postgresql-42.7.4.jar" --changeLogFile=db-changelog.xml --url="jdbc:postgresql://localhost:5433/postgres" --username=postgres --password=postgres --outputFile=update.sql updatesql
liquibase --driver=org.postgresql.Driver --classpath="C:\Users\user\.gradle\caches\modules-2\files-2.1\org.postgresql\postgresql\42.7.4\264310fd7b2cd76738787dc0b9f7ea2e3b11adc1\postgresql-42.7.4.jar" --changeLogFile=db-changelog.xml --url="jdbc:postgresql://localhost:5433/postgres" --username=postgres --password=postgres futureRollbackSql
liquibase --driver=org.postgresql.Driver --classpath="C:\Users\user\.gradle\caches\modules-2\files-2.1\org.postgresql\postgresql\42.7.4\264310fd7b2cd76738787dc0b9f7ea2e3b11adc1\postgresql-42.7.4.jar" --changeLogFile=db-changelog.xml --url="jdbc:postgresql://localhost:5433/postgres" --username=postgres --password=postgres --outputFile=rollback.sql futureRollbackSql
liquibase --driver=org.postgresql.Driver --classpath="C:\Users\user\.gradle\caches\modules-2\files-2.1\org.postgresql\postgresql\42.7.4\264310fd7b2cd76738787dc0b9f7ea2e3b11adc1\postgresql-42.7.4.jar" --changeLogFile=db-changelog.xml --url="jdbc:postgresql://localhost:5433/postgres" --username=postgres --password=postgres updateTestingRollback

liquibase --driver=org.postgresql.Driver --classpath="C:\Users\user\.gradle\caches\modules-2\files-2.1\org.postgresql\postgresql\42.7.4\264310fd7b2cd76738787dc0b9f7ea2e3b11adc1\postgresql-42.7.4.jar" --changeLogFile=../legacy/db-changelog.xml --url="jdbc:postgresql://localhost:5433/employees" --username=postgres --password=postgres update
liquibase --driver=org.postgresql.Driver --classpath="C:\Users\user\.gradle\caches\modules-2\files-2.1\org.postgresql\postgresql\42.7.4\264310fd7b2cd76738787dc0b9f7ea2e3b11adc1\postgresql-42.7.4.jar" --changeLogFile=../legacy/db-changelog.xml --url="jdbc:postgresql://localhost:5433/employees" --username=postgres --password=postgres changelogSync
