-- Monitoring Active User Sessions
SELECT
    session_id,
    status,
    cpu_time,
    memory_usage
FROM sys.dm_exec_sessions
WHERE is_user_process = 1;
