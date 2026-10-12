SELECT
    environment,
    database_name,
    infra_release_version,
    ingestion_release_version,
    dbt_release_version,
    infra_git_sha,
    ingestion_git_sha,
    dbt_git_sha,
    last_deployment_at
FROM PLATFORM_CONTROL.DEPLOYMENT.CURRENT_ENV_RELEASES
ORDER BY environment, database_name;

SELECT
    environment,
    database_name,
    component,
    health_status,
    last_checked_at,
    details
FROM PLATFORM_CONTROL.DEPLOYMENT.ENVIRONMENT_HEALTH
ORDER BY environment, database_name, component;
